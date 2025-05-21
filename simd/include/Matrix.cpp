#include <cmath>
#include <omp.h>
#include <cstdint>
#include <iostream>
#include <cstring>
#include <immintrin.h>  // Header for AVX intrinsics
#define A(i,j) a[ (j)*lda + (i) ]
#define B(i,j) b[ (j)*ldb + (i) ]
#define C(i,j) c[ (j)*ldc + (i) ]
#define mc 256
#define kc 128
#define nb 1000

//#define min( i, j ) ( (i)<(j) ? (i): (j) )


using namespace std;
typedef union
{
  __m512d v;
  double d[8];
} v16df_t;



void display(double *a, int n,int k, int lda){
  for (int i =0;i<n;i++){
    for (int j = 0;j<k;j++){
      cout << "|" << A(j,i) << "|";
    }
    cout << endl;
  }

}

void AddDot8x8( int, double *, int, double *, int, double *, int );
void PackMatrixA( int, double *, int, double * );
void PackMatrixB( int, double *, int, double * );
void InnerKernel( int, int, int, double *, int, double *, int, double *, int, int );
void kernelMxN(int , int , int , double *, double *, double *,int ); 

void dot( int m, int n, int k, double *a, int lda, 
                                    double *b, int ldb,
                                    double *c, int ldc )
{
  int i, p, pb, ib;

  /* This time, we compute a mc x n block of C by a call to the InnerKernel */
  //#pragma omp parallel for
  for ( p=0; p<k; p+=kc ){
    pb = min( k-p, kc );
    for ( i=0; i<m; i+=mc ){
      ib = min( m-i, mc );
      InnerKernel( ib, n, pb, &A( i,p ), lda, &B(p, 0 ), ldb, &C( i,0 ), ldc, i==0 );
    }
  }
}

void InnerKernel( int m, int n, int k, double *a, int lda, 
                                       double *b, int ldb,
double *c, int ldc, int first_time )
{
  int i, j;
  double 
    packedA[ m * k ];
  static double 
    packedB[ kc*nb ];    /* Note: using a static buffer is not thread safe... */

  for ( j=0; j<n; j+=8 ){        /* Loop over the columns of C, unrolled by 4 */
    if ( first_time )
      PackMatrixB( k, &B( 0, j ), ldb, &packedB[ j*k ] );
    for ( i=0; i<m; i+=8 ){        /* Loop over the rows of C */
      /* Update C( i,j ), C( i,j+1 ), C( i,j+2 ), and C( i,j+3 ) in
	 one routine (four inner products) */
      if ( j == 0 ) 
	PackMatrixA( k, &A( i, 0 ), lda, &packedA[ i*k ] );
      //AddDot8x8( k, &packedA[ i*k ], 8, &packedB[ j*k ], k, &C( i,j ), ldc );
      kernelMxN(8,8,8,&packedA[i*k], &packedB[j*k], &C(i,j), ldc);
    }
  }
}


void pack( int k, int m, double *a, int lda, double *a_to )
{

  for(int j=0; j<k; j++){  /* loop over columns of A */
    double 
      *a_ij_pntr = &A( 0, j );
    for(int i =0;i<m;i++){

    *(a_to++) = *(a_ij_pntr++);
    }

  }
}



void PackMatrixA( int k, double *a, int lda, double *a_to )
{
  int j;

  for( j=0; j<k; j++){  /* loop over columns of A */
    double 
      *a_ij_pntr = &A( 0, j );
    for(int i =0;i<8;i++){

    *(a_to++) = *(a_ij_pntr++);
    }

  }
}

void PackMatrixB( int k, double *b, int ldb, double *b_to )
{
  int i;
  double 
    *b_i0_pntr = &B( 0, 0 ), *b_i1_pntr = &B( 0, 1 ),
    *b_i2_pntr = &B( 0, 2 ), *b_i3_pntr = &B( 0, 3 ),
    *b_i4_pntr = &B( 0, 4 ), *b_i5_pntr = &B( 0, 5 ),
    *b_i6_pntr = &B( 0, 6 ), *b_i7_pntr = &B( 0, 7 );


  for( i=0; i<k; i++){  /* loop over rows of B */
    *b_to++ = *b_i0_pntr++;
    *b_to++ = *b_i1_pntr++;
    *b_to++ = *b_i2_pntr++;
    *b_to++ = *b_i3_pntr++;
    *b_to++ = *b_i4_pntr++;
    *b_to++ = *b_i5_pntr++;
    *b_to++ = *b_i6_pntr++;
    *b_to++ = *b_i7_pntr++;

  }
}



void kernelMxN(int m, int n, int k, double *a, double *b, double *c,int ldc) {
    /*
        m: Rows of matrix A and resulting matrix C.
        n: Columns of matrix B and resulting matrix C.
        k: Columns of matrix A (or rows of matrix B).
    */


    v16df_t c_vreg[8]; // Vector registers for accumulating results
    v16df_t b_vreg, a_vreg;

    // Initialize the result matrix
    for (int j = 0; j < n; j++) {
        c_vreg[j].v = _mm512_setzero_pd();
    }

    // Compute the matrix multiplication
    for (int p = 0; p < k; p++) {
        // Load one column of A (masked for m rows)
        a_vreg.v = _mm512_mask_load_pd(_mm512_setzero_pd(), (1 << m) - 1, a);
        
        a += 8; // Move to the next column of A

        for (int j = 0; j < n; j++) {
            // Load one element of B (masked for n columns)
            b_vreg.v = _mm512_set1_pd(b[j]);
           // b_vreg.v = _mm512_mask_mov_pd(_mm512_setzero_pd(), (1 << m) - 1, temp_b_vreg.v); 
            // Perform vectorized multiplication and accumulation
      //
            c_vreg[j].v += a_vreg.v * b_vreg.v;
    
      
        }

        b += 8; // Move to the next column of B
    }

    // Store the results back into matrix C
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            C(i,j) += c_vreg[j].d[i];
        }
    }

    
}


void AddDotMxN(int k, double *a, int m, double *b, int n, double *c, int ldc) {
  // modified kernelMxN to handle rectangular matrices
  int p;
  v16df_t c_vreg[m], b_vreg[n], a_vreg;
  for (int i = 0; i < m; i++) {
    c_vreg[i].v = _mm512_setzero_pd();
  }
  for (p = 0; p < k; p++) {
    a_vreg.v = _mm512_load_pd(a);
    a += 8; // assuming lda == 8
    for (int j = 0; j < n; j++) {
      b_vreg[j].v = _mm512_set1_pd(b[j]);
    }
    b += 8;
    for (int i = 0; i < m; i++) {
      c_vreg[i].v += a_vreg.v * b_vreg[i].v;
    }
  }
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      c[i * ldc + j] += c_vreg[i].d[j];
    }
  }
}


void AddDot8x8( int k, double *a, int lda,  double *b, int ldb, double *c, int ldc )
{

  int p;
  v16df_t
    c_00_c_70_vreg,    c_01_c_71_vreg,    c_02_c_72_vreg,    c_03_c_73_vreg,
    c_04_c_70_vreg,    c_05_c_71_vreg,    c_06_c_72_vreg,    c_07_c_73_vreg,
    
   a_0p_a_7p_vreg,
    a_8p_a_15p_vreg,
    b_p0_vreg, b_p1_vreg, b_p2_vreg, b_p3_vreg, b_p4_vreg, b_p5_vreg, b_p6_vreg,b_p7_vreg; 

  c_00_c_70_vreg.v = _mm512_setzero_pd();   
  c_01_c_71_vreg.v = _mm512_setzero_pd();
  c_02_c_72_vreg.v = _mm512_setzero_pd(); 
  c_03_c_73_vreg.v = _mm512_setzero_pd(); 
  c_04_c_70_vreg.v = _mm512_setzero_pd();   
  c_05_c_71_vreg.v = _mm512_setzero_pd();  
  c_06_c_72_vreg.v = _mm512_setzero_pd();   
  c_07_c_73_vreg.v = _mm512_setzero_pd(); 

  for ( p=0; p<k; p++ ){
    a_0p_a_7p_vreg.v = _mm512_load_pd( (double *) a );
    a += lda;

    b_p0_vreg.v = _mm512_set1_pd( * b );       /* load and duplicate */
    b_p1_vreg.v = _mm512_set1_pd( * (b+1) );   /* load and duplicate */
    b_p2_vreg.v = _mm512_set1_pd( * (b+2) );   /* load and duplicate */
    b_p3_vreg.v = _mm512_set1_pd( * (b+3) );   /* load and duplicate */
    b_p4_vreg.v = _mm512_set1_pd( * (b+4) );   /* load and duplicate */
    b_p5_vreg.v = _mm512_set1_pd( * (b+5) );   /* load and duplicate */
    b_p6_vreg.v = _mm512_set1_pd( * (b+6) );   /* load and duplicate */
    b_p7_vreg.v = _mm512_set1_pd( * (b+7) );   /* load and duplicate */

    b += ldb;

    /* First row and second rows */
    c_00_c_70_vreg.v += a_0p_a_7p_vreg.v * b_p0_vreg.v;
    c_01_c_71_vreg.v += a_0p_a_7p_vreg.v * b_p1_vreg.v;
    c_02_c_72_vreg.v += a_0p_a_7p_vreg.v * b_p2_vreg.v;
    c_03_c_73_vreg.v += a_0p_a_7p_vreg.v * b_p3_vreg.v;

    /* Third and fourth rows */
    c_04_c_70_vreg.v += a_0p_a_7p_vreg.v * b_p4_vreg.v;
    c_05_c_71_vreg.v += a_0p_a_7p_vreg.v * b_p5_vreg.v;
    c_06_c_72_vreg.v += a_0p_a_7p_vreg.v * b_p6_vreg.v;
    c_07_c_73_vreg.v += a_0p_a_7p_vreg.v * b_p7_vreg.v;
  }

C( 0, 0 ) += c_00_c_70_vreg.d[0];  C( 0, 1 ) += c_01_c_71_vreg.d[0];  
C( 0, 2 ) += c_02_c_72_vreg.d[0];  C( 0, 3 ) += c_03_c_73_vreg.d[0];  
C( 0, 4 ) += c_04_c_70_vreg.d[0]; C( 0, 5 ) += c_05_c_71_vreg.d[0];  
C( 0, 6 ) += c_06_c_72_vreg.d[0];  C( 0, 7 ) += c_07_c_73_vreg.d[0];  

C( 1, 0 ) += c_00_c_70_vreg.d[1];  C( 1, 1 ) += c_01_c_71_vreg.d[1];  
C( 1, 2 ) += c_02_c_72_vreg.d[1];  C( 1, 3 ) += c_03_c_73_vreg.d[1];  
C( 1, 4 ) += c_04_c_70_vreg.d[1];  C( 1, 5 ) += c_05_c_71_vreg.d[1];  
C( 1, 6 ) += c_06_c_72_vreg.d[1];  C( 1, 7 ) += c_07_c_73_vreg.d[1];  

C( 2, 0 ) += c_00_c_70_vreg.d[2];  C( 2, 1 ) += c_01_c_71_vreg.d[2];  
C( 2, 2 ) += c_02_c_72_vreg.d[2];  C( 2, 3 ) += c_03_c_73_vreg.d[2];  
C( 2, 4 ) += c_04_c_70_vreg.d[2];  C( 2, 5 ) += c_05_c_71_vreg.d[2];  
C( 2, 6 ) += c_06_c_72_vreg.d[2];  C( 2, 7 ) += c_07_c_73_vreg.d[2];  

C( 3, 0 ) += c_00_c_70_vreg.d[3];  C( 3, 1 ) += c_01_c_71_vreg.d[3];  
C( 3, 2 ) += c_02_c_72_vreg.d[3];  C( 3, 3 ) += c_03_c_73_vreg.d[3];  
C( 3, 4 ) += c_04_c_70_vreg.d[3];  C( 3, 5 ) += c_05_c_71_vreg.d[3];  
C( 3, 6 ) += c_06_c_72_vreg.d[3];  C( 3, 7 ) += c_07_c_73_vreg.d[3];  

C( 4, 0 ) += c_00_c_70_vreg.d[4];  C( 4, 1 ) += c_01_c_71_vreg.d[4];  
C( 4, 2 ) += c_02_c_72_vreg.d[4];  C( 4, 3 ) += c_03_c_73_vreg.d[4];  
C( 4, 4 ) += c_04_c_70_vreg.d[4];  C( 4, 5 ) += c_05_c_71_vreg.d[4];  
C( 4, 6 ) += c_06_c_72_vreg.d[4];  C( 4, 7 ) += c_07_c_73_vreg.d[4];  

C( 5, 0 ) += c_00_c_70_vreg.d[5];  C( 5, 1 ) += c_01_c_71_vreg.d[5];  
C( 5, 2 ) += c_02_c_72_vreg.d[5];  C( 5, 3 ) += c_03_c_73_vreg.d[5];  
C( 5, 4 ) += c_04_c_70_vreg.d[5];  C( 5, 5 ) += c_05_c_71_vreg.d[5];  
C( 5, 6 ) += c_06_c_72_vreg.d[5];  C( 5, 7 ) += c_07_c_73_vreg.d[5];  

C( 6, 0 ) += c_00_c_70_vreg.d[6];  C( 6, 1 ) += c_01_c_71_vreg.d[6];  
C( 6, 2 ) += c_02_c_72_vreg.d[6];  C( 6, 3 ) += c_03_c_73_vreg.d[6];  
C( 6, 4 ) += c_04_c_70_vreg.d[6];  C( 6, 5 ) += c_05_c_71_vreg.d[6];  
C( 6, 6 ) += c_06_c_72_vreg.d[6];  C( 6, 7 ) += c_07_c_73_vreg.d[6];  

C( 7, 0 ) += c_00_c_70_vreg.d[7];  C( 7, 1 ) += c_01_c_71_vreg.d[7];  
C( 7, 2 ) += c_02_c_72_vreg.d[7];  C( 7, 3 ) += c_03_c_73_vreg.d[7];  
C( 7, 4 ) += c_04_c_70_vreg.d[7];  C( 7, 5 ) += c_05_c_71_vreg.d[7];  
C( 7, 6 ) += c_06_c_72_vreg.d[7];  C( 7, 7 ) += c_07_c_73_vreg.d[7];  

}


void PackMatrixA(int k, double *a, int lda, double *a_to, int m) {
  int j;
  for (j = 0; j < k; j++) {
    double *a_ij_pntr = &a[j * lda];
    for (int i = 0; i < m; i++) {
      *a_to++ = *a_ij_pntr++;
    }
    a_to += (8 - m); // padding
  }
}
void PackMatrixB(int k, double *b, int ldb, double *b_to, int n) {
  int i;
  for (i = 0; i < k; i++) {
    double *b_i_pntr = &b[i * ldb];
    for (int j = 0; j < n; j++) {
      *b_to++ = *b_i_pntr++;
    }
    b_to += (8 - n); // padding
  }
}



static constexpr uint32_t BLOCKSIZE = 64;

static void do_block(const uint32_t n, const uint32_t si, const uint32_t sj, const uint32_t sk, const double *A, const double*B, double *C)
{

    for( uint32_t i = si; i < si + BLOCKSIZE; i += 8)
    {
        for( uint32_t j = sj; j < sj + BLOCKSIZE; ++j)
        {
            __m512d c= _mm512_load_pd(C + i   * 8 + j * n); //[ UNROLL];

            for( uint32_t k = sk; k < sk + BLOCKSIZE; k++ )
            {
                __m512d bb = _mm512_broadcastsd_pd(_mm_load_sd(B + j * n + k));
                    c = _mm512_fmadd_pd(_mm512_load_pd(A + n * k  * 8 + i), bb, c);
            }

                _mm512_store_pd(C + i   * 8 + j * n, c);
        }
    }
}


void dgemm_blocked(const uint32_t m, const uint32_t n,  const double* A, const double* B, double* C)
{
    for( uint32_t sj = 0; sj < m; sj += BLOCKSIZE )
    {
        for( uint32_t si = 0; si < n; si += BLOCKSIZE )
        {
            for( uint32_t sk = 0; sk < m; sk += BLOCKSIZE )
            {
                do_block(n, si, sj, sk, A, B, C);
            }
        }
    }
}
