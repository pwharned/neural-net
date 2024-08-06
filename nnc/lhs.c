#include <math.h>
#include <stdio.h>

int sequence(int n) {
  int k = (int)ceil((double)n / 3);
  int p = (n - 1) % 3 + 1;

  if (k % 2 == 1) {
    // Increasing sequence
    return (k + 1) / 2 + p - 1;
  } else {
    // Repetition
    return (k / 2) * 3;
  }
}

int main() {
  int length = 24;  // Length of the sequence to generate
  for (int i = 1; i <= length; i++) {
    printf("%d", sequence(i));
    if (i < length) {
      printf(", ");
    }
  }
  printf("\n");
  return 0;
}
