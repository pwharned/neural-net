	.file	"test.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1238:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1238:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZNSt17_Function_handlerIFvvEZplR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFvvEZplR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data,comdat
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFvvEZplR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFvvEZplR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFvvEZplR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data:
.LFB2443:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	16(%rax), %rcx
	movq	(%rax), %rdx
	movsd	32(%rcx), %xmm0
	movsd	%xmm0, 32(%rdx)
	movq	8(%rax), %rdx
	movq	16(%rax), %rax
	movsd	32(%rax), %xmm0
	movsd	%xmm0, 32(%rdx)
	ret
	.cfi_endproc
.LFE2443:
	.size	_ZNSt17_Function_handlerIFvvEZplR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZplR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt17_Function_handlerIFvvEZmlR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFvvEZmlR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data,comdat
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFvvEZmlR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFvvEZmlR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFvvEZmlR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data:
.LFB2458:
	.cfi_startproc
	movq	(%rdi), %rax
	pxor	%xmm0, %xmm0
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	cvtsi2sd	24(%rcx), %xmm0
	movq	16(%rax), %rcx
	mulsd	32(%rcx), %xmm0
	movsd	%xmm0, 32(%rdx)
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	pxor	%xmm0, %xmm0
	movq	16(%rax), %rax
	cvtsi2sd	24(%rcx), %xmm0
	mulsd	32(%rax), %xmm0
	movsd	%xmm0, 32(%rdx)
	ret
	.cfi_endproc
.LFE2458:
	.size	_ZNSt17_Function_handlerIFvvEZmlR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZmlR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt17_Function_handlerIFvvEZmlR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFvvEZmlR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data,comdat
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFvvEZmlR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFvvEZmlR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFvvEZmlR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data:
.LFB2462:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	16(%rax), %rcx
	movq	8(%rax), %rsi
	movq	(%rax), %rdx
	movsd	24(%rsi), %xmm0
	mulsd	40(%rcx), %xmm0
	movsd	%xmm0, 40(%rdx)
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	movq	16(%rax), %rax
	movsd	24(%rcx), %xmm0
	mulsd	40(%rax), %xmm0
	movsd	%xmm0, 40(%rdx)
	ret
	.cfi_endproc
.LFE2462:
	.size	_ZNSt17_Function_handlerIFvvEZmlR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZmlR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt17_Function_handlerIFvvEZplR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFvvEZplR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data,comdat
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFvvEZplR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFvvEZplR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFvvEZplR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data:
.LFB2466:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	16(%rax), %rcx
	movq	(%rax), %rdx
	movsd	40(%rcx), %xmm0
	movsd	%xmm0, 40(%rdx)
	movq	8(%rax), %rdx
	movq	16(%rax), %rax
	movsd	40(%rax), %xmm0
	movsd	%xmm0, 40(%rdx)
	ret
	.cfi_endproc
.LFE2466:
	.size	_ZNSt17_Function_handlerIFvvEZplR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZplR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,comdat
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:
.LFB2471:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L8
	testl	%edx, %edx
	je	.L9
	cmpl	$2, %edx
	jne	.L11
	movdqu	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
.L11:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	movq	$_ZTIZN5ValueIddE4tanhEvEUlvE_, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2471:
	.size	_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.section	.text._ZNSt17_Function_handlerIFvvEZN5ValueIddE4tanhEvEUlvE_E9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFvvEZN5ValueIddE4tanhEvEUlvE_E9_M_invokeERKSt9_Any_data,comdat
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFvvEZN5ValueIddE4tanhEvEUlvE_E9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFvvEZN5ValueIddE4tanhEvEUlvE_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFvvEZN5ValueIddE4tanhEvEUlvE_E9_M_invokeERKSt9_Any_data:
.LFB2470:
	.cfi_startproc
	movq	8(%rdi), %rax
	movsd	.LC0(%rip), %xmm1
	movq	(%rdi), %rdx
	movsd	24(%rax), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	40(%rax), %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rdx)
	ret
	.cfi_endproc
.LFE2470:
	.size	_ZNSt17_Function_handlerIFvvEZN5ValueIddE4tanhEvEUlvE_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZN5ValueIddE4tanhEvEUlvE_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,comdat
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:
.LFB2444:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L14
	testl	%edx, %edx
	je	.L15
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$2, %edx
	je	.L16
	cmpl	$3, %edx
	jne	.L18
	movq	(%rdi), %rdi
	call	_ZdlPv
.L18:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore 3
	.cfi_restore 6
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	(%rsi), %rbp
	movl	$24, %edi
	call	_Znwm
	movdqu	0(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movq	16(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 16(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore 3
	.cfi_restore 6
	movq	$_ZTIZplR5ValueIiiES1_EUlvE_, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2444:
	.size	_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.section	.text._ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,comdat
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:
.LFB2459:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L24
	testl	%edx, %edx
	je	.L25
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$2, %edx
	je	.L26
	cmpl	$3, %edx
	jne	.L28
	movq	(%rdi), %rdi
	call	_ZdlPv
.L28:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore 3
	.cfi_restore 6
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	(%rsi), %rbp
	movl	$24, %edi
	call	_Znwm
	movdqu	0(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movq	16(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 16(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore 3
	.cfi_restore 6
	movq	$_ZTIZmlR5ValueIiiES1_EUlvE_, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2459:
	.size	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.section	.text._ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,comdat
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:
.LFB2463:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L34
	testl	%edx, %edx
	je	.L35
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$2, %edx
	je	.L36
	cmpl	$3, %edx
	jne	.L38
	movq	(%rdi), %rdi
	call	_ZdlPv
.L38:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore 3
	.cfi_restore 6
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	(%rsi), %rbp
	movl	$24, %edi
	call	_Znwm
	movdqu	0(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movq	16(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 16(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore 3
	.cfi_restore 6
	movq	$_ZTIZmlR5ValueIddES1_EUlvE_, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2463:
	.size	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.section	.text._ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,comdat
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:
.LFB2467:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L44
	testl	%edx, %edx
	je	.L45
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$2, %edx
	je	.L46
	cmpl	$3, %edx
	jne	.L48
	movq	(%rdi), %rdi
	call	_ZdlPv
.L48:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore 3
	.cfi_restore 6
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	(%rsi), %rbp
	movl	$24, %edi
	call	_Znwm
	movdqu	0(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movq	16(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 16(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	.cfi_restore 3
	.cfi_restore 6
	movq	$_ZTIZplR5ValueIddES1_EUlvE_, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2467:
	.size	_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.text
	.p2align 4,,15
	.type	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53, @function
_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53:
.LFB2627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%rdi, %r12
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -40
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L59
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L59:
	leaq	23(%rsi), %rax
	leaq	-232(%rbp), %rcx
	movl	$32, -232(%rbp)
	movl	$48, -228(%rbp)
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	16(%rbp), %rax
	leaq	15(%rsp), %r13
	movq	%rax, -224(%rbp)
	leaq	-208(%rbp), %rax
	andq	$-16, %r13
	movq	%rax, -216(%rbp)
	movq	%r13, %rdi
	call	vsnprintf
	movslq	%eax, %rbx
	leaq	16(%r12), %rax
	movq	%rax, (%r12)
	movq	%rbx, -240(%rbp)
	cmpq	$15, %rbx
	ja	.L64
	cmpq	$1, %rbx
	jne	.L57
	movzbl	0(%r13), %edx
	movb	%dl, 16(%r12)
.L58:
	movq	%rbx, 8(%r12)
	movb	$0, (%rax,%rbx)
	leaq	-24(%rbp), %rsp
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	.cfi_restore_state
	testq	%rbx, %rbx
	je	.L58
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L64:
	xorl	%edx, %edx
	leaq	-240(%rbp), %rsi
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	-240(%rbp), %rdx
	movq	%rax, (%r12)
	movq	%rdx, 16(%r12)
.L56:
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-240(%rbp), %rbx
	movq	(%r12), %rax
	jmp	.L58
	.cfi_endproc
.LFE2627:
	.size	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53, .-_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"myvalue is "
.LC2:
	.string	"test/test.cpp"
.LC3:
	.string	"myvalue._val==4"
.LC4:
	.string	"Test conversion passed"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	_Z14testConversionv
	.type	_Z14testConversionv, @function
_Z14testConversionv:
.LFB2081:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2081
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	movl	$11, %edx
	movl	$.LC1, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$_ZSt4cout, %edi
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
	leaq	12(%rsp), %rax
	movaps	%xmm0, 16(%rsp)
	movq	%rax, 32(%rsp)
	movl	$4, 40(%rsp)
	movb	$0, 44(%rsp)
	movq	$0, 72(%rsp)
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	32(%rsp), %rax
	movl	$_ZSt4cout, %edi
	movl	(%rax), %esi
	call	_ZNSolsEi
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L88
	cmpb	$0, 56(%rbx)
	je	.L67
	movsbl	67(%rbx), %esi
.L68:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	cmpl	$4, 40(%rsp)
	jne	.L89
	movl	$22, %edx
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L90
	cmpb	$0, 56(%rbx)
	je	.L71
	movsbl	67(%rbx), %esi
.L72:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE0:
	movq	72(%rsp), %rax
	testq	%rax, %rax
	je	.L65
	leaq	56(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L65:
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	.cfi_restore_state
	movq	%rbx, %rdi
.LEHB1:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L68
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L71:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L72
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L72
.L88:
	call	_ZSt16__throw_bad_castv
.L90:
	call	_ZSt16__throw_bad_castv
.LEHE1:
.L89:
	movl	$_ZZ14testConversionvE19__PRETTY_FUNCTION__, %ecx
	movl	$71, %edx
	movl	$.LC2, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.L78:
	movq	%rax, %rbx
	jmp	.L74
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2081:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2081-.LLSDACSB2081
.LLSDACSB2081:
	.uleb128 .LEHB0-.LFB2081
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L78-.LFB2081
	.uleb128 0
	.uleb128 .LEHB1-.LFB2081
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L78-.LFB2081
	.uleb128 0
.LLSDACSE2081:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2081
	.type	_Z14testConversionv.cold.57, @function
_Z14testConversionv.cold.57:
.LFSB2081:
.L74:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	72(%rsp), %rax
	testq	%rax, %rax
	je	.L75
	leaq	56(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L75:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE2081:
	.section	.gcc_except_table
.LLSDAC2081:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2081-.LLSDACSBC2081
.LLSDACSBC2081:
	.uleb128 .LEHB2-.LCOLDB5
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC2081:
	.section	.text.unlikely
	.text
	.size	_Z14testConversionv, .-_Z14testConversionv
	.section	.text.unlikely
	.size	_Z14testConversionv.cold.57, .-_Z14testConversionv.cold.57
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,comdat
	.p2align 4,,15
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:
.LFB2267:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rax
	movq	8(%rsi), %r8
	movq	%rdi, %rbx
	movq	8(%rdx), %rdx
	movq	(%rsi), %rcx
	movq	%rsi, %rdi
	addq	$16, %rsi
	leaq	(%r8,%rdx), %r9
	cmpq	%rsi, %rcx
	je	.L98
	movq	16(%rdi), %r10
.L92:
	movq	(%rax), %rsi
	cmpq	%r10, %r9
	jbe	.L93
	leaq	16(%rax), %r10
	cmpq	%r10, %rsi
	je	.L99
	movq	16(%rax), %r10
.L94:
	cmpq	%r10, %r9
	jbe	.L101
.L93:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.L95:
	leaq	16(%rbx), %rdx
	movq	%rdx, (%rbx)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L102
	movq	%rcx, (%rbx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rbx)
.L97:
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rbx)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L101:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L102:
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L98:
	movl	$15, %r10d
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L99:
	movl	$15, %r10d
	jmp	.L94
	.cfi_endproc
.LFE2267:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.section	.rodata._ZNK5ValueIiiE5printEv.str1.1,"aMS",@progbits,1
.LC6:
	.string	"%f"
.LC7:
	.string	"%d"
.LC8:
	.string	" "
.LC9:
	.string	"basic_string::append"
.LC10:
	.string	" ("
.LC11:
	.string	")"
.LC12:
	.string	" = "
	.section	.text._ZNK5ValueIiiE5printEv,"axG",@progbits,_ZNK5ValueIiiE5printEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNK5ValueIiiE5printEv
	.type	_ZNK5ValueIiiE5printEv, @function
_ZNK5ValueIiiE5printEv:
.LFB2375:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2375
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$728, %rsp
	.cfi_def_cfa_offset 752
	cmpq	$0, 16(%rdi)
	leaq	32(%rsp), %rsi
	movb	$0, 32(%rsp)
	movq	%rsi, 16(%rsp)
	movq	$0, 24(%rsp)
	je	.L247
	movsd	32(%rdi), %xmm0
	movq	%rdi, %rbx
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	624(%rsp), %rdi
	movl	$1, %eax
.LEHB3:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE3:
	movl	24(%rbx), %r8d
	movl	$.LC7, %ecx
	movl	$16, %edx
	xorl	%eax, %eax
	movl	$vsnprintf, %esi
	leaq	528(%rsp), %rdi
.LEHB4:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE4:
	movl	$1, %r8d
	movl	$.LC8, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	528(%rsp), %rdi
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE5:
	leaq	576(%rsp), %rdx
	movq	%rdx, 560(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L292
	movq	%rcx, 560(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 576(%rsp)
.L106:
	movq	8(%rax), %rcx
	movq	%rcx, 568(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movabsq	$9223372036854775807, %rax
	subq	568(%rsp), %rax
	cmpq	$1, %rax
	jbe	.L293
	movl	$2, %edx
	movl	$.LC10, %esi
	leaq	560(%rsp), %rdi
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE6:
	leaq	608(%rsp), %rdx
	movq	%rdx, 592(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L294
	movq	%rcx, 592(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 608(%rsp)
.L109:
	movq	8(%rax), %rcx
	leaq	608(%rsp), %rsi
	movq	%rcx, 600(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	600(%rsp), %r8
	movq	632(%rsp), %rdx
	movq	592(%rsp), %rcx
	leaq	(%r8,%rdx), %rax
	cmpq	%rsi, %rcx
	je	.L248
	movq	608(%rsp), %rdi
.L110:
	movq	624(%rsp), %rsi
	cmpq	%rdi, %rax
	jbe	.L111
	leaq	640(%rsp), %rdi
	cmpq	%rdi, %rsi
	je	.L249
	movq	640(%rsp), %rdi
.L112:
	cmpq	%rdi, %rax
	jbe	.L295
.L111:
	leaq	592(%rsp), %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE7:
.L113:
	leaq	672(%rsp), %rdx
	movq	%rdx, 656(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L296
	movq	%rcx, 656(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 672(%rsp)
.L115:
	movq	8(%rax), %rcx
	movq	%rcx, 664(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 664(%rsp)
	je	.L297
	movl	$1, %edx
	movl	$.LC11, %esi
	leaq	656(%rsp), %rdi
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE8:
	leaq	704(%rsp), %rdx
	movq	%rdx, 688(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L298
	movq	%rcx, 688(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 704(%rsp)
.L118:
	movq	8(%rax), %rcx
	movq	%rcx, 696(%rsp)
	movq	%rdx, (%rax)
	movq	16(%rsp), %rdi
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	688(%rsp), %rsi
	leaq	704(%rsp), %rax
	cmpq	%rax, %rsi
	je	.L299
	leaq	32(%rsp), %rax
	movq	704(%rsp), %rdx
	movq	696(%rsp), %xmm0
	cmpq	%rax, %rdi
	je	.L300
	movq	%rdx, 8(%rsp)
	movq	32(%rsp), %rax
	movq	%rsi, 16(%rsp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 24(%rsp)
	testq	%rdi, %rdi
	je	.L124
	movq	%rdi, 688(%rsp)
	movq	%rax, 704(%rsp)
.L122:
	movq	$0, 696(%rsp)
	leaq	704(%rsp), %rax
	movb	$0, (%rdi)
	movq	688(%rsp), %rdi
	cmpq	%rax, %rdi
	je	.L125
	call	_ZdlPv
.L125:
	movq	656(%rsp), %rdi
	leaq	672(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L126
	call	_ZdlPv
.L126:
	movq	592(%rsp), %rdi
	leaq	608(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L127
	call	_ZdlPv
.L127:
	movq	560(%rsp), %rdi
	leaq	576(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L128
	call	_ZdlPv
.L128:
	movq	528(%rsp), %rdi
	leaq	544(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L129
	call	_ZdlPv
.L129:
	movq	624(%rsp), %rdi
	leaq	640(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L130
	call	_ZdlPv
.L130:
	cmpb	$0, 28(%rbx)
	jne	.L131
.L193:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
.L104:
	movl	$_ZSt4cout, %edi
.LEHB9:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	movq	24(%rsp), %rbx
	cmpq	%rax, %rdi
	je	.L103
	call	_ZdlPv
.L103:
	addq	$728, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L292:
	.cfi_restore_state
	movdqu	16(%rax), %xmm1
	movaps	%xmm1, 576(%rsp)
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L247:
	xorl	%edx, %edx
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L131:
	movq	8(%rbx), %rax
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	624(%rsp), %rdi
	movsd	32(%rax), %xmm0
	movl	$1, %eax
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE9:
	movq	8(%rbx), %rax
	movl	$.LC7, %ecx
	movl	$16, %edx
	movl	$vsnprintf, %esi
	leaq	528(%rsp), %rdi
	movl	24(%rax), %r8d
	xorl	%eax, %eax
.LEHB10:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE10:
	movq	(%rbx), %rax
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	336(%rsp), %rdi
	movsbl	28(%rbx), %ebp
	movsd	32(%rax), %xmm0
	movl	$1, %eax
.LEHB11:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE11:
	movq	(%rbx), %rax
	movl	$.LC7, %ecx
	movl	$16, %edx
	movl	$vsnprintf, %esi
	leaq	240(%rsp), %rdi
	movl	24(%rax), %r8d
	xorl	%eax, %eax
.LEHB12:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE12:
	movsd	32(%rbx), %xmm0
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	112(%rsp), %rdi
	movl	$1, %eax
.LEHB13:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE13:
	movl	24(%rbx), %r8d
	movl	$.LC7, %ecx
	movl	$16, %edx
	xorl	%eax, %eax
	movl	$vsnprintf, %esi
	leaq	48(%rsp), %rdi
.LEHB14:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE14:
	movabsq	$9223372036854775807, %rax
	subq	56(%rsp), %rax
	cmpq	$1, %rax
	jbe	.L301
	movl	$2, %edx
	movl	$.LC10, %esi
	leaq	48(%rsp), %rdi
.LEHB15:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE15:
	leaq	96(%rsp), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L302
	movq	%rcx, 80(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 96(%rsp)
.L134:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	80(%rsp), %rsi
	leaq	144(%rsp), %rdi
	movq	%rcx, 88(%rsp)
	movq	%rdx, (%rax)
	leaq	112(%rsp), %rdx
	movq	$0, 8(%rax)
.LEHB16:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE16:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 152(%rsp)
	je	.L303
	movl	$1, %edx
	movl	$.LC11, %esi
	leaq	144(%rsp), %rdi
.LEHB17:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE17:
	leaq	192(%rsp), %rdx
	movq	%rdx, 176(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L304
	movq	%rcx, 176(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 192(%rsp)
.L137:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 184(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movabsq	$9223372036854775807, %rax
	subq	184(%rsp), %rax
	cmpq	$2, %rax
	jbe	.L305
	movl	$3, %edx
	movl	$.LC12, %esi
	leaq	176(%rsp), %rdi
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE18:
	leaq	224(%rsp), %rdx
	movq	%rdx, 208(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L306
	movq	%rcx, 208(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 224(%rsp)
.L140:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	208(%rsp), %rsi
	leaq	272(%rsp), %rdi
	movq	%rcx, 216(%rsp)
	movq	%rdx, (%rax)
	leaq	240(%rsp), %rdx
	movq	$0, 8(%rax)
.LEHB19:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE19:
	movabsq	$9223372036854775807, %rax
	subq	280(%rsp), %rax
	cmpq	$1, %rax
	jbe	.L307
	movl	$2, %edx
	movl	$.LC10, %esi
	leaq	272(%rsp), %rdi
.LEHB20:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE20:
	leaq	320(%rsp), %rdx
	movq	%rdx, 304(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L308
	movq	%rcx, 304(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 320(%rsp)
.L143:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	304(%rsp), %rsi
	leaq	368(%rsp), %rdi
	movq	%rcx, 312(%rsp)
	movq	%rdx, (%rax)
	leaq	336(%rsp), %rdx
	movq	$0, 8(%rax)
.LEHB21:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE21:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 376(%rsp)
	je	.L309
	movl	$1, %edx
	movl	$.LC11, %esi
	leaq	368(%rsp), %rdi
.LEHB22:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE22:
	leaq	416(%rsp), %rdx
	movq	%rdx, 400(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L310
	movq	%rcx, 400(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 416(%rsp)
.L146:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 408(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 408(%rsp)
	je	.L311
	movl	$1, %edx
	movl	$.LC8, %esi
	leaq	400(%rsp), %rdi
.LEHB23:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE23:
	leaq	448(%rsp), %rdx
	movq	%rdx, 432(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L312
	movq	%rcx, 432(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 448(%rsp)
.L149:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movl	%ebp, %r8d
	leaq	432(%rsp), %rdi
	movq	%rcx, 440(%rsp)
	movl	$1, %ecx
	movq	%rdx, (%rax)
	xorl	%edx, %edx
	movq	$0, 8(%rax)
	movq	440(%rsp), %rsi
.LEHB24:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc
.LEHE24:
	leaq	480(%rsp), %rdx
	movq	%rdx, 464(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L313
	movq	%rcx, 464(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 480(%rsp)
.L151:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 472(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 472(%rsp)
	je	.L314
	movl	$1, %edx
	movl	$.LC8, %esi
	leaq	464(%rsp), %rdi
.LEHB25:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE25:
	leaq	512(%rsp), %rdx
	movq	%rdx, 496(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L315
	movq	%rcx, 496(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 512(%rsp)
.L154:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	496(%rsp), %rsi
	leaq	560(%rsp), %rdi
	movq	%rcx, 504(%rsp)
	movq	%rdx, (%rax)
	leaq	528(%rsp), %rdx
	movq	$0, 8(%rax)
.LEHB26:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE26:
	movabsq	$9223372036854775807, %rax
	subq	568(%rsp), %rax
	cmpq	$1, %rax
	jbe	.L316
	movl	$2, %edx
	movl	$.LC10, %esi
	leaq	560(%rsp), %rdi
.LEHB27:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE27:
	leaq	608(%rsp), %rdx
	movq	%rdx, 592(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L317
	movq	%rcx, 592(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 608(%rsp)
.L157:
	movq	8(%rax), %rcx
	leaq	608(%rsp), %rsi
	movq	%rcx, 600(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	600(%rsp), %r8
	movq	632(%rsp), %rdx
	movq	592(%rsp), %rcx
	leaq	(%r8,%rdx), %rax
	cmpq	%rsi, %rcx
	je	.L250
	movq	608(%rsp), %rdi
.L158:
	movq	624(%rsp), %rsi
	cmpq	%rdi, %rax
	jbe	.L159
	leaq	640(%rsp), %rdi
	cmpq	%rdi, %rsi
	je	.L251
	movq	640(%rsp), %rdi
.L160:
	cmpq	%rdi, %rax
	jbe	.L318
.L159:
	leaq	592(%rsp), %rdi
.LEHB28:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE28:
.L161:
	leaq	672(%rsp), %rdx
	movq	%rdx, 656(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L319
	movq	%rcx, 656(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 672(%rsp)
.L163:
	movq	8(%rax), %rcx
	movq	%rcx, 664(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 664(%rsp)
	je	.L320
	movl	$1, %edx
	movl	$.LC11, %esi
	leaq	656(%rsp), %rdi
.LEHB29:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE29:
	leaq	704(%rsp), %rdx
	movq	%rdx, 688(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L321
	movq	%rcx, 688(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 704(%rsp)
.L166:
	movq	8(%rax), %rcx
	movq	%rcx, 696(%rsp)
	movq	%rdx, (%rax)
	movq	16(%rsp), %rdi
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	688(%rsp), %rsi
	leaq	704(%rsp), %rax
	cmpq	%rax, %rsi
	je	.L322
	leaq	32(%rsp), %rax
	movq	704(%rsp), %rdx
	movq	696(%rsp), %xmm0
	cmpq	%rax, %rdi
	je	.L323
	movq	%rdx, 8(%rsp)
	movq	32(%rsp), %rax
	movq	%rsi, 16(%rsp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 24(%rsp)
	testq	%rdi, %rdi
	je	.L172
	movq	%rdi, 688(%rsp)
	movq	%rax, 704(%rsp)
.L170:
	movq	$0, 696(%rsp)
	leaq	704(%rsp), %rax
	movb	$0, (%rdi)
	movq	688(%rsp), %rdi
	cmpq	%rax, %rdi
	je	.L173
	call	_ZdlPv
.L173:
	movq	656(%rsp), %rdi
	leaq	672(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L174
	call	_ZdlPv
.L174:
	movq	592(%rsp), %rdi
	leaq	608(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L175
	call	_ZdlPv
.L175:
	movq	560(%rsp), %rdi
	leaq	576(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L176
	call	_ZdlPv
.L176:
	movq	496(%rsp), %rdi
	leaq	512(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L177
	call	_ZdlPv
.L177:
	movq	464(%rsp), %rdi
	leaq	480(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L178
	call	_ZdlPv
.L178:
	movq	432(%rsp), %rdi
	leaq	448(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L179
	call	_ZdlPv
.L179:
	movq	400(%rsp), %rdi
	leaq	416(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L180
	call	_ZdlPv
.L180:
	movq	368(%rsp), %rdi
	leaq	384(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L181
	call	_ZdlPv
.L181:
	movq	304(%rsp), %rdi
	leaq	320(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L182
	call	_ZdlPv
.L182:
	movq	272(%rsp), %rdi
	leaq	288(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L183
	call	_ZdlPv
.L183:
	movq	208(%rsp), %rdi
	leaq	224(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L184
	call	_ZdlPv
.L184:
	movq	176(%rsp), %rdi
	leaq	192(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L185
	call	_ZdlPv
.L185:
	movq	144(%rsp), %rdi
	leaq	160(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L186
	call	_ZdlPv
.L186:
	movq	80(%rsp), %rdi
	leaq	96(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L187
	call	_ZdlPv
.L187:
	movq	48(%rsp), %rdi
	leaq	64(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L188
	call	_ZdlPv
.L188:
	movq	112(%rsp), %rdi
	leaq	128(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L189
	call	_ZdlPv
.L189:
	movq	240(%rsp), %rdi
	leaq	256(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L190
	call	_ZdlPv
.L190:
	movq	336(%rsp), %rdi
	leaq	352(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L191
	call	_ZdlPv
.L191:
	movq	528(%rsp), %rdi
	leaq	544(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L192
	call	_ZdlPv
.L192:
	movq	624(%rsp), %rdi
	leaq	640(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L193
	call	_ZdlPv
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L296:
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 672(%rsp)
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L294:
	movdqu	16(%rax), %xmm2
	movaps	%xmm2, 608(%rsp)
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L299:
	movq	696(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L120
	cmpq	$1, %rdx
	je	.L324
	call	memcpy
	movq	696(%rsp), %rdx
	movq	16(%rsp), %rdi
.L120:
	movq	%rdx, 24(%rsp)
	movb	$0, (%rdi,%rdx)
	movq	688(%rsp), %rdi
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L298:
	movdqu	16(%rax), %xmm4
	movaps	%xmm4, 704(%rsp)
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L302:
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 96(%rsp)
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L295:
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	624(%rsp), %rdi
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE30:
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L300:
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 24(%rsp)
.L124:
	leaq	704(%rsp), %rdi
	movq	%rdi, 688(%rsp)
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L248:
	movl	$15, %edi
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L249:
	movl	$15, %edi
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L304:
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 192(%rsp)
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L306:
	movdqu	16(%rax), %xmm7
	movaps	%xmm7, 224(%rsp)
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L308:
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 320(%rsp)
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L312:
	movdqu	16(%rax), %xmm7
	movaps	%xmm7, 448(%rsp)
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L310:
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 416(%rsp)
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L315:
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 512(%rsp)
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L313:
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 480(%rsp)
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L319:
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 672(%rsp)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L317:
	movdqu	16(%rax), %xmm7
	movaps	%xmm7, 608(%rsp)
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L322:
	movq	696(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L168
	cmpq	$1, %rdx
	je	.L325
	call	memcpy
	movq	696(%rsp), %rdx
	movq	16(%rsp), %rdi
.L168:
	movq	%rdx, 24(%rsp)
	movb	$0, (%rdi,%rdx)
	movq	688(%rsp), %rdi
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L321:
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 704(%rsp)
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L318:
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	624(%rsp), %rdi
.LEHB31:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE31:
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L323:
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 24(%rsp)
.L172:
	leaq	704(%rsp), %rdi
	movq	%rdi, 688(%rsp)
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L250:
	movl	$15, %edi
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L324:
	movzbl	704(%rsp), %eax
	movb	%al, (%rdi)
	movq	696(%rsp), %rdx
	movq	16(%rsp), %rdi
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L251:
	movl	$15, %edi
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L325:
	movzbl	704(%rsp), %eax
	movb	%al, (%rdi)
	movq	696(%rsp), %rdx
	movq	16(%rsp), %rdi
	jmp	.L168
.L297:
	movl	$.LC9, %edi
.LEHB32:
	call	_ZSt20__throw_length_errorPKc
.LEHE32:
.L293:
	movl	$.LC9, %edi
.LEHB33:
	call	_ZSt20__throw_length_errorPKc
.LEHE33:
.L301:
	movl	$.LC9, %edi
.LEHB34:
	call	_ZSt20__throw_length_errorPKc
.LEHE34:
.L320:
	movl	$.LC9, %edi
.LEHB35:
	call	_ZSt20__throw_length_errorPKc
.LEHE35:
.L316:
	movl	$.LC9, %edi
.LEHB36:
	call	_ZSt20__throw_length_errorPKc
.LEHE36:
.L314:
	movl	$.LC9, %edi
.LEHB37:
	call	_ZSt20__throw_length_errorPKc
.LEHE37:
.L311:
	movl	$.LC9, %edi
.LEHB38:
	call	_ZSt20__throw_length_errorPKc
.LEHE38:
.L309:
	movl	$.LC9, %edi
.LEHB39:
	call	_ZSt20__throw_length_errorPKc
.LEHE39:
.L307:
	movl	$.LC9, %edi
.LEHB40:
	call	_ZSt20__throw_length_errorPKc
.LEHE40:
.L305:
	movl	$.LC9, %edi
.LEHB41:
	call	_ZSt20__throw_length_errorPKc
.LEHE41:
.L303:
	movl	$.LC9, %edi
.LEHB42:
	call	_ZSt20__throw_length_errorPKc
.LEHE42:
.L266:
	movq	%rax, %rbx
	jmp	.L228
.L265:
	movq	%rax, %rbx
	jmp	.L230
.L206:
	movq	656(%rsp), %rdi
	leaq	672(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L208
	call	_ZdlPv
.L208:
	movq	592(%rsp), %rdi
	leaq	608(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L210
	call	_ZdlPv
.L210:
	movq	560(%rsp), %rdi
	leaq	576(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L212
	call	_ZdlPv
.L212:
	movq	496(%rsp), %rdi
	leaq	512(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L214
	call	_ZdlPv
.L214:
	movq	464(%rsp), %rdi
	leaq	480(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L216
	call	_ZdlPv
.L216:
	movq	432(%rsp), %rdi
	leaq	448(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L218
	call	_ZdlPv
.L218:
	movq	400(%rsp), %rdi
	leaq	416(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L220
	call	_ZdlPv
.L220:
	movq	368(%rsp), %rdi
	leaq	384(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L222
	call	_ZdlPv
.L222:
	movq	304(%rsp), %rdi
	leaq	320(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L224
	call	_ZdlPv
.L224:
	movq	272(%rsp), %rdi
	leaq	288(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L226
	call	_ZdlPv
.L226:
	movq	208(%rsp), %rdi
	leaq	224(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L228
	call	_ZdlPv
.L228:
	movq	176(%rsp), %rdi
	leaq	192(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L230
	call	_ZdlPv
.L230:
	movq	144(%rsp), %rdi
	leaq	160(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L232
	call	_ZdlPv
.L232:
	movq	80(%rsp), %rdi
	leaq	96(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L234
	call	_ZdlPv
.L234:
	movq	48(%rsp), %rdi
	leaq	64(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L236
	call	_ZdlPv
.L236:
	movq	112(%rsp), %rdi
	leaq	128(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L238
	call	_ZdlPv
.L238:
	movq	240(%rsp), %rdi
	leaq	256(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L240
	call	_ZdlPv
.L240:
	movq	336(%rsp), %rdi
	leaq	352(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L242
	call	_ZdlPv
.L242:
	movq	528(%rsp), %rdi
	leaq	544(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L244
	call	_ZdlPv
.L244:
	movq	624(%rsp), %rdi
	leaq	640(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L205
.L291:
	call	_ZdlPv
.L205:
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L246
	call	_ZdlPv
.L246:
	movq	%rbx, %rdi
.LEHB43:
	call	_Unwind_Resume
.LEHE43:
.L274:
	movq	%rax, %rbx
	jmp	.L212
.L273:
	movq	%rax, %rbx
	jmp	.L214
.L272:
	movq	%rax, %rbx
	jmp	.L216
.L271:
	movq	%rax, %rbx
	jmp	.L218
.L270:
	movq	%rax, %rbx
	jmp	.L220
.L267:
	movq	%rax, %rbx
	jmp	.L226
.L269:
	movq	%rax, %rbx
	jmp	.L222
.L268:
	movq	%rax, %rbx
	jmp	.L224
.L276:
	movq	%rax, %rbx
	jmp	.L208
.L275:
	movq	%rax, %rbx
	jmp	.L210
.L277:
	movq	%rax, %rbx
	jmp	.L206
.L257:
	movq	%rax, %rbx
.L195:
	movq	656(%rsp), %rdi
	leaq	672(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L197
	call	_ZdlPv
.L197:
	movq	592(%rsp), %rdi
	leaq	608(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L199
	call	_ZdlPv
.L199:
	movq	560(%rsp), %rdi
	leaq	576(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L201
	call	_ZdlPv
.L201:
	movq	528(%rsp), %rdi
	leaq	544(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L203
	call	_ZdlPv
.L203:
	movq	624(%rsp), %rdi
	leaq	640(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.L291
	jmp	.L205
.L252:
	movq	%rax, %rbx
	jmp	.L205
.L260:
	movq	%rax, %rbx
	jmp	.L240
.L261:
	movq	%rax, %rbx
	jmp	.L238
.L262:
	movq	%rax, %rbx
	jmp	.L236
.L264:
	movq	%rax, %rbx
	jmp	.L232
.L254:
	movq	%rax, %rbx
	jmp	.L201
.L253:
	movq	%rax, %rbx
	jmp	.L203
.L255:
	movq	%rax, %rbx
	jmp	.L199
.L256:
	movq	%rax, %rbx
	jmp	.L197
.L258:
	movq	%rax, %rbx
	jmp	.L244
.L259:
	movq	%rax, %rbx
	jmp	.L242
.L263:
	movq	%rax, %rbx
	jmp	.L234
	.cfi_endproc
.LFE2375:
	.section	.gcc_except_table
.LLSDA2375:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2375-.LLSDACSB2375
.LLSDACSB2375:
	.uleb128 .LEHB3-.LFB2375
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L252-.LFB2375
	.uleb128 0
	.uleb128 .LEHB4-.LFB2375
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L253-.LFB2375
	.uleb128 0
	.uleb128 .LEHB5-.LFB2375
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L254-.LFB2375
	.uleb128 0
	.uleb128 .LEHB6-.LFB2375
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L255-.LFB2375
	.uleb128 0
	.uleb128 .LEHB7-.LFB2375
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L256-.LFB2375
	.uleb128 0
	.uleb128 .LEHB8-.LFB2375
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L257-.LFB2375
	.uleb128 0
	.uleb128 .LEHB9-.LFB2375
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L252-.LFB2375
	.uleb128 0
	.uleb128 .LEHB10-.LFB2375
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L258-.LFB2375
	.uleb128 0
	.uleb128 .LEHB11-.LFB2375
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L259-.LFB2375
	.uleb128 0
	.uleb128 .LEHB12-.LFB2375
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L260-.LFB2375
	.uleb128 0
	.uleb128 .LEHB13-.LFB2375
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L261-.LFB2375
	.uleb128 0
	.uleb128 .LEHB14-.LFB2375
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L262-.LFB2375
	.uleb128 0
	.uleb128 .LEHB15-.LFB2375
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L263-.LFB2375
	.uleb128 0
	.uleb128 .LEHB16-.LFB2375
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L264-.LFB2375
	.uleb128 0
	.uleb128 .LEHB17-.LFB2375
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L265-.LFB2375
	.uleb128 0
	.uleb128 .LEHB18-.LFB2375
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L266-.LFB2375
	.uleb128 0
	.uleb128 .LEHB19-.LFB2375
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L267-.LFB2375
	.uleb128 0
	.uleb128 .LEHB20-.LFB2375
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L268-.LFB2375
	.uleb128 0
	.uleb128 .LEHB21-.LFB2375
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L269-.LFB2375
	.uleb128 0
	.uleb128 .LEHB22-.LFB2375
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L270-.LFB2375
	.uleb128 0
	.uleb128 .LEHB23-.LFB2375
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L271-.LFB2375
	.uleb128 0
	.uleb128 .LEHB24-.LFB2375
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L272-.LFB2375
	.uleb128 0
	.uleb128 .LEHB25-.LFB2375
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L273-.LFB2375
	.uleb128 0
	.uleb128 .LEHB26-.LFB2375
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L274-.LFB2375
	.uleb128 0
	.uleb128 .LEHB27-.LFB2375
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L275-.LFB2375
	.uleb128 0
	.uleb128 .LEHB28-.LFB2375
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L276-.LFB2375
	.uleb128 0
	.uleb128 .LEHB29-.LFB2375
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L277-.LFB2375
	.uleb128 0
	.uleb128 .LEHB30-.LFB2375
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L256-.LFB2375
	.uleb128 0
	.uleb128 .LEHB31-.LFB2375
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L276-.LFB2375
	.uleb128 0
	.uleb128 .LEHB32-.LFB2375
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L257-.LFB2375
	.uleb128 0
	.uleb128 .LEHB33-.LFB2375
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L255-.LFB2375
	.uleb128 0
	.uleb128 .LEHB34-.LFB2375
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L263-.LFB2375
	.uleb128 0
	.uleb128 .LEHB35-.LFB2375
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L277-.LFB2375
	.uleb128 0
	.uleb128 .LEHB36-.LFB2375
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L275-.LFB2375
	.uleb128 0
	.uleb128 .LEHB37-.LFB2375
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L273-.LFB2375
	.uleb128 0
	.uleb128 .LEHB38-.LFB2375
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L271-.LFB2375
	.uleb128 0
	.uleb128 .LEHB39-.LFB2375
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L270-.LFB2375
	.uleb128 0
	.uleb128 .LEHB40-.LFB2375
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L268-.LFB2375
	.uleb128 0
	.uleb128 .LEHB41-.LFB2375
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L266-.LFB2375
	.uleb128 0
	.uleb128 .LEHB42-.LFB2375
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L265-.LFB2375
	.uleb128 0
	.uleb128 .LEHB43-.LFB2375
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE2375:
	.section	.text._ZNK5ValueIiiE5printEv,"axG",@progbits,_ZNK5ValueIiiE5printEv,comdat
	.size	_ZNK5ValueIiiE5printEv, .-_ZNK5ValueIiiE5printEv
	.section	.rodata._ZNK5ValueIiiE7displayEi.str1.1,"aMS",@progbits,1
.LC13:
	.string	" -|"
	.section	.text._ZNK5ValueIiiE7displayEi,"axG",@progbits,_ZNK5ValueIiiE7displayEi,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNK5ValueIiiE7displayEi
	.type	_ZNK5ValueIiiE7displayEi, @function
_ZNK5ValueIiiE7displayEi:
.LFB2282:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rdi), %rax
	movq	8(%rdi), %r14
	movq	%rax, 8(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L327
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L339
	cmpb	$0, 56(%r12)
	je	.L329
	movsbl	67(%r12), %esi
.L330:
	movl	%ebp, %r12d
	movl	$_ZSt4cout, %edi
	xorl	%r15d, %r15d
	call	_ZNSo3putEc
	imull	%r13d, %r12d
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	testl	%r12d, %r12d
	jg	.L331
	jmp	.L333
	.p2align 4,,10
	.p2align 3
.L332:
	addl	$1, %r15d
	cmpl	%r12d, %r15d
	je	.L333
.L331:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r15d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L332
	movl	$1, %edx
	leaq	31(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	addl	$1, %r15d
	movb	$124, 31(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpl	%r12d, %r15d
	jne	.L331
.L333:
	movq	8(%rsp), %rdi
	leal	1(%r13), %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%rbx), %rax
.L327:
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L334
	cmpq	%rax, %rdx
	je	.L334
	movl	%ebp, %r12d
	xorl	%ebx, %ebx
	imull	%r13d, %r12d
	testl	%r12d, %r12d
	jg	.L335
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L337:
	addl	$1, %ebx
	cmpl	%r12d, %ebx
	je	.L338
.L335:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L337
	movl	$1, %edx
	leaq	31(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	addl	$1, %ebx
	movb	$124, 31(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpl	%r12d, %ebx
	jne	.L335
.L338:
	leal	1(%r13), %esi
	movq	%r14, %rdi
	call	_ZNK5ValueIiiE7displayEi
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L329:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L330
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L330
	.p2align 4,,10
	.p2align 3
.L334:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L339
	cmpb	$0, 56(%rbx)
	je	.L340
	movsbl	67(%rbx), %esi
.L341:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L340:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L341
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L341
.L339:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE2282:
	.size	_ZNK5ValueIiiE7displayEi, .-_ZNK5ValueIiiE7displayEi
	.section	.rodata.str1.1
.LC14:
	.string	"Test Multiple passed"
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	_Z12testMultiplev
	.type	_Z12testMultiplev, @function
_Z12testMultiplev:
.LFB2082:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2082
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	movl	$24, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$744, %rsp
	.cfi_def_cfa_offset 800
	leaq	176(%rsp), %rax
	leaq	656(%rsp), %rbx
	movaps	%xmm0, 176(%rsp)
	movq	%rax, (%rsp)
	leaq	256(%rsp), %rax
	movq	(%rsp), %xmm1
	movq	%rax, (%rsp)
	leaq	68(%rsp), %rax
	movq	%rbx, 192(%rsp)
	movl	$2, 200(%rsp)
	movhps	(%rsp), %xmm1
	movb	$0, 204(%rsp)
	movq	$0, 232(%rsp)
	movaps	%xmm0, 256(%rsp)
	movq	%rbx, 272(%rsp)
	movl	$-3, 280(%rsp)
	movb	$0, 284(%rsp)
	movq	$0, 312(%rsp)
	movaps	%xmm0, 336(%rsp)
	movq	%rbx, 352(%rsp)
	movl	$10, 360(%rsp)
	movb	$0, 364(%rsp)
	movq	$0, 392(%rsp)
	movl	$-6, 68(%rsp)
	movaps	%xmm1, (%rsp)
	movaps	%xmm1, 416(%rsp)
	movq	%rax, 432(%rsp)
	movl	$-6, 440(%rsp)
	movb	$43, 444(%rsp)
	movq	$0, 472(%rsp)
	movq	$0, 672(%rsp)
.LEHB44:
	call	_Znwm
.LEHE44:
	leaq	416(%rsp), %rcx
	movdqa	(%rsp), %xmm1
	movl	$2, %edx
	movq	$_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, 16(%rsp)
	movq	16(%rsp), %xmm0
	movq	%rcx, 16(%rax)
	movq	%rbx, %rsi
	leaq	80(%rsp), %rdi
	movups	%xmm1, (%rax)
	movdqa	%xmm0, %xmm2
	movq	%rax, 656(%rsp)
	movq	$0, 96(%rsp)
	movhps	.LC15(%rip), %xmm2
	movaps	%xmm2, 16(%rsp)
	movaps	%xmm2, 672(%rsp)
.LEHB45:
	call	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE45:
	movq	480(%rsp), %rdx
	movdqa	80(%rsp), %xmm0
	movq	472(%rsp), %rcx
	movq	672(%rsp), %rax
	movdqu	456(%rsp), %xmm5
	movq	%rdx, 104(%rsp)
	movq	680(%rsp), %rdx
	movups	%xmm0, 456(%rsp)
	movaps	%xmm5, 80(%rsp)
	movq	%rcx, 96(%rsp)
	movq	%rax, 472(%rsp)
	movq	%rdx, 480(%rsp)
	testq	%rcx, %rcx
	je	.L369
	leaq	80(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	672(%rsp), %rax
.L369:
	testq	%rax, %rax
	je	.L374
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rax
.L374:
	leaq	416(%rsp), %rax
	leaq	72(%rsp), %rdx
	movl	$24, %edi
	movb	$43, 524(%rsp)
	movq	%rax, (%rsp)
	leaq	336(%rsp), %rax
	movq	(%rsp), %xmm3
	movq	%rax, (%rsp)
	movl	360(%rsp), %eax
	addl	440(%rsp), %eax
	movq	%rdx, 512(%rsp)
	movl	%eax, 72(%rsp)
	movhps	(%rsp), %xmm3
	movl	%eax, 520(%rsp)
	movaps	%xmm3, (%rsp)
	movaps	%xmm3, 496(%rsp)
	movq	$0, 552(%rsp)
	movq	$0, 672(%rsp)
.LEHB46:
	call	_Znwm
.LEHE46:
	leaq	496(%rsp), %rcx
	movdqa	(%rsp), %xmm3
	movl	$2, %edx
	movq	%rbx, %rsi
	movq	$_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, (%rsp)
	movq	(%rsp), %xmm0
	leaq	112(%rsp), %rdi
	movq	%rcx, 16(%rax)
	movhps	.LC16(%rip), %xmm0
	movups	%xmm3, (%rax)
	movq	%rax, 656(%rsp)
	movaps	%xmm0, 672(%rsp)
	movq	$0, 128(%rsp)
.LEHB47:
	call	_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE47:
	movq	560(%rsp), %rdx
	movdqa	112(%rsp), %xmm0
	movq	552(%rsp), %rcx
	movq	672(%rsp), %rax
	movdqu	536(%rsp), %xmm6
	movq	%rdx, 136(%rsp)
	movq	680(%rsp), %rdx
	movups	%xmm0, 536(%rsp)
	movaps	%xmm6, 112(%rsp)
	movq	%rcx, 128(%rsp)
	movq	%rax, 552(%rsp)
	movq	%rdx, 560(%rsp)
	testq	%rcx, %rcx
	je	.L383
	leaq	112(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	672(%rsp), %rax
.L383:
	testq	%rax, %rax
	je	.L388
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rax
.L388:
	pxor	%xmm0, %xmm0
	leaq	76(%rsp), %rdx
	leaq	496(%rsp), %rax
	movl	$24, %edi
	movq	%rax, (%rsp)
	leaq	576(%rsp), %rax
	movq	(%rsp), %xmm4
	movq	%rax, (%rsp)
	movl	520(%rsp), %eax
	movaps	%xmm0, 576(%rsp)
	negl	%eax
	movq	%rbx, 592(%rsp)
	movhps	(%rsp), %xmm4
	addl	%eax, %eax
	movl	$-2, 600(%rsp)
	movb	$0, 604(%rsp)
	movq	$0, 632(%rsp)
	movl	%eax, 76(%rsp)
	movaps	%xmm4, (%rsp)
	movaps	%xmm4, 656(%rsp)
	movq	%rdx, 672(%rsp)
	movl	%eax, 680(%rsp)
	movb	$43, 684(%rsp)
	movq	$0, 712(%rsp)
	movq	$0, 128(%rsp)
.LEHB48:
	call	_Znwm
.LEHE48:
	movdqa	(%rsp), %xmm4
	movq	%rbx, 16(%rax)
	movl	$2, %edx
	leaq	112(%rsp), %rsi
	movdqa	16(%rsp), %xmm7
	leaq	144(%rsp), %rdi
	movq	%rax, 112(%rsp)
	movups	%xmm4, (%rax)
	movaps	%xmm7, 128(%rsp)
	movq	$0, 160(%rsp)
.LEHB49:
	call	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE49:
	movq	720(%rsp), %rdx
	movq	712(%rsp), %rcx
	movdqa	144(%rsp), %xmm0
	movq	128(%rsp), %rax
	movdqu	696(%rsp), %xmm5
	movq	%rdx, 168(%rsp)
	movq	136(%rsp), %rdx
	movups	%xmm0, 696(%rsp)
	movaps	%xmm5, 144(%rsp)
	movq	%rcx, 160(%rsp)
	movq	%rax, 712(%rsp)
	movq	%rdx, 720(%rsp)
	testq	%rcx, %rcx
	je	.L397
	leaq	144(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	128(%rsp), %rax
.L397:
	testq	%rax, %rax
	je	.L402
	leaq	112(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L402:
	movq	%rbx, %rdi
	movq	656(%rsp), %r14
	movq	664(%rsp), %r15
.LEHB50:
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	656(%rsp), %rax
	testq	%rax, %rax
	je	.L406
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L631
	cmpb	$0, 56(%r12)
	je	.L408
	movsbl	67(%r12), %esi
.L409:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L410
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L412:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L413
.L410:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L412
	movl	$1, %edx
	leaq	62(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 62(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L410
.L413:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 40(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 16(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r13d
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L414
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L632
	cmpb	$0, 56(%r12)
	je	.L416
	movsbl	67(%r12), %esi
.L417:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r13,%r13), %eax
	xorl	%r12d, %r12d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L418
	jmp	.L421
	.p2align 4,,10
	.p2align 3
.L420:
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	je	.L421
.L418:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L420
	movl	$1, %edx
	leaq	64(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 64(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	jne	.L418
.L421:
	movq	40(%rsp), %rdi
	movl	$3, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r14), %rax
.L414:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L422
	cmpq	%rax, %rdx
	je	.L422
	leal	(%r13,%r13), %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jg	.L423
	jmp	.L426
	.p2align 4,,10
	.p2align 3
.L425:
	addl	$1, %r12d
	cmpl	%r14d, %r12d
	je	.L426
.L423:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L425
	movl	$1, %edx
	leaq	65(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 65(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r14d, %r12d
	jne	.L423
.L426:
	movq	16(%rsp), %rdi
	movl	$3, %esi
	call	_ZNK5ValueIiiE7displayEi
.L620:
	movq	656(%rsp), %rax
.L406:
	movq	664(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L430
	cmpq	%rax, %rdx
	je	.L430
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L431
	jmp	.L434
	.p2align 4,,10
	.p2align 3
.L433:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L434
.L431:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L433
	movl	$1, %edx
	leaq	63(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 63(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L431
.L434:
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	8(%r15), %r14
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L435
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L633
	cmpb	$0, 56(%r12)
	je	.L437
	movsbl	67(%r12), %esi
.L438:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L439
	jmp	.L442
	.p2align 4,,10
	.p2align 3
.L441:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L442
.L439:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L441
	movl	$1, %edx
	leaq	66(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 66(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L439
.L442:
	movq	(%rsp), %rdi
	movl	$3, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r15), %rax
.L435:
	movq	8(%r15), %rdx
	testq	%rdx, %rdx
	je	.L443
	cmpq	%rdx, %rax
	je	.L443
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L444
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L446:
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	je	.L447
.L444:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L446
	movl	$1, %edx
	leaq	67(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 67(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	jne	.L444
.L447:
	movl	$3, %esi
	movq	%r14, %rdi
	call	_ZNK5ValueIiiE7displayEi
	jmp	.L445
	.p2align 4,,10
	.p2align 3
.L408:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L409
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L409
	.p2align 4,,10
	.p2align 3
.L443:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L634
.L451:
	cmpb	$0, 56(%rbp)
	je	.L452
	movsbl	67(%rbp), %esi
.L453:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L445:
	movl	$20, %edx
	movl	$.LC14, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L635
	cmpb	$0, 56(%rbp)
	je	.L455
	movsbl	67(%rbp), %esi
.L456:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE50:
	movq	712(%rsp), %rax
	testq	%rax, %rax
	je	.L457
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L457:
	movq	632(%rsp), %rax
	testq	%rax, %rax
	je	.L458
	leaq	616(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L458:
	movq	552(%rsp), %rax
	testq	%rax, %rax
	je	.L459
	leaq	536(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L459:
	movq	472(%rsp), %rax
	testq	%rax, %rax
	je	.L460
	leaq	456(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L460:
	movq	392(%rsp), %rax
	testq	%rax, %rax
	je	.L461
	leaq	376(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L461:
	movq	312(%rsp), %rax
	testq	%rax, %rax
	je	.L462
	leaq	296(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L462:
	movq	232(%rsp), %rax
	testq	%rax, %rax
	je	.L363
	leaq	216(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L363:
	addq	$744, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L455:
	.cfi_restore_state
	movq	%rbp, %rdi
.LEHB51:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L456
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L456
	.p2align 4,,10
	.p2align 3
.L430:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L451
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L452:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L453
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L453
	.p2align 4,,10
	.p2align 3
.L437:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L438
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L438
	.p2align 4,,10
	.p2align 3
.L416:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L417
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L417
	.p2align 4,,10
	.p2align 3
.L422:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L636
	cmpb	$0, 56(%r12)
	je	.L428
	movsbl	67(%r12), %esi
.L429:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L620
	.p2align 4,,10
	.p2align 3
.L428:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L429
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L429
.L635:
	call	_ZSt16__throw_bad_castv
.L631:
	call	_ZSt16__throw_bad_castv
.L636:
	call	_ZSt16__throw_bad_castv
.L632:
	call	_ZSt16__throw_bad_castv
.L634:
	call	_ZSt16__throw_bad_castv
.L633:
	call	_ZSt16__throw_bad_castv
.LEHE51:
.L486:
	movq	%rax, %rbp
	jmp	.L365
.L488:
	movq	%rax, %rbp
	jmp	.L379
.L487:
	movq	%rax, %rbp
	jmp	.L370
.L485:
	movq	%rax, %rbp
	jmp	.L464
.L491:
	movq	%rax, %rbp
	jmp	.L398
.L490:
	movq	%rax, %rbp
	jmp	.L393
.L489:
	movq	%rax, %rbp
	jmp	.L384
	.section	.gcc_except_table
.LLSDA2082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2082-.LLSDACSB2082
.LLSDACSB2082:
	.uleb128 .LEHB44-.LFB2082
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L486-.LFB2082
	.uleb128 0
	.uleb128 .LEHB45-.LFB2082
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L487-.LFB2082
	.uleb128 0
	.uleb128 .LEHB46-.LFB2082
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L488-.LFB2082
	.uleb128 0
	.uleb128 .LEHB47-.LFB2082
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L489-.LFB2082
	.uleb128 0
	.uleb128 .LEHB48-.LFB2082
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L490-.LFB2082
	.uleb128 0
	.uleb128 .LEHB49-.LFB2082
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L491-.LFB2082
	.uleb128 0
	.uleb128 .LEHB50-.LFB2082
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L485-.LFB2082
	.uleb128 0
	.uleb128 .LEHB51-.LFB2082
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L485-.LFB2082
	.uleb128 0
.LLSDACSE2082:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2082
	.type	_Z12testMultiplev.cold.58, @function
_Z12testMultiplev.cold.58:
.LFSB2082:
.L365:
	.cfi_def_cfa_offset 800
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	672(%rsp), %rax
	testq	%rax, %rax
	je	.L367
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rax
.L367:
	movq	472(%rsp), %rax
	testq	%rax, %rax
	je	.L468
	leaq	456(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L468:
	movq	392(%rsp), %rax
	movq	%rbp, %rbx
	testq	%rax, %rax
	je	.L469
	leaq	376(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L469:
	movq	312(%rsp), %rax
	testq	%rax, %rax
	je	.L470
	leaq	296(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L470:
	movq	232(%rsp), %rax
	testq	%rax, %rax
	je	.L471
	leaq	216(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L471:
	movq	%rbx, %rdi
.LEHB52:
	call	_Unwind_Resume
.LEHE52:
.L379:
	movq	672(%rsp), %rax
	testq	%rax, %rax
	je	.L381
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rax
.L381:
	movq	552(%rsp), %rax
	testq	%rax, %rax
	je	.L391
	leaq	536(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L391:
	movq	472(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L468
	leaq	456(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rcx
	jmp	.L468
.L370:
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.L371
	leaq	80(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L371:
	movq	672(%rsp), %rax
	testq	%rax, %rax
	je	.L367
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rax
	jmp	.L367
.L464:
	movq	712(%rsp), %rax
	testq	%rax, %rax
	je	.L405
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L405:
	movq	632(%rsp), %rax
	testq	%rax, %rax
	je	.L466
	leaq	616(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L466:
	movq	552(%rsp), %rax
	testq	%rax, %rax
	je	.L391
	leaq	536(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
	jmp	.L391
.L398:
	movq	160(%rsp), %rax
	testq	%rax, %rax
	je	.L399
	leaq	144(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L399:
	movq	128(%rsp), %rax
	testq	%rax, %rax
	je	.L395
	leaq	112(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L395:
	movq	712(%rsp), %rax
	testq	%rax, %rax
	je	.L405
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
	jmp	.L405
.L393:
	movq	128(%rsp), %rax
	testq	%rax, %rax
	je	.L395
	leaq	112(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L395
.L384:
	movq	128(%rsp), %rax
	testq	%rax, %rax
	je	.L385
	leaq	112(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L385:
	movq	672(%rsp), %rax
	testq	%rax, %rax
	je	.L381
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rax
	jmp	.L381
	.cfi_endproc
.LFE2082:
	.section	.gcc_except_table
.LLSDAC2082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2082-.LLSDACSBC2082
.LLSDACSBC2082:
	.uleb128 .LEHB52-.LCOLDB17
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
.LLSDACSEC2082:
	.section	.text.unlikely
	.text
	.size	_Z12testMultiplev, .-_Z12testMultiplev
	.section	.text.unlikely
	.size	_Z12testMultiplev.cold.58, .-_Z12testMultiplev.cold.58
.LCOLDE17:
	.text
.LHOTE17:
	.section	.rodata.str1.1
.LC18:
	.string	"c._val==2"
.LC19:
	.string	"Test Subtraction passed"
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	_Z15testSubtractionv
	.type	_Z15testSubtractionv, @function
_Z15testSubtractionv:
.LFB2078:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2078
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$296, %rsp
	.cfi_def_cfa_offset 352
	leaq	48(%rsp), %rax
	movaps	%xmm0, 48(%rsp)
	leaq	208(%rsp), %rbx
	movq	%rax, (%rsp)
	leaq	128(%rsp), %rax
	leaq	44(%rsp), %r15
	movq	%rbx, %rdi
	movaps	%xmm0, 128(%rsp)
	movq	(%rsp), %xmm0
	movq	%rax, (%rsp)
	movq	%rbx, 64(%rsp)
	movl	$4, 72(%rsp)
	movhps	(%rsp), %xmm0
	movb	$0, 76(%rsp)
	movq	$0, 104(%rsp)
	movq	%rbx, 144(%rsp)
	movl	$2, 152(%rsp)
	movb	$0, 156(%rsp)
	movq	$0, 184(%rsp)
	movaps	%xmm0, 208(%rsp)
	movq	%r15, 224(%rsp)
	movl	$2, 232(%rsp)
	movb	$45, 236(%rsp)
	movq	$0, 264(%rsp)
.LEHB53:
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	208(%rsp), %rax
	testq	%rax, %rax
	je	.L638
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L907
	cmpb	$0, 56(%r12)
	je	.L640
	movsbl	67(%r12), %esi
.L641:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L642
	jmp	.L645
	.p2align 4,,10
	.p2align 3
.L644:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L645
.L642:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L644
	movl	$1, %edx
	leaq	33(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 33(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L642
.L645:
	movq	48(%rsp), %rax
	leaq	48(%rsp), %rdi
	movq	56(%rsp), %r14
	movq	%rax, 8(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r13d
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.L646
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L908
	cmpb	$0, 56(%r12)
	je	.L648
	movsbl	67(%r12), %esi
.L649:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r13,%r13), %eax
	xorl	%r12d, %r12d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L650
	jmp	.L653
	.p2align 4,,10
	.p2align 3
.L652:
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	je	.L653
.L650:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L652
	movl	$1, %edx
	leaq	35(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 35(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	jne	.L650
.L653:
	movq	8(%rsp), %rdi
	movl	$3, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	48(%rsp), %rax
.L646:
	movq	56(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L654
	cmpq	%rax, %rdx
	je	.L654
	leal	(%r13,%r13), %eax
	xorl	%r12d, %r12d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L655
	jmp	.L658
	.p2align 4,,10
	.p2align 3
.L657:
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	je	.L658
.L655:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L657
	movl	$1, %edx
	leaq	36(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 36(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	jne	.L655
.L658:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 16(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 8(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r13d
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L659
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L909
	cmpb	$0, 56(%r12)
	je	.L661
	movsbl	67(%r12), %esi
.L662:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%r13,%r13,2), %eax
	xorl	%r12d, %r12d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L663
	jmp	.L666
	.p2align 4,,10
	.p2align 3
.L665:
	addl	$1, %r12d
	cmpl	%r12d, (%rsp)
	je	.L666
.L663:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L665
	movl	$1, %edx
	leaq	37(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 37(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, (%rsp)
	jne	.L663
.L666:
	movq	16(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r14), %rax
.L659:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L667
	cmpq	%rax, %rdx
	je	.L667
	leal	0(%r13,%r13,2), %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jg	.L668
	jmp	.L671
	.p2align 4,,10
	.p2align 3
.L670:
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	je	.L671
.L668:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L670
	movl	$1, %edx
	leaq	38(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 38(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	jne	.L668
.L671:
	movq	8(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
.L880:
	movq	208(%rsp), %rax
.L638:
	movq	216(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L678
	cmpq	%rax, %rdx
	je	.L678
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L679
	jmp	.L682
	.p2align 4,,10
	.p2align 3
.L681:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L682
.L679:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L681
	movl	$1, %edx
	leaq	34(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 34(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L679
.L682:
	movq	128(%rsp), %rax
	leaq	128(%rsp), %rdi
	movq	136(%rsp), %r14
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	128(%rsp), %rax
	testq	%rax, %rax
	je	.L683
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L910
	cmpb	$0, 56(%r12)
	je	.L685
	movsbl	67(%r12), %esi
.L686:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L687
	jmp	.L690
	.p2align 4,,10
	.p2align 3
.L689:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L690
.L687:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L689
	movl	$1, %edx
	leaq	39(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 39(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L687
.L690:
	movq	(%rsp), %r13
	movq	0(%r13), %rcx
	movq	%r13, %rdi
	movq	%rcx, 24(%rsp)
	movq	8(%r13), %rcx
	movq	%rcx, 16(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r12d
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L691
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r13
	testq	%r13, %r13
	je	.L911
	cmpb	$0, 56(%r13)
	je	.L693
	movsbl	67(%r13), %esi
.L694:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r12,%r12,2), %eax
	xorl	%r13d, %r13d
	movl	%eax, 8(%rsp)
	testl	%eax, %eax
	jg	.L695
	jmp	.L698
	.p2align 4,,10
	.p2align 3
.L697:
	addl	$1, %r13d
	cmpl	8(%rsp), %r13d
	je	.L698
.L695:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L697
	movl	$1, %edx
	leaq	41(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 41(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	8(%rsp), %r13d
	jne	.L695
.L698:
	movq	24(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L691:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L699
	cmpq	%rax, %rdx
	je	.L699
	leal	(%r12,%r12,2), %eax
	xorl	%r13d, %r13d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L700
	jmp	.L703
	.p2align 4,,10
	.p2align 3
.L702:
	addl	$1, %r13d
	cmpl	%r13d, (%rsp)
	je	.L703
.L700:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L702
	movl	$1, %edx
	leaq	42(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 42(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	%r13d, (%rsp)
	jne	.L700
.L703:
	movq	16(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
.L881:
	movq	128(%rsp), %rax
.L683:
	movq	136(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L707
	cmpq	%rax, %rdx
	je	.L707
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L708
	jmp	.L711
	.p2align 4,,10
	.p2align 3
.L710:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L711
.L708:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L710
	movl	$1, %edx
	leaq	40(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 40(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L708
.L711:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	movq	8(%r14), %rax
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L712
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L912
	cmpb	$0, 56(%r12)
	je	.L714
	movsbl	67(%r12), %esi
.L715:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L716
	jmp	.L719
	.p2align 4,,10
	.p2align 3
.L718:
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	je	.L719
.L716:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L718
	movl	$1, %edx
	leaq	43(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 43(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	jne	.L716
.L719:
	movq	8(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r14), %rax
.L712:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L720
	cmpq	%rax, %rdx
	je	.L720
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L721
	jmp	.L724
	.p2align 4,,10
	.p2align 3
.L723:
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	je	.L724
.L721:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L723
	movl	$1, %edx
	movq	%r15, %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 44(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	jne	.L721
.L724:
	movq	(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	jmp	.L722
	.p2align 4,,10
	.p2align 3
.L640:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L641
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L641
	.p2align 4,,10
	.p2align 3
.L707:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L913
.L731:
	cmpb	$0, 56(%rbp)
	je	.L732
	movsbl	67(%rbp), %esi
.L733:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L722:
	cmpl	$2, 232(%rsp)
	jne	.L914
	movl	$23, %edx
	movl	$.LC19, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L915
	cmpb	$0, 56(%rbp)
	je	.L736
	movsbl	67(%rbp), %esi
.L737:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE53:
	movq	264(%rsp), %rax
	testq	%rax, %rax
	je	.L738
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L738:
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.L739
	leaq	168(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L739:
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L637
	leaq	88(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L637:
	addq	$296, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L736:
	.cfi_restore_state
	movq	%rbp, %rdi
.LEHB54:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L737
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L737
	.p2align 4,,10
	.p2align 3
.L732:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L733
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L733
	.p2align 4,,10
	.p2align 3
.L678:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L731
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L685:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L686
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L686
	.p2align 4,,10
	.p2align 3
.L648:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L649
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L649
	.p2align 4,,10
	.p2align 3
.L714:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L715
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L715
	.p2align 4,,10
	.p2align 3
.L654:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L916
.L675:
	cmpb	$0, 56(%r12)
	je	.L676
	movsbl	67(%r12), %esi
.L677:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L880
	.p2align 4,,10
	.p2align 3
.L720:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L731
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L676:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L677
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L677
	.p2align 4,,10
	.p2align 3
.L699:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L917
	cmpb	$0, 56(%r12)
	je	.L705
	movsbl	67(%r12), %esi
.L706:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L881
	.p2align 4,,10
	.p2align 3
.L667:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	jne	.L675
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L693:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L694
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L694
	.p2align 4,,10
	.p2align 3
.L661:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L662
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L662
	.p2align 4,,10
	.p2align 3
.L705:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L706
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L706
.L914:
	movl	$_ZZ15testSubtractionvE19__PRETTY_FUNCTION__, %ecx
	movl	$29, %edx
	movl	$.LC2, %esi
	movl	$.LC18, %edi
	call	__assert_fail
.L915:
	call	_ZSt16__throw_bad_castv
.L907:
	call	_ZSt16__throw_bad_castv
.L916:
	call	_ZSt16__throw_bad_castv
.L913:
	call	_ZSt16__throw_bad_castv
.L911:
	call	_ZSt16__throw_bad_castv
.L909:
	call	_ZSt16__throw_bad_castv
.L912:
	call	_ZSt16__throw_bad_castv
.L908:
	call	_ZSt16__throw_bad_castv
.L910:
	call	_ZSt16__throw_bad_castv
.L917:
	call	_ZSt16__throw_bad_castv
.LEHE54:
.L770:
	movq	%rax, %rbp
	jmp	.L741
	.section	.gcc_except_table
.LLSDA2078:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2078-.LLSDACSB2078
.LLSDACSB2078:
	.uleb128 .LEHB53-.LFB2078
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L770-.LFB2078
	.uleb128 0
	.uleb128 .LEHB54-.LFB2078
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L770-.LFB2078
	.uleb128 0
.LLSDACSE2078:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2078
	.type	_Z15testSubtractionv.cold.59, @function
_Z15testSubtractionv.cold.59:
.LFSB2078:
.L741:
	.cfi_def_cfa_offset 352
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	264(%rsp), %rax
	testq	%rax, %rax
	je	.L742
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L742:
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.L743
	leaq	168(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L743:
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L744
	leaq	48(%rsp), %rbx
	movl	$3, %edx
	leaq	40(%rbx), %rdi
	movq	%rdi, %rsi
	call	*%rax
.L744:
	movq	%rbp, %rdi
.LEHB55:
	call	_Unwind_Resume
.LEHE55:
	.cfi_endproc
.LFE2078:
	.section	.gcc_except_table
.LLSDAC2078:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2078-.LLSDACSBC2078
.LLSDACSBC2078:
	.uleb128 .LEHB55-.LCOLDB20
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
.LLSDACSEC2078:
	.section	.text.unlikely
	.text
	.size	_Z15testSubtractionv, .-_Z15testSubtractionv
	.section	.text.unlikely
	.size	_Z15testSubtractionv.cold.59, .-_Z15testSubtractionv.cold.59
.LCOLDE20:
	.text
.LHOTE20:
	.section	.rodata.str1.1
.LC21:
	.string	"Test Division passed"
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	_Z12testDivisionv
	.type	_Z12testDivisionv, @function
_Z12testDivisionv:
.LFB2080:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2080
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$296, %rsp
	.cfi_def_cfa_offset 352
	leaq	48(%rsp), %rax
	movaps	%xmm0, 48(%rsp)
	leaq	208(%rsp), %rbx
	movq	%rax, (%rsp)
	leaq	128(%rsp), %rax
	leaq	44(%rsp), %r15
	movq	%rbx, %rdi
	movaps	%xmm0, 128(%rsp)
	movq	(%rsp), %xmm0
	movq	%rax, (%rsp)
	movq	%rbx, 64(%rsp)
	movl	$4, 72(%rsp)
	movhps	(%rsp), %xmm0
	movb	$0, 76(%rsp)
	movq	$0, 104(%rsp)
	movq	%rbx, 144(%rsp)
	movl	$2, 152(%rsp)
	movb	$0, 156(%rsp)
	movq	$0, 184(%rsp)
	movaps	%xmm0, 208(%rsp)
	movq	%r15, 224(%rsp)
	movl	$2, 232(%rsp)
	movb	$47, 236(%rsp)
	movq	$0, 264(%rsp)
.LEHB56:
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	208(%rsp), %rax
	testq	%rax, %rax
	je	.L919
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1188
	cmpb	$0, 56(%r12)
	je	.L921
	movsbl	67(%r12), %esi
.L922:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L923
	jmp	.L926
	.p2align 4,,10
	.p2align 3
.L925:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L926
.L923:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L925
	movl	$1, %edx
	leaq	33(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 33(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L923
.L926:
	movq	48(%rsp), %rax
	leaq	48(%rsp), %rdi
	movq	56(%rsp), %r14
	movq	%rax, 8(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r13d
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.L927
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1189
	cmpb	$0, 56(%r12)
	je	.L929
	movsbl	67(%r12), %esi
.L930:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r13,%r13), %eax
	xorl	%r12d, %r12d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L931
	jmp	.L934
	.p2align 4,,10
	.p2align 3
.L933:
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	je	.L934
.L931:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L933
	movl	$1, %edx
	leaq	35(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 35(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	jne	.L931
.L934:
	movq	8(%rsp), %rdi
	movl	$3, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	48(%rsp), %rax
.L927:
	movq	56(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L935
	cmpq	%rax, %rdx
	je	.L935
	leal	(%r13,%r13), %eax
	xorl	%r12d, %r12d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L936
	jmp	.L939
	.p2align 4,,10
	.p2align 3
.L938:
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	je	.L939
.L936:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L938
	movl	$1, %edx
	leaq	36(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 36(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	(%rsp), %r12d
	jne	.L936
.L939:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 16(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 8(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r13d
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L940
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1190
	cmpb	$0, 56(%r12)
	je	.L942
	movsbl	67(%r12), %esi
.L943:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%r13,%r13,2), %eax
	xorl	%r12d, %r12d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L944
	jmp	.L947
	.p2align 4,,10
	.p2align 3
.L946:
	addl	$1, %r12d
	cmpl	%r12d, (%rsp)
	je	.L947
.L944:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L946
	movl	$1, %edx
	leaq	37(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 37(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, (%rsp)
	jne	.L944
.L947:
	movq	16(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r14), %rax
.L940:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L948
	cmpq	%rax, %rdx
	je	.L948
	leal	0(%r13,%r13,2), %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jg	.L949
	jmp	.L952
	.p2align 4,,10
	.p2align 3
.L951:
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	je	.L952
.L949:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L951
	movl	$1, %edx
	leaq	38(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 38(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	jne	.L949
.L952:
	movq	8(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
.L1161:
	movq	208(%rsp), %rax
.L919:
	movq	216(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L959
	cmpq	%rax, %rdx
	je	.L959
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L960
	jmp	.L963
	.p2align 4,,10
	.p2align 3
.L962:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L963
.L960:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L962
	movl	$1, %edx
	leaq	34(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 34(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L960
.L963:
	movq	128(%rsp), %rax
	leaq	128(%rsp), %rdi
	movq	136(%rsp), %r14
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	128(%rsp), %rax
	testq	%rax, %rax
	je	.L964
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1191
	cmpb	$0, 56(%r12)
	je	.L966
	movsbl	67(%r12), %esi
.L967:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L968
	jmp	.L971
	.p2align 4,,10
	.p2align 3
.L970:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L971
.L968:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L970
	movl	$1, %edx
	leaq	39(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 39(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L968
.L971:
	movq	(%rsp), %r13
	movq	0(%r13), %rcx
	movq	%r13, %rdi
	movq	%rcx, 24(%rsp)
	movq	8(%r13), %rcx
	movq	%rcx, 16(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r12d
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L972
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r13
	testq	%r13, %r13
	je	.L1192
	cmpb	$0, 56(%r13)
	je	.L974
	movsbl	67(%r13), %esi
.L975:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r12,%r12,2), %eax
	xorl	%r13d, %r13d
	movl	%eax, 8(%rsp)
	testl	%eax, %eax
	jg	.L976
	jmp	.L979
	.p2align 4,,10
	.p2align 3
.L978:
	addl	$1, %r13d
	cmpl	8(%rsp), %r13d
	je	.L979
.L976:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L978
	movl	$1, %edx
	leaq	41(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 41(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	8(%rsp), %r13d
	jne	.L976
.L979:
	movq	24(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L972:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L980
	cmpq	%rax, %rdx
	je	.L980
	leal	(%r12,%r12,2), %eax
	xorl	%r13d, %r13d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L981
	jmp	.L984
	.p2align 4,,10
	.p2align 3
.L983:
	addl	$1, %r13d
	cmpl	%r13d, (%rsp)
	je	.L984
.L981:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L983
	movl	$1, %edx
	leaq	42(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 42(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	%r13d, (%rsp)
	jne	.L981
.L984:
	movq	16(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
.L1162:
	movq	128(%rsp), %rax
.L964:
	movq	136(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L988
	cmpq	%rax, %rdx
	je	.L988
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L989
	jmp	.L992
	.p2align 4,,10
	.p2align 3
.L991:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L992
.L989:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L991
	movl	$1, %edx
	leaq	40(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 40(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L989
.L992:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	movq	8(%r14), %rax
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L993
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1193
	cmpb	$0, 56(%r12)
	je	.L995
	movsbl	67(%r12), %esi
.L996:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L997
	jmp	.L1000
	.p2align 4,,10
	.p2align 3
.L999:
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	je	.L1000
.L997:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L999
	movl	$1, %edx
	leaq	43(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 43(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	jne	.L997
.L1000:
	movq	8(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r14), %rax
.L993:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L1001
	cmpq	%rax, %rdx
	je	.L1001
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L1002
	jmp	.L1005
	.p2align 4,,10
	.p2align 3
.L1004:
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	je	.L1005
.L1002:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1004
	movl	$1, %edx
	movq	%r15, %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 44(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	jne	.L1002
.L1005:
	movq	(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	jmp	.L1003
	.p2align 4,,10
	.p2align 3
.L921:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L922
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L922
	.p2align 4,,10
	.p2align 3
.L988:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L1194
.L1012:
	cmpb	$0, 56(%rbp)
	je	.L1013
	movsbl	67(%rbp), %esi
.L1014:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L1003:
	cmpl	$2, 232(%rsp)
	jne	.L1195
	movl	$20, %edx
	movl	$.LC21, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L1196
	cmpb	$0, 56(%rbp)
	je	.L1017
	movsbl	67(%rbp), %esi
.L1018:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE56:
	movq	264(%rsp), %rax
	testq	%rax, %rax
	je	.L1019
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1019:
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.L1020
	leaq	168(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1020:
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L918
	leaq	88(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L918:
	addq	$296, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1017:
	.cfi_restore_state
	movq	%rbp, %rdi
.LEHB57:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1018
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1018
	.p2align 4,,10
	.p2align 3
.L1013:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1014
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1014
	.p2align 4,,10
	.p2align 3
.L959:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L1012
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L966:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L967
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L967
	.p2align 4,,10
	.p2align 3
.L929:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L930
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L930
	.p2align 4,,10
	.p2align 3
.L995:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L996
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L996
	.p2align 4,,10
	.p2align 3
.L935:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1197
.L956:
	cmpb	$0, 56(%r12)
	je	.L957
	movsbl	67(%r12), %esi
.L958:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L1161
	.p2align 4,,10
	.p2align 3
.L1001:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L1012
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L957:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L958
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L958
	.p2align 4,,10
	.p2align 3
.L980:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1198
	cmpb	$0, 56(%r12)
	je	.L986
	movsbl	67(%r12), %esi
.L987:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L1162
	.p2align 4,,10
	.p2align 3
.L948:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	jne	.L956
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L974:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L975
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L975
	.p2align 4,,10
	.p2align 3
.L942:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L943
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L943
	.p2align 4,,10
	.p2align 3
.L986:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L987
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L987
.L1195:
	movl	$_ZZ12testDivisionvE19__PRETTY_FUNCTION__, %ecx
	movl	$57, %edx
	movl	$.LC2, %esi
	movl	$.LC18, %edi
	call	__assert_fail
.L1196:
	call	_ZSt16__throw_bad_castv
.L1188:
	call	_ZSt16__throw_bad_castv
.L1197:
	call	_ZSt16__throw_bad_castv
.L1194:
	call	_ZSt16__throw_bad_castv
.L1192:
	call	_ZSt16__throw_bad_castv
.L1190:
	call	_ZSt16__throw_bad_castv
.L1193:
	call	_ZSt16__throw_bad_castv
.L1189:
	call	_ZSt16__throw_bad_castv
.L1191:
	call	_ZSt16__throw_bad_castv
.L1198:
	call	_ZSt16__throw_bad_castv
.LEHE57:
.L1051:
	movq	%rax, %rbp
	jmp	.L1022
	.section	.gcc_except_table
.LLSDA2080:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2080-.LLSDACSB2080
.LLSDACSB2080:
	.uleb128 .LEHB56-.LFB2080
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L1051-.LFB2080
	.uleb128 0
	.uleb128 .LEHB57-.LFB2080
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L1051-.LFB2080
	.uleb128 0
.LLSDACSE2080:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2080
	.type	_Z12testDivisionv.cold.60, @function
_Z12testDivisionv.cold.60:
.LFSB2080:
.L1022:
	.cfi_def_cfa_offset 352
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	264(%rsp), %rax
	testq	%rax, %rax
	je	.L1023
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1023:
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.L1024
	leaq	168(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1024:
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L1025
	leaq	48(%rsp), %rbx
	movl	$3, %edx
	leaq	40(%rbx), %rdi
	movq	%rdi, %rsi
	call	*%rax
.L1025:
	movq	%rbp, %rdi
.LEHB58:
	call	_Unwind_Resume
.LEHE58:
	.cfi_endproc
.LFE2080:
	.section	.gcc_except_table
.LLSDAC2080:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2080-.LLSDACSBC2080
.LLSDACSBC2080:
	.uleb128 .LEHB58-.LCOLDB22
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSEC2080:
	.section	.text.unlikely
	.text
	.size	_Z12testDivisionv, .-_Z12testDivisionv
	.section	.text.unlikely
	.size	_Z12testDivisionv.cold.60, .-_Z12testDivisionv.cold.60
.LCOLDE22:
	.text
.LHOTE22:
	.section	.rodata.str1.1
.LC23:
	.string	"c._val==8"
.LC24:
	.string	"Test Multiplication passed"
	.section	.text.unlikely
.LCOLDB25:
	.text
.LHOTB25:
	.p2align 4,,15
	.globl	_Z18testMultiplicationv
	.type	_Z18testMultiplicationv, @function
_Z18testMultiplicationv:
.LFB2079:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2079
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	movl	$24, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$376, %rsp
	.cfi_def_cfa_offset 432
	leaq	128(%rsp), %rax
	leaq	288(%rsp), %rbx
	movaps	%xmm0, 128(%rsp)
	movq	%rax, (%rsp)
	leaq	208(%rsp), %rax
	movq	(%rsp), %xmm1
	movq	%rax, (%rsp)
	leaq	60(%rsp), %rax
	movq	%rbx, 144(%rsp)
	movl	$4, 152(%rsp)
	movhps	(%rsp), %xmm1
	movb	$0, 156(%rsp)
	movq	$0, 184(%rsp)
	movaps	%xmm0, 208(%rsp)
	movq	%rbx, 224(%rsp)
	movl	$2, 232(%rsp)
	movb	$0, 236(%rsp)
	movq	$0, 264(%rsp)
	movl	$8, 60(%rsp)
	movaps	%xmm1, (%rsp)
	movaps	%xmm1, 288(%rsp)
	movq	%rax, 304(%rsp)
	movl	$8, 312(%rsp)
	movb	$43, 316(%rsp)
	movq	$0, 344(%rsp)
	movq	$0, 80(%rsp)
.LEHB59:
	call	_Znwm
.LEHE59:
	movdqa	(%rsp), %xmm1
	movq	%rbx, 16(%rax)
	movl	$2, %edx
	leaq	64(%rsp), %rsi
	movq	$_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, (%rsp)
	movq	(%rsp), %xmm0
	leaq	96(%rsp), %rdi
	movups	%xmm1, (%rax)
	movhps	.LC15(%rip), %xmm0
	movq	%rax, 64(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	$0, 112(%rsp)
.LEHB60:
	call	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE60:
	movq	352(%rsp), %rdx
	movdqa	96(%rsp), %xmm0
	movdqu	328(%rsp), %xmm2
	movq	344(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rdx, 120(%rsp)
	movq	88(%rsp), %rdx
	movaps	%xmm2, 96(%rsp)
	movups	%xmm0, 328(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rax, 344(%rsp)
	movq	%rdx, 352(%rsp)
	testq	%rcx, %rcx
	je	.L1205
	leaq	96(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	80(%rsp), %rax
.L1205:
	testq	%rax, %rax
	je	.L1210
	leaq	64(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L1210:
	movq	%rbx, %rdi
	movq	288(%rsp), %r15
	movq	296(%rsp), %r14
.LEHB61:
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	288(%rsp), %rax
	testq	%rax, %rax
	je	.L1214
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1499
	cmpb	$0, 56(%r12)
	je	.L1216
	movsbl	67(%r12), %esi
.L1217:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L1218
	jmp	.L1221
	.p2align 4,,10
	.p2align 3
.L1220:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L1221
.L1218:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1220
	movl	$1, %edx
	leaq	49(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 49(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L1218
.L1221:
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rax, 32(%rsp)
	movq	8(%r15), %rax
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r13d
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L1222
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1500
	cmpb	$0, 56(%r12)
	je	.L1224
	movsbl	67(%r12), %esi
.L1225:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r13,%r13), %eax
	xorl	%r12d, %r12d
	movl	%eax, 24(%rsp)
	testl	%eax, %eax
	jg	.L1226
	jmp	.L1229
	.p2align 4,,10
	.p2align 3
.L1228:
	addl	$1, %r12d
	cmpl	%r12d, 24(%rsp)
	je	.L1229
.L1226:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L1228
	movl	$1, %edx
	leaq	51(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 51(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, 24(%rsp)
	jne	.L1226
.L1229:
	movq	32(%rsp), %rdi
	movl	$3, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r15), %rax
.L1222:
	movq	8(%r15), %rdx
	testq	%rdx, %rdx
	je	.L1230
	cmpq	%rax, %rdx
	je	.L1230
	leal	(%r13,%r13), %r15d
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	jg	.L1231
	jmp	.L1234
	.p2align 4,,10
	.p2align 3
.L1233:
	addl	$1, %r12d
	cmpl	%r12d, %r15d
	je	.L1234
.L1231:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L1233
	movl	$1, %edx
	leaq	52(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 52(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r15d
	jne	.L1231
.L1234:
	movq	(%rsp), %r15
	movq	(%r15), %rcx
	movq	%r15, %rdi
	movq	%rcx, 32(%rsp)
	movq	8(%r15), %rcx
	movq	%rcx, 24(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r12d
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L1235
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r13
	testq	%r13, %r13
	je	.L1501
	cmpb	$0, 56(%r13)
	je	.L1237
	movsbl	67(%r13), %esi
.L1238:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r12,%r12,2), %r15d
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	jg	.L1239
	jmp	.L1242
	.p2align 4,,10
	.p2align 3
.L1241:
	addl	$1, %r13d
	cmpl	%r15d, %r13d
	je	.L1242
.L1239:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1241
	movl	$1, %edx
	leaq	53(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 53(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	%r15d, %r13d
	jne	.L1239
.L1242:
	movq	32(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L1235:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L1243
	cmpq	%rax, %rdx
	je	.L1243
	leal	(%r12,%r12,2), %r15d
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	jg	.L1244
	jmp	.L1247
	.p2align 4,,10
	.p2align 3
.L1246:
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	je	.L1247
.L1244:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1246
	movl	$1, %edx
	leaq	54(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 54(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	jne	.L1244
.L1247:
	movq	24(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
.L1472:
	movq	288(%rsp), %rax
.L1214:
	movq	296(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1254
	cmpq	%rax, %rdx
	je	.L1254
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L1255
	jmp	.L1258
	.p2align 4,,10
	.p2align 3
.L1257:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L1258
.L1255:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1257
	movl	$1, %edx
	leaq	50(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 50(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L1255
.L1258:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	8(%r14), %r15
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L1259
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1502
	cmpb	$0, 56(%r12)
	je	.L1261
	movsbl	67(%r12), %esi
.L1262:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L1263
	jmp	.L1266
	.p2align 4,,10
	.p2align 3
.L1265:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L1266
.L1263:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1265
	movl	$1, %edx
	leaq	55(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 55(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L1263
.L1266:
	movq	(%rsp), %r13
	movq	0(%r13), %rcx
	movq	%r13, %rdi
	movq	%rcx, 40(%rsp)
	movq	8(%r13), %rcx
	movq	%rcx, 32(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r12d
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L1267
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r13
	testq	%r13, %r13
	je	.L1503
	cmpb	$0, 56(%r13)
	je	.L1269
	movsbl	67(%r13), %esi
.L1270:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r12,%r12,2), %eax
	xorl	%r13d, %r13d
	movl	%eax, 24(%rsp)
	testl	%eax, %eax
	jg	.L1271
	jmp	.L1274
	.p2align 4,,10
	.p2align 3
.L1273:
	addl	$1, %r13d
	cmpl	24(%rsp), %r13d
	je	.L1274
.L1271:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1273
	movl	$1, %edx
	leaq	57(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 57(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	24(%rsp), %r13d
	jne	.L1271
.L1274:
	movq	40(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L1267:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L1275
	cmpq	%rdx, %rax
	je	.L1275
	leal	(%r12,%r12,2), %eax
	xorl	%r13d, %r13d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L1276
	jmp	.L1279
	.p2align 4,,10
	.p2align 3
.L1278:
	addl	$1, %r13d
	cmpl	%r13d, (%rsp)
	je	.L1279
.L1276:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1278
	movl	$1, %edx
	leaq	58(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 58(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	%r13d, (%rsp)
	jne	.L1276
.L1279:
	movq	32(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
.L1473:
	movq	(%r14), %rax
.L1259:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L1283
	cmpq	%rax, %rdx
	je	.L1283
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L1284
	jmp	.L1287
	.p2align 4,,10
	.p2align 3
.L1286:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L1287
.L1284:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1286
	movl	$1, %edx
	leaq	56(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 56(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L1284
.L1287:
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	8(%r15), %r14
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L1288
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1504
	cmpb	$0, 56(%r12)
	je	.L1290
	movsbl	67(%r12), %esi
.L1291:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L1292
	jmp	.L1295
	.p2align 4,,10
	.p2align 3
.L1294:
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	je	.L1295
.L1292:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1294
	movl	$1, %edx
	leaq	59(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 59(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	jne	.L1292
.L1295:
	movq	(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r15), %rax
.L1288:
	movq	8(%r15), %rdx
	testq	%rdx, %rdx
	je	.L1296
	cmpq	%rdx, %rax
	je	.L1296
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L1297
	jmp	.L1300
	.p2align 4,,10
	.p2align 3
.L1299:
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	je	.L1300
.L1297:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1299
	movl	$1, %edx
	leaq	64(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 64(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	jne	.L1297
.L1300:
	movl	$4, %esi
	movq	%r14, %rdi
	call	_ZNK5ValueIiiE7displayEi
	jmp	.L1298
	.p2align 4,,10
	.p2align 3
.L1216:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1217
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1217
	.p2align 4,,10
	.p2align 3
.L1283:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L1505
.L1307:
	cmpb	$0, 56(%rbp)
	je	.L1308
	movsbl	67(%rbp), %esi
.L1309:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L1298:
	cmpl	$8, 312(%rsp)
	jne	.L1506
	movl	$26, %edx
	movl	$.LC24, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L1507
	cmpb	$0, 56(%rbp)
	je	.L1312
	movsbl	67(%rbp), %esi
.L1313:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE61:
	movq	344(%rsp), %rax
	testq	%rax, %rax
	je	.L1314
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1314:
	movq	264(%rsp), %rax
	testq	%rax, %rax
	je	.L1315
	leaq	248(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1315:
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.L1199
	leaq	168(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1199:
	addq	$376, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1312:
	.cfi_restore_state
	movq	%rbp, %rdi
.LEHB62:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1313
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1313
	.p2align 4,,10
	.p2align 3
.L1308:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1309
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1309
	.p2align 4,,10
	.p2align 3
.L1254:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L1307
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L1261:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1262
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1262
	.p2align 4,,10
	.p2align 3
.L1224:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1225
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1225
	.p2align 4,,10
	.p2align 3
.L1290:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1291
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1291
	.p2align 4,,10
	.p2align 3
.L1230:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1508
.L1251:
	cmpb	$0, 56(%r12)
	je	.L1252
	movsbl	67(%r12), %esi
.L1253:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L1472
	.p2align 4,,10
	.p2align 3
.L1296:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L1307
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L1252:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1253
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1253
	.p2align 4,,10
	.p2align 3
.L1275:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1509
	cmpb	$0, 56(%r12)
	je	.L1281
	movsbl	67(%r12), %esi
.L1282:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L1473
	.p2align 4,,10
	.p2align 3
.L1243:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	jne	.L1251
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L1269:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1270
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1270
	.p2align 4,,10
	.p2align 3
.L1237:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1238
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1238
	.p2align 4,,10
	.p2align 3
.L1281:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1282
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1282
.L1506:
	movl	$_ZZ18testMultiplicationvE19__PRETTY_FUNCTION__, %ecx
	movl	$43, %edx
	movl	$.LC2, %esi
	movl	$.LC23, %edi
	call	__assert_fail
.L1507:
	call	_ZSt16__throw_bad_castv
.L1499:
	call	_ZSt16__throw_bad_castv
.L1503:
	call	_ZSt16__throw_bad_castv
.L1508:
	call	_ZSt16__throw_bad_castv
.L1505:
	call	_ZSt16__throw_bad_castv
.L1501:
	call	_ZSt16__throw_bad_castv
.L1502:
	call	_ZSt16__throw_bad_castv
.L1504:
	call	_ZSt16__throw_bad_castv
.L1500:
	call	_ZSt16__throw_bad_castv
.L1509:
	call	_ZSt16__throw_bad_castv
.LEHE62:
.L1347:
	movq	%rax, %rbp
	jmp	.L1201
.L1346:
	movq	%rax, %rbp
	jmp	.L1317
.L1348:
	movq	%rax, %rbp
	jmp	.L1206
	.section	.gcc_except_table
.LLSDA2079:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2079-.LLSDACSB2079
.LLSDACSB2079:
	.uleb128 .LEHB59-.LFB2079
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L1347-.LFB2079
	.uleb128 0
	.uleb128 .LEHB60-.LFB2079
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L1348-.LFB2079
	.uleb128 0
	.uleb128 .LEHB61-.LFB2079
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L1346-.LFB2079
	.uleb128 0
	.uleb128 .LEHB62-.LFB2079
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1346-.LFB2079
	.uleb128 0
.LLSDACSE2079:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2079
	.type	_Z18testMultiplicationv.cold.61, @function
_Z18testMultiplicationv.cold.61:
.LFSB2079:
.L1201:
	.cfi_def_cfa_offset 432
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.L1203
	leaq	64(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L1203:
	movq	344(%rsp), %rax
	testq	%rax, %rax
	je	.L1213
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1213:
	movq	264(%rsp), %rax
	testq	%rax, %rax
	je	.L1319
	leaq	248(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1319:
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.L1320
	leaq	128(%rsp), %rbx
	movl	$3, %edx
	leaq	40(%rbx), %rdi
	movq	%rdi, %rsi
	call	*%rax
.L1320:
	movq	%rbp, %rdi
.LEHB63:
	call	_Unwind_Resume
.LEHE63:
.L1317:
	movq	344(%rsp), %rax
	testq	%rax, %rax
	je	.L1213
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
	jmp	.L1213
.L1206:
	movq	112(%rsp), %rax
	testq	%rax, %rax
	je	.L1207
	leaq	96(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L1207:
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.L1203
	leaq	64(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L1203
	.cfi_endproc
.LFE2079:
	.section	.gcc_except_table
.LLSDAC2079:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2079-.LLSDACSBC2079
.LLSDACSBC2079:
	.uleb128 .LEHB63-.LCOLDB25
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
.LLSDACSEC2079:
	.section	.text.unlikely
	.text
	.size	_Z18testMultiplicationv, .-_Z18testMultiplicationv
	.section	.text.unlikely
	.size	_Z18testMultiplicationv.cold.61, .-_Z18testMultiplicationv.cold.61
.LCOLDE25:
	.text
.LHOTE25:
	.section	.rodata.str1.1
.LC26:
	.string	"Test Addition passed"
	.section	.text.unlikely
.LCOLDB27:
	.text
.LHOTB27:
	.p2align 4,,15
	.globl	_Z12testAdditionv
	.type	_Z12testAdditionv, @function
_Z12testAdditionv:
.LFB2071:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2071
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	movl	$24, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$392, %rsp
	.cfi_def_cfa_offset 448
	leaq	144(%rsp), %rax
	leaq	304(%rsp), %rbx
	movaps	%xmm0, 144(%rsp)
	movq	%rax, (%rsp)
	leaq	224(%rsp), %rax
	movq	(%rsp), %xmm1
	movq	%rax, (%rsp)
	leaq	76(%rsp), %rax
	movq	%rbx, 160(%rsp)
	movl	$4, 168(%rsp)
	movhps	(%rsp), %xmm1
	movb	$0, 172(%rsp)
	movq	$0, 200(%rsp)
	movaps	%xmm0, 224(%rsp)
	movq	%rbx, 240(%rsp)
	movl	$2, 248(%rsp)
	movb	$0, 252(%rsp)
	movq	$0, 280(%rsp)
	movl	$6, 76(%rsp)
	movaps	%xmm1, (%rsp)
	movaps	%xmm1, 304(%rsp)
	movq	%rax, 320(%rsp)
	movl	$6, 328(%rsp)
	movb	$43, 332(%rsp)
	movq	$0, 360(%rsp)
	movq	$0, 96(%rsp)
.LEHB64:
	call	_Znwm
.LEHE64:
	movdqa	(%rsp), %xmm1
	movq	%rbx, 16(%rax)
	movl	$2, %edx
	leaq	80(%rsp), %rsi
	movq	$_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, (%rsp)
	movq	(%rsp), %xmm0
	leaq	112(%rsp), %rdi
	movups	%xmm1, (%rax)
	movhps	.LC16(%rip), %xmm0
	movq	%rax, 80(%rsp)
	movaps	%xmm0, 96(%rsp)
	movq	$0, 128(%rsp)
.LEHB65:
	call	_ZNSt14_Function_base13_Base_managerIZplR5ValueIiiES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE65:
	movq	368(%rsp), %rdx
	movdqa	112(%rsp), %xmm0
	movdqu	344(%rsp), %xmm2
	movq	360(%rsp), %rcx
	movq	96(%rsp), %rax
	movq	%rdx, 136(%rsp)
	movq	104(%rsp), %rdx
	movaps	%xmm2, 112(%rsp)
	movups	%xmm0, 344(%rsp)
	movq	%rcx, 128(%rsp)
	movq	%rax, 360(%rsp)
	movq	%rdx, 368(%rsp)
	testq	%rcx, %rcx
	je	.L1516
	leaq	112(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	96(%rsp), %rax
.L1516:
	testq	%rax, %rax
	je	.L1521
	leaq	80(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L1521:
	movq	%rbx, %rdi
	movq	304(%rsp), %r15
	movq	312(%rsp), %r14
.LEHB66:
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	304(%rsp), %rax
	testq	%rax, %rax
	je	.L1525
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1849
	cmpb	$0, 56(%r12)
	je	.L1527
	movsbl	67(%r12), %esi
.L1528:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L1529
	jmp	.L1532
	.p2align 4,,10
	.p2align 3
.L1531:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L1532
.L1529:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1531
	movl	$1, %edx
	leaq	63(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 63(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L1529
.L1532:
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rax, 32(%rsp)
	movq	8(%r15), %rax
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r13d
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L1533
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1850
	cmpb	$0, 56(%r12)
	je	.L1535
	movsbl	67(%r12), %esi
.L1536:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r13,%r13), %eax
	xorl	%r12d, %r12d
	movl	%eax, 24(%rsp)
	testl	%eax, %eax
	jg	.L1537
	jmp	.L1540
	.p2align 4,,10
	.p2align 3
.L1539:
	addl	$1, %r12d
	cmpl	24(%rsp), %r12d
	je	.L1540
.L1537:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L1539
	movl	$1, %edx
	leaq	65(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 65(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	24(%rsp), %r12d
	jne	.L1537
.L1540:
	movq	32(%rsp), %rdi
	movl	$3, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r15), %rax
.L1533:
	movq	8(%r15), %rdx
	testq	%rdx, %rdx
	je	.L1541
	cmpq	%rax, %rdx
	je	.L1541
	leal	(%r13,%r13), %r15d
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	jg	.L1542
	jmp	.L1545
	.p2align 4,,10
	.p2align 3
.L1544:
	addl	$1, %r12d
	cmpl	%r15d, %r12d
	je	.L1545
.L1542:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L1544
	movl	$1, %edx
	leaq	66(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 66(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r15d, %r12d
	jne	.L1542
.L1545:
	movq	(%rsp), %r15
	movq	(%r15), %rcx
	movq	%r15, %rdi
	movq	%rcx, 32(%rsp)
	movq	8(%r15), %rcx
	movq	%rcx, 24(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r12d
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L1546
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r13
	testq	%r13, %r13
	je	.L1851
	cmpb	$0, 56(%r13)
	je	.L1548
	movsbl	67(%r13), %esi
.L1549:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r12,%r12,2), %r15d
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	jg	.L1550
	jmp	.L1553
	.p2align 4,,10
	.p2align 3
.L1552:
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	je	.L1553
.L1550:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1552
	movl	$1, %edx
	leaq	67(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 67(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	jne	.L1550
.L1553:
	movq	32(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L1546:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L1554
	cmpq	%rax, %rdx
	je	.L1554
	leal	(%r12,%r12,2), %r15d
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	jg	.L1555
	jmp	.L1558
	.p2align 4,,10
	.p2align 3
.L1557:
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	je	.L1558
.L1555:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1557
	movl	$1, %edx
	leaq	68(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 68(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	jne	.L1555
.L1558:
	movq	24(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
.L1817:
	movq	304(%rsp), %rax
.L1525:
	movq	312(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1565
	cmpq	%rax, %rdx
	je	.L1565
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jg	.L1566
	jmp	.L1569
	.p2align 4,,10
	.p2align 3
.L1568:
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	je	.L1569
.L1566:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1568
	movl	$1, %edx
	leaq	64(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 64(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %ebp
	jne	.L1566
.L1569:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	8(%r14), %r15
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L1570
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1852
	cmpb	$0, 56(%r12)
	je	.L1572
	movsbl	67(%r12), %esi
.L1573:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L1574
	jmp	.L1577
	.p2align 4,,10
	.p2align 3
.L1576:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L1577
.L1574:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1576
	movl	$1, %edx
	leaq	69(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 69(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L1574
.L1577:
	movq	(%rsp), %r13
	movq	0(%r13), %rcx
	movq	%r13, %rdi
	movq	%rcx, 40(%rsp)
	movq	8(%r13), %rcx
	movq	%rcx, 32(%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r12d
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L1578
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r13
	testq	%r13, %r13
	je	.L1853
	cmpb	$0, 56(%r13)
	je	.L1580
	movsbl	67(%r13), %esi
.L1581:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r12,%r12,2), %eax
	xorl	%r13d, %r13d
	movl	%eax, 24(%rsp)
	testl	%eax, %eax
	jg	.L1582
	jmp	.L1585
	.p2align 4,,10
	.p2align 3
.L1584:
	addl	$1, %r13d
	cmpl	24(%rsp), %r13d
	je	.L1585
.L1582:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1584
	movl	$1, %edx
	leaq	71(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 71(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	24(%rsp), %r13d
	jne	.L1582
.L1585:
	movq	40(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L1578:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L1586
	cmpq	%rax, %rdx
	je	.L1586
	leal	(%r12,%r12,2), %eax
	xorl	%r13d, %r13d
	movl	%eax, (%rsp)
	testl	%eax, %eax
	jg	.L1587
	jmp	.L1590
	.p2align 4,,10
	.p2align 3
.L1589:
	addl	$1, %r13d
	cmpl	%r13d, (%rsp)
	je	.L1590
.L1587:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1589
	movl	$1, %edx
	leaq	72(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 72(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r13d
	cmpl	%r13d, (%rsp)
	jne	.L1587
.L1590:
	movq	32(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
.L1818:
	movq	(%r14), %rax
.L1570:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L1594
	cmpq	%rax, %rdx
	je	.L1594
	leal	(%rbp,%rbp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L1595
	jmp	.L1598
	.p2align 4,,10
	.p2align 3
.L1597:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L1598
.L1595:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1597
	movl	$1, %edx
	leaq	70(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 70(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L1595
.L1598:
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	8(%r15), %r13
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %ebp
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L1599
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1854
	cmpb	$0, 56(%r12)
	je	.L1601
	movsbl	67(%r12), %esi
.L1602:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,2), %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jg	.L1603
	jmp	.L1606
	.p2align 4,,10
	.p2align 3
.L1605:
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	je	.L1606
.L1603:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1605
	movl	$1, %edx
	leaq	73(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 73(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	jne	.L1603
.L1606:
	movq	(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	(%r15), %rax
.L1599:
	movq	8(%r15), %rdx
	testq	%rdx, %rdx
	je	.L1607
	cmpq	%rdx, %rax
	je	.L1607
	leal	0(%rbp,%rbp,2), %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jg	.L1608
	jmp	.L1611
	.p2align 4,,10
	.p2align 3
.L1610:
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	je	.L1611
.L1608:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L1610
	movl	$1, %edx
	leaq	74(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 74(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	jne	.L1608
.L1611:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	8(%r13), %r15
	movq	%rax, (%rsp)
	call	_ZNK5ValueIiiE5printEv
	movl	%eax, %r12d
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L1612
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L1855
	cmpb	$0, 56(%rbp)
	je	.L1614
	movsbl	67(%rbp), %esi
.L1615:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r12,4), %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jg	.L1616
	jmp	.L1619
	.p2align 4,,10
	.p2align 3
.L1618:
	addl	$1, %ebp
	cmpl	%r14d, %ebp
	je	.L1619
.L1616:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1618
	movl	$1, %edx
	leaq	75(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 75(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%r14d, %ebp
	jne	.L1616
.L1619:
	movq	(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIiiE7displayEi
	movq	0(%r13), %rax
.L1612:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L1620
	cmpq	%rax, %rdx
	je	.L1620
	leal	0(,%r12,4), %r13d
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jg	.L1621
	.p2align 4,,10
	.p2align 3
.L1624:
	movl	$5, %esi
	movq	%r15, %rdi
	call	_ZNK5ValueIiiE7displayEi
	jmp	.L1622
	.p2align 4,,10
	.p2align 3
.L1527:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1528
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1528
	.p2align 4,,10
	.p2align 3
.L1594:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L1856
.L1634:
	cmpb	$0, 56(%rbp)
	je	.L1635
	movsbl	67(%rbp), %esi
.L1636:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L1622:
	movl	$20, %edx
	movl	$.LC26, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L1857
	cmpb	$0, 56(%rbp)
	je	.L1638
	movsbl	67(%rbp), %esi
.L1639:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE66:
	movq	360(%rsp), %rax
	testq	%rax, %rax
	je	.L1640
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1640:
	movq	280(%rsp), %rax
	testq	%rax, %rax
	je	.L1641
	leaq	264(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1641:
	movq	200(%rsp), %rax
	testq	%rax, %rax
	je	.L1510
	leaq	184(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1510:
	addq	$392, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1638:
	.cfi_restore_state
	movq	%rbp, %rdi
.LEHB67:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1639
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1639
	.p2align 4,,10
	.p2align 3
.L1635:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1636
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1636
	.p2align 4,,10
	.p2align 3
.L1565:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L1634
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L1858:
	movl	$1, %edx
	leaq	80(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 80(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L1623:
	addl	$1, %ebp
	cmpl	%r13d, %ebp
	je	.L1624
.L1621:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L1623
	jmp	.L1858
	.p2align 4,,10
	.p2align 3
.L1572:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1573
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1573
	.p2align 4,,10
	.p2align 3
.L1535:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1536
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1536
	.p2align 4,,10
	.p2align 3
.L1601:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1602
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1602
	.p2align 4,,10
	.p2align 3
.L1541:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1859
.L1562:
	cmpb	$0, 56(%r12)
	je	.L1563
	movsbl	67(%r12), %esi
.L1564:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L1817
	.p2align 4,,10
	.p2align 3
.L1607:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L1634
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L1563:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1564
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1564
	.p2align 4,,10
	.p2align 3
.L1586:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L1860
	cmpb	$0, 56(%r12)
	je	.L1592
	movsbl	67(%r12), %esi
.L1593:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L1818
	.p2align 4,,10
	.p2align 3
.L1554:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	jne	.L1562
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L1620:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L1634
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L1548:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1549
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1549
	.p2align 4,,10
	.p2align 3
.L1580:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1581
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1581
	.p2align 4,,10
	.p2align 3
.L1614:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1615
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1615
	.p2align 4,,10
	.p2align 3
.L1592:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L1593
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L1593
.L1857:
	call	_ZSt16__throw_bad_castv
.L1849:
	call	_ZSt16__throw_bad_castv
.L1855:
	call	_ZSt16__throw_bad_castv
.L1851:
	call	_ZSt16__throw_bad_castv
.L1859:
	call	_ZSt16__throw_bad_castv
.L1853:
	call	_ZSt16__throw_bad_castv
.L1852:
	call	_ZSt16__throw_bad_castv
.L1850:
	call	_ZSt16__throw_bad_castv
.L1856:
	call	_ZSt16__throw_bad_castv
.L1854:
	call	_ZSt16__throw_bad_castv
.L1860:
	call	_ZSt16__throw_bad_castv
.LEHE67:
.L1676:
	movq	%rax, %rbp
	jmp	.L1643
.L1678:
	movq	%rax, %rbp
	jmp	.L1517
.L1677:
	movq	%rax, %rbp
	jmp	.L1512
	.section	.gcc_except_table
.LLSDA2071:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2071-.LLSDACSB2071
.LLSDACSB2071:
	.uleb128 .LEHB64-.LFB2071
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1677-.LFB2071
	.uleb128 0
	.uleb128 .LEHB65-.LFB2071
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1678-.LFB2071
	.uleb128 0
	.uleb128 .LEHB66-.LFB2071
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1676-.LFB2071
	.uleb128 0
	.uleb128 .LEHB67-.LFB2071
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1676-.LFB2071
	.uleb128 0
.LLSDACSE2071:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2071
	.type	_Z12testAdditionv.cold.62, @function
_Z12testAdditionv.cold.62:
.LFSB2071:
.L1643:
	.cfi_def_cfa_offset 448
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	360(%rsp), %rax
	testq	%rax, %rax
	je	.L1524
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
	jmp	.L1524
.L1517:
	movq	128(%rsp), %rax
	testq	%rax, %rax
	je	.L1518
	leaq	112(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L1518:
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.L1514
	leaq	80(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L1514:
	movq	360(%rsp), %rax
	testq	%rax, %rax
	je	.L1524
	leaq	40(%rbx), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1524:
	movq	280(%rsp), %rax
	testq	%rax, %rax
	je	.L1645
	leaq	264(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L1645:
	movq	200(%rsp), %rax
	testq	%rax, %rax
	je	.L1646
	leaq	144(%rsp), %rbx
	movl	$3, %edx
	leaq	40(%rbx), %rdi
	movq	%rdi, %rsi
	call	*%rax
.L1646:
	movq	%rbp, %rdi
.LEHB68:
	call	_Unwind_Resume
.LEHE68:
.L1512:
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.L1514
	leaq	80(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L1514
	.cfi_endproc
.LFE2071:
	.section	.gcc_except_table
.LLSDAC2071:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2071-.LLSDACSBC2071
.LLSDACSBC2071:
	.uleb128 .LEHB68-.LCOLDB27
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
.LLSDACSEC2071:
	.section	.text.unlikely
	.text
	.size	_Z12testAdditionv, .-_Z12testAdditionv
	.section	.text.unlikely
	.size	_Z12testAdditionv.cold.62, .-_Z12testAdditionv.cold.62
.LCOLDE27:
	.text
.LHOTE27:
	.section	.text._ZNK5ValueIddE5printEv,"axG",@progbits,_ZNK5ValueIddE5printEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNK5ValueIddE5printEv
	.type	_ZNK5ValueIddE5printEv, @function
_ZNK5ValueIddE5printEv:
.LFB2403:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2403
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$728, %rsp
	.cfi_def_cfa_offset 752
	cmpq	$0, 16(%rdi)
	leaq	32(%rsp), %rsi
	movb	$0, 32(%rsp)
	movq	%rsi, 16(%rsp)
	movq	$0, 24(%rsp)
	je	.L1999
	movsd	40(%rdi), %xmm0
	movq	%rdi, %rbx
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	624(%rsp), %rdi
	movl	$1, %eax
.LEHB69:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE69:
	movsd	24(%rbx), %xmm0
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	528(%rsp), %rdi
	movl	$1, %eax
.LEHB70:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE70:
	movl	$1, %r8d
	movl	$.LC8, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	528(%rsp), %rdi
.LEHB71:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE71:
	leaq	576(%rsp), %rdx
	movq	%rdx, 560(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2042
	movq	%rcx, 560(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 576(%rsp)
.L1864:
	movq	8(%rax), %rcx
	movq	%rcx, 568(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movabsq	$9223372036854775807, %rax
	subq	568(%rsp), %rax
	cmpq	$1, %rax
	jbe	.L2043
	movl	$2, %edx
	movl	$.LC10, %esi
	leaq	560(%rsp), %rdi
.LEHB72:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE72:
	leaq	608(%rsp), %rdx
	movq	%rdx, 592(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2044
	movq	%rcx, 592(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 608(%rsp)
.L1867:
	movq	8(%rax), %rcx
	leaq	608(%rsp), %rsi
	movq	%rcx, 600(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	600(%rsp), %r8
	movq	632(%rsp), %rdx
	movq	592(%rsp), %rcx
	leaq	(%r8,%rdx), %rax
	cmpq	%rsi, %rcx
	je	.L2000
	movq	608(%rsp), %rdi
.L1868:
	movq	624(%rsp), %rsi
	cmpq	%rdi, %rax
	jbe	.L1869
	leaq	640(%rsp), %rdi
	cmpq	%rdi, %rsi
	je	.L2001
	movq	640(%rsp), %rdi
.L1870:
	cmpq	%rdi, %rax
	jbe	.L2045
.L1869:
	leaq	592(%rsp), %rdi
.LEHB73:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE73:
.L1871:
	leaq	672(%rsp), %rdx
	movq	%rdx, 656(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2046
	movq	%rcx, 656(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 672(%rsp)
.L1873:
	movq	8(%rax), %rcx
	movq	%rcx, 664(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 664(%rsp)
	je	.L2047
	movl	$1, %edx
	movl	$.LC11, %esi
	leaq	656(%rsp), %rdi
.LEHB74:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE74:
	leaq	704(%rsp), %rdx
	movq	%rdx, 688(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2048
	movq	%rcx, 688(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 704(%rsp)
.L1876:
	movq	8(%rax), %rcx
	movq	%rcx, 696(%rsp)
	movq	%rdx, (%rax)
	movq	16(%rsp), %rdi
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	688(%rsp), %rsi
	leaq	704(%rsp), %rax
	cmpq	%rax, %rsi
	je	.L2049
	leaq	32(%rsp), %rax
	movq	704(%rsp), %rdx
	movq	696(%rsp), %xmm0
	cmpq	%rax, %rdi
	je	.L2050
	movq	%rdx, 8(%rsp)
	movq	32(%rsp), %rax
	movq	%rsi, 16(%rsp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 24(%rsp)
	testq	%rdi, %rdi
	je	.L1882
	movq	%rdi, 688(%rsp)
	movq	%rax, 704(%rsp)
.L1880:
	movq	$0, 696(%rsp)
	leaq	704(%rsp), %rax
	movb	$0, (%rdi)
	movq	688(%rsp), %rdi
	cmpq	%rax, %rdi
	je	.L1883
	call	_ZdlPv
.L1883:
	movq	656(%rsp), %rdi
	leaq	672(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1884
	call	_ZdlPv
.L1884:
	movq	592(%rsp), %rdi
	leaq	608(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1885
	call	_ZdlPv
.L1885:
	movq	560(%rsp), %rdi
	leaq	576(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1886
	call	_ZdlPv
.L1886:
	movq	528(%rsp), %rdi
	leaq	544(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1887
	call	_ZdlPv
.L1887:
	movq	624(%rsp), %rdi
	leaq	640(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1888
	call	_ZdlPv
.L1888:
	cmpb	$0, 32(%rbx)
	jne	.L1889
.L1945:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
.L1862:
	movl	$_ZSt4cout, %edi
.LEHB75:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	movq	24(%rsp), %rbx
	cmpq	%rax, %rdi
	je	.L1861
	call	_ZdlPv
.L1861:
	addq	$728, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2042:
	.cfi_restore_state
	movdqu	16(%rax), %xmm1
	movaps	%xmm1, 576(%rsp)
	jmp	.L1864
	.p2align 4,,10
	.p2align 3
.L1999:
	xorl	%edx, %edx
	jmp	.L1862
	.p2align 4,,10
	.p2align 3
.L1889:
	movq	8(%rbx), %rax
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	624(%rsp), %rdi
	movsd	40(%rax), %xmm0
	movl	$1, %eax
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE75:
	movq	8(%rbx), %rax
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	528(%rsp), %rdi
	movsd	24(%rax), %xmm0
	movl	$1, %eax
.LEHB76:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE76:
	movq	(%rbx), %rax
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	336(%rsp), %rdi
	movsbl	32(%rbx), %ebp
	movsd	40(%rax), %xmm0
	movl	$1, %eax
.LEHB77:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE77:
	movq	(%rbx), %rax
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	240(%rsp), %rdi
	movsd	24(%rax), %xmm0
	movl	$1, %eax
.LEHB78:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE78:
	movsd	40(%rbx), %xmm0
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	112(%rsp), %rdi
	movl	$1, %eax
.LEHB79:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE79:
	movsd	24(%rbx), %xmm0
	movl	$.LC6, %ecx
	movl	$328, %edx
	movl	$vsnprintf, %esi
	leaq	48(%rsp), %rdi
	movl	$1, %eax
.LEHB80:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.53
.LEHE80:
	movabsq	$9223372036854775807, %rax
	subq	56(%rsp), %rax
	cmpq	$1, %rax
	jbe	.L2051
	movl	$2, %edx
	movl	$.LC10, %esi
	leaq	48(%rsp), %rdi
.LEHB81:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE81:
	leaq	96(%rsp), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2052
	movq	%rcx, 80(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 96(%rsp)
.L1892:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	80(%rsp), %rsi
	leaq	144(%rsp), %rdi
	movq	%rcx, 88(%rsp)
	movq	%rdx, (%rax)
	leaq	112(%rsp), %rdx
	movq	$0, 8(%rax)
.LEHB82:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE82:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 152(%rsp)
	je	.L2053
	movl	$1, %edx
	movl	$.LC11, %esi
	leaq	144(%rsp), %rdi
.LEHB83:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE83:
	leaq	192(%rsp), %rdx
	movq	%rdx, 176(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2054
	movq	%rcx, 176(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 192(%rsp)
.L1895:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 184(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movabsq	$9223372036854775807, %rax
	subq	184(%rsp), %rax
	cmpq	$2, %rax
	jbe	.L2055
	movl	$3, %edx
	movl	$.LC12, %esi
	leaq	176(%rsp), %rdi
.LEHB84:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE84:
	leaq	224(%rsp), %rdx
	movq	%rdx, 208(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2056
	movq	%rcx, 208(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 224(%rsp)
.L1898:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	208(%rsp), %rsi
	leaq	272(%rsp), %rdi
	movq	%rcx, 216(%rsp)
	movq	%rdx, (%rax)
	leaq	240(%rsp), %rdx
	movq	$0, 8(%rax)
.LEHB85:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE85:
	movabsq	$9223372036854775807, %rax
	subq	280(%rsp), %rax
	cmpq	$1, %rax
	jbe	.L2057
	movl	$2, %edx
	movl	$.LC10, %esi
	leaq	272(%rsp), %rdi
.LEHB86:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE86:
	leaq	320(%rsp), %rdx
	movq	%rdx, 304(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2058
	movq	%rcx, 304(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 320(%rsp)
.L1901:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	304(%rsp), %rsi
	leaq	368(%rsp), %rdi
	movq	%rcx, 312(%rsp)
	movq	%rdx, (%rax)
	leaq	336(%rsp), %rdx
	movq	$0, 8(%rax)
.LEHB87:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE87:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 376(%rsp)
	je	.L2059
	movl	$1, %edx
	movl	$.LC11, %esi
	leaq	368(%rsp), %rdi
.LEHB88:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE88:
	leaq	416(%rsp), %rdx
	movq	%rdx, 400(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2060
	movq	%rcx, 400(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 416(%rsp)
.L1904:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 408(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 408(%rsp)
	je	.L2061
	movl	$1, %edx
	movl	$.LC8, %esi
	leaq	400(%rsp), %rdi
.LEHB89:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE89:
	leaq	448(%rsp), %rdx
	movq	%rdx, 432(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2062
	movq	%rcx, 432(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 448(%rsp)
.L1907:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movl	%ebp, %r8d
	leaq	432(%rsp), %rdi
	movq	%rcx, 440(%rsp)
	movl	$1, %ecx
	movq	%rdx, (%rax)
	xorl	%edx, %edx
	movq	$0, 8(%rax)
	movq	440(%rsp), %rsi
.LEHB90:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc
.LEHE90:
	leaq	480(%rsp), %rdx
	movq	%rdx, 464(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2063
	movq	%rcx, 464(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 480(%rsp)
.L1909:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 472(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 472(%rsp)
	je	.L2064
	movl	$1, %edx
	movl	$.LC8, %esi
	leaq	464(%rsp), %rdi
.LEHB91:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE91:
	leaq	512(%rsp), %rdx
	movq	%rdx, 496(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2065
	movq	%rcx, 496(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 512(%rsp)
.L1912:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	496(%rsp), %rsi
	leaq	560(%rsp), %rdi
	movq	%rcx, 504(%rsp)
	movq	%rdx, (%rax)
	leaq	528(%rsp), %rdx
	movq	$0, 8(%rax)
.LEHB92:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE92:
	movabsq	$9223372036854775807, %rax
	subq	568(%rsp), %rax
	cmpq	$1, %rax
	jbe	.L2066
	movl	$2, %edx
	movl	$.LC10, %esi
	leaq	560(%rsp), %rdi
.LEHB93:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE93:
	leaq	608(%rsp), %rdx
	movq	%rdx, 592(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2067
	movq	%rcx, 592(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 608(%rsp)
.L1915:
	movq	8(%rax), %rcx
	leaq	592(%rsp), %rsi
	leaq	656(%rsp), %rdi
	movq	%rcx, 600(%rsp)
	movq	%rdx, (%rax)
	leaq	624(%rsp), %rdx
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
.LEHB94:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE94:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 664(%rsp)
	je	.L2068
	movl	$1, %edx
	movl	$.LC11, %esi
	leaq	656(%rsp), %rdi
.LEHB95:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE95:
	leaq	704(%rsp), %rdx
	movq	%rdx, 688(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L2069
	movq	%rcx, 688(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 704(%rsp)
.L1918:
	movq	8(%rax), %rcx
	movq	%rcx, 696(%rsp)
	movq	%rdx, (%rax)
	movq	16(%rsp), %rdi
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	688(%rsp), %rsi
	leaq	704(%rsp), %rax
	cmpq	%rax, %rsi
	je	.L2070
	leaq	32(%rsp), %rax
	movq	704(%rsp), %rdx
	movq	696(%rsp), %xmm0
	cmpq	%rax, %rdi
	je	.L2071
	movq	%rdx, 8(%rsp)
	movq	32(%rsp), %rax
	movq	%rsi, 16(%rsp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 24(%rsp)
	testq	%rdi, %rdi
	je	.L1924
	movq	%rdi, 688(%rsp)
	movq	%rax, 704(%rsp)
.L1922:
	movq	$0, 696(%rsp)
	leaq	704(%rsp), %rax
	movb	$0, (%rdi)
	movq	688(%rsp), %rdi
	cmpq	%rax, %rdi
	je	.L1925
	call	_ZdlPv
.L1925:
	movq	656(%rsp), %rdi
	leaq	672(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1926
	call	_ZdlPv
.L1926:
	movq	592(%rsp), %rdi
	leaq	608(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1927
	call	_ZdlPv
.L1927:
	movq	560(%rsp), %rdi
	leaq	576(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1928
	call	_ZdlPv
.L1928:
	movq	496(%rsp), %rdi
	leaq	512(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1929
	call	_ZdlPv
.L1929:
	movq	464(%rsp), %rdi
	leaq	480(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1930
	call	_ZdlPv
.L1930:
	movq	432(%rsp), %rdi
	leaq	448(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1931
	call	_ZdlPv
.L1931:
	movq	400(%rsp), %rdi
	leaq	416(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1932
	call	_ZdlPv
.L1932:
	movq	368(%rsp), %rdi
	leaq	384(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1933
	call	_ZdlPv
.L1933:
	movq	304(%rsp), %rdi
	leaq	320(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1934
	call	_ZdlPv
.L1934:
	movq	272(%rsp), %rdi
	leaq	288(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1935
	call	_ZdlPv
.L1935:
	movq	208(%rsp), %rdi
	leaq	224(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1936
	call	_ZdlPv
.L1936:
	movq	176(%rsp), %rdi
	leaq	192(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1937
	call	_ZdlPv
.L1937:
	movq	144(%rsp), %rdi
	leaq	160(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1938
	call	_ZdlPv
.L1938:
	movq	80(%rsp), %rdi
	leaq	96(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1939
	call	_ZdlPv
.L1939:
	movq	48(%rsp), %rdi
	leaq	64(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1940
	call	_ZdlPv
.L1940:
	movq	112(%rsp), %rdi
	leaq	128(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1941
	call	_ZdlPv
.L1941:
	movq	240(%rsp), %rdi
	leaq	256(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1942
	call	_ZdlPv
.L1942:
	movq	336(%rsp), %rdi
	leaq	352(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1943
	call	_ZdlPv
.L1943:
	movq	528(%rsp), %rdi
	leaq	544(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1944
	call	_ZdlPv
.L1944:
	movq	624(%rsp), %rdi
	leaq	640(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1945
	call	_ZdlPv
	jmp	.L1945
	.p2align 4,,10
	.p2align 3
.L2046:
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 672(%rsp)
	jmp	.L1873
	.p2align 4,,10
	.p2align 3
.L2044:
	movdqu	16(%rax), %xmm2
	movaps	%xmm2, 608(%rsp)
	jmp	.L1867
	.p2align 4,,10
	.p2align 3
.L2049:
	movq	696(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1878
	cmpq	$1, %rdx
	je	.L2072
	call	memcpy
	movq	696(%rsp), %rdx
	movq	16(%rsp), %rdi
.L1878:
	movq	%rdx, 24(%rsp)
	movb	$0, (%rdi,%rdx)
	movq	688(%rsp), %rdi
	jmp	.L1880
	.p2align 4,,10
	.p2align 3
.L2048:
	movdqu	16(%rax), %xmm4
	movaps	%xmm4, 704(%rsp)
	jmp	.L1876
	.p2align 4,,10
	.p2align 3
.L2052:
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 96(%rsp)
	jmp	.L1892
	.p2align 4,,10
	.p2align 3
.L2045:
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	624(%rsp), %rdi
.LEHB96:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE96:
	jmp	.L1871
	.p2align 4,,10
	.p2align 3
.L2050:
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 24(%rsp)
.L1882:
	leaq	704(%rsp), %rdi
	movq	%rdi, 688(%rsp)
	jmp	.L1880
	.p2align 4,,10
	.p2align 3
.L2000:
	movl	$15, %edi
	jmp	.L1868
	.p2align 4,,10
	.p2align 3
.L2001:
	movl	$15, %edi
	jmp	.L1870
	.p2align 4,,10
	.p2align 3
.L2056:
	movdqu	16(%rax), %xmm7
	movaps	%xmm7, 224(%rsp)
	jmp	.L1898
	.p2align 4,,10
	.p2align 3
.L2054:
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 192(%rsp)
	jmp	.L1895
	.p2align 4,,10
	.p2align 3
.L2065:
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 512(%rsp)
	jmp	.L1912
	.p2align 4,,10
	.p2align 3
.L2063:
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 480(%rsp)
	jmp	.L1909
	.p2align 4,,10
	.p2align 3
.L2062:
	movdqu	16(%rax), %xmm7
	movaps	%xmm7, 448(%rsp)
	jmp	.L1907
	.p2align 4,,10
	.p2align 3
.L2060:
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 416(%rsp)
	jmp	.L1904
	.p2align 4,,10
	.p2align 3
.L2058:
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 320(%rsp)
	jmp	.L1901
	.p2align 4,,10
	.p2align 3
.L2067:
	movdqu	16(%rax), %xmm7
	movaps	%xmm7, 608(%rsp)
	jmp	.L1915
	.p2align 4,,10
	.p2align 3
.L2070:
	movq	696(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1920
	cmpq	$1, %rdx
	je	.L2073
	call	memcpy
	movq	696(%rsp), %rdx
	movq	16(%rsp), %rdi
.L1920:
	movq	%rdx, 24(%rsp)
	movb	$0, (%rdi,%rdx)
	movq	688(%rsp), %rdi
	jmp	.L1922
	.p2align 4,,10
	.p2align 3
.L2069:
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 704(%rsp)
	jmp	.L1918
	.p2align 4,,10
	.p2align 3
.L2071:
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 24(%rsp)
.L1924:
	leaq	704(%rsp), %rdi
	movq	%rdi, 688(%rsp)
	jmp	.L1922
	.p2align 4,,10
	.p2align 3
.L2072:
	movzbl	704(%rsp), %eax
	movb	%al, (%rdi)
	movq	696(%rsp), %rdx
	movq	16(%rsp), %rdi
	jmp	.L1878
	.p2align 4,,10
	.p2align 3
.L2073:
	movzbl	704(%rsp), %eax
	movb	%al, (%rdi)
	movq	696(%rsp), %rdx
	movq	16(%rsp), %rdi
	jmp	.L1920
.L2047:
	movl	$.LC9, %edi
.LEHB97:
	call	_ZSt20__throw_length_errorPKc
.LEHE97:
.L2043:
	movl	$.LC9, %edi
.LEHB98:
	call	_ZSt20__throw_length_errorPKc
.LEHE98:
.L2051:
	movl	$.LC9, %edi
.LEHB99:
	call	_ZSt20__throw_length_errorPKc
.LEHE99:
.L2068:
	movl	$.LC9, %edi
.LEHB100:
	call	_ZSt20__throw_length_errorPKc
.LEHE100:
.L2066:
	movl	$.LC9, %edi
.LEHB101:
	call	_ZSt20__throw_length_errorPKc
.LEHE101:
.L2064:
	movl	$.LC9, %edi
.LEHB102:
	call	_ZSt20__throw_length_errorPKc
.LEHE102:
.L2061:
	movl	$.LC9, %edi
.LEHB103:
	call	_ZSt20__throw_length_errorPKc
.LEHE103:
.L2059:
	movl	$.LC9, %edi
.LEHB104:
	call	_ZSt20__throw_length_errorPKc
.LEHE104:
.L2057:
	movl	$.LC9, %edi
.LEHB105:
	call	_ZSt20__throw_length_errorPKc
.LEHE105:
.L2055:
	movl	$.LC9, %edi
.LEHB106:
	call	_ZSt20__throw_length_errorPKc
.LEHE106:
.L2053:
	movl	$.LC9, %edi
.LEHB107:
	call	_ZSt20__throw_length_errorPKc
.LEHE107:
.L2016:
	movq	%rax, %rbx
	jmp	.L1980
.L2015:
	movq	%rax, %rbx
	jmp	.L1982
.L1958:
	movq	656(%rsp), %rdi
	leaq	672(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1960
	call	_ZdlPv
.L1960:
	movq	592(%rsp), %rdi
	leaq	608(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1962
	call	_ZdlPv
.L1962:
	movq	560(%rsp), %rdi
	leaq	576(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1964
	call	_ZdlPv
.L1964:
	movq	496(%rsp), %rdi
	leaq	512(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1966
	call	_ZdlPv
.L1966:
	movq	464(%rsp), %rdi
	leaq	480(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1968
	call	_ZdlPv
.L1968:
	movq	432(%rsp), %rdi
	leaq	448(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1970
	call	_ZdlPv
.L1970:
	movq	400(%rsp), %rdi
	leaq	416(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1972
	call	_ZdlPv
.L1972:
	movq	368(%rsp), %rdi
	leaq	384(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1974
	call	_ZdlPv
.L1974:
	movq	304(%rsp), %rdi
	leaq	320(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1976
	call	_ZdlPv
.L1976:
	movq	272(%rsp), %rdi
	leaq	288(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1978
	call	_ZdlPv
.L1978:
	movq	208(%rsp), %rdi
	leaq	224(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1980
	call	_ZdlPv
.L1980:
	movq	176(%rsp), %rdi
	leaq	192(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1982
	call	_ZdlPv
.L1982:
	movq	144(%rsp), %rdi
	leaq	160(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1984
	call	_ZdlPv
.L1984:
	movq	80(%rsp), %rdi
	leaq	96(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1986
	call	_ZdlPv
.L1986:
	movq	48(%rsp), %rdi
	leaq	64(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1988
	call	_ZdlPv
.L1988:
	movq	112(%rsp), %rdi
	leaq	128(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1990
	call	_ZdlPv
.L1990:
	movq	240(%rsp), %rdi
	leaq	256(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1992
	call	_ZdlPv
.L1992:
	movq	336(%rsp), %rdi
	leaq	352(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1994
	call	_ZdlPv
.L1994:
	movq	528(%rsp), %rdi
	leaq	544(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1996
	call	_ZdlPv
.L1996:
	movq	624(%rsp), %rdi
	leaq	640(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1957
.L2041:
	call	_ZdlPv
.L1957:
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L1998
	call	_ZdlPv
.L1998:
	movq	%rbx, %rdi
.LEHB108:
	call	_Unwind_Resume
.LEHE108:
.L2024:
	movq	%rax, %rbx
	jmp	.L1964
.L2023:
	movq	%rax, %rbx
	jmp	.L1966
.L2022:
	movq	%rax, %rbx
	jmp	.L1968
.L2021:
	movq	%rax, %rbx
	jmp	.L1970
.L2020:
	movq	%rax, %rbx
	jmp	.L1972
.L2017:
	movq	%rax, %rbx
	jmp	.L1978
.L2019:
	movq	%rax, %rbx
	jmp	.L1974
.L2018:
	movq	%rax, %rbx
	jmp	.L1976
.L2026:
	movq	%rax, %rbx
	jmp	.L1960
.L2025:
	movq	%rax, %rbx
	jmp	.L1962
.L2027:
	movq	%rax, %rbx
	jmp	.L1958
.L2007:
	movq	%rax, %rbx
.L1947:
	movq	656(%rsp), %rdi
	leaq	672(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1949
	call	_ZdlPv
.L1949:
	movq	592(%rsp), %rdi
	leaq	608(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1951
	call	_ZdlPv
.L1951:
	movq	560(%rsp), %rdi
	leaq	576(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1953
	call	_ZdlPv
.L1953:
	movq	528(%rsp), %rdi
	leaq	544(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L1955
	call	_ZdlPv
.L1955:
	movq	624(%rsp), %rdi
	leaq	640(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.L2041
	jmp	.L1957
.L2002:
	movq	%rax, %rbx
	jmp	.L1957
.L2010:
	movq	%rax, %rbx
	jmp	.L1992
.L2011:
	movq	%rax, %rbx
	jmp	.L1990
.L2012:
	movq	%rax, %rbx
	jmp	.L1988
.L2014:
	movq	%rax, %rbx
	jmp	.L1984
.L2008:
	movq	%rax, %rbx
	jmp	.L1996
.L2009:
	movq	%rax, %rbx
	jmp	.L1994
.L2005:
	movq	%rax, %rbx
	jmp	.L1951
.L2006:
	movq	%rax, %rbx
	jmp	.L1949
.L2004:
	movq	%rax, %rbx
	jmp	.L1953
.L2003:
	movq	%rax, %rbx
	jmp	.L1955
.L2013:
	movq	%rax, %rbx
	jmp	.L1986
	.cfi_endproc
.LFE2403:
	.section	.gcc_except_table
.LLSDA2403:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2403-.LLSDACSB2403
.LLSDACSB2403:
	.uleb128 .LEHB69-.LFB2403
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L2002-.LFB2403
	.uleb128 0
	.uleb128 .LEHB70-.LFB2403
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L2003-.LFB2403
	.uleb128 0
	.uleb128 .LEHB71-.LFB2403
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L2004-.LFB2403
	.uleb128 0
	.uleb128 .LEHB72-.LFB2403
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L2005-.LFB2403
	.uleb128 0
	.uleb128 .LEHB73-.LFB2403
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L2006-.LFB2403
	.uleb128 0
	.uleb128 .LEHB74-.LFB2403
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L2007-.LFB2403
	.uleb128 0
	.uleb128 .LEHB75-.LFB2403
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L2002-.LFB2403
	.uleb128 0
	.uleb128 .LEHB76-.LFB2403
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L2008-.LFB2403
	.uleb128 0
	.uleb128 .LEHB77-.LFB2403
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L2009-.LFB2403
	.uleb128 0
	.uleb128 .LEHB78-.LFB2403
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L2010-.LFB2403
	.uleb128 0
	.uleb128 .LEHB79-.LFB2403
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L2011-.LFB2403
	.uleb128 0
	.uleb128 .LEHB80-.LFB2403
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L2012-.LFB2403
	.uleb128 0
	.uleb128 .LEHB81-.LFB2403
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L2013-.LFB2403
	.uleb128 0
	.uleb128 .LEHB82-.LFB2403
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L2014-.LFB2403
	.uleb128 0
	.uleb128 .LEHB83-.LFB2403
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L2015-.LFB2403
	.uleb128 0
	.uleb128 .LEHB84-.LFB2403
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L2016-.LFB2403
	.uleb128 0
	.uleb128 .LEHB85-.LFB2403
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L2017-.LFB2403
	.uleb128 0
	.uleb128 .LEHB86-.LFB2403
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L2018-.LFB2403
	.uleb128 0
	.uleb128 .LEHB87-.LFB2403
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L2019-.LFB2403
	.uleb128 0
	.uleb128 .LEHB88-.LFB2403
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L2020-.LFB2403
	.uleb128 0
	.uleb128 .LEHB89-.LFB2403
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L2021-.LFB2403
	.uleb128 0
	.uleb128 .LEHB90-.LFB2403
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L2022-.LFB2403
	.uleb128 0
	.uleb128 .LEHB91-.LFB2403
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L2023-.LFB2403
	.uleb128 0
	.uleb128 .LEHB92-.LFB2403
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L2024-.LFB2403
	.uleb128 0
	.uleb128 .LEHB93-.LFB2403
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L2025-.LFB2403
	.uleb128 0
	.uleb128 .LEHB94-.LFB2403
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L2026-.LFB2403
	.uleb128 0
	.uleb128 .LEHB95-.LFB2403
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L2027-.LFB2403
	.uleb128 0
	.uleb128 .LEHB96-.LFB2403
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L2006-.LFB2403
	.uleb128 0
	.uleb128 .LEHB97-.LFB2403
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L2007-.LFB2403
	.uleb128 0
	.uleb128 .LEHB98-.LFB2403
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L2005-.LFB2403
	.uleb128 0
	.uleb128 .LEHB99-.LFB2403
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L2013-.LFB2403
	.uleb128 0
	.uleb128 .LEHB100-.LFB2403
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L2027-.LFB2403
	.uleb128 0
	.uleb128 .LEHB101-.LFB2403
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L2025-.LFB2403
	.uleb128 0
	.uleb128 .LEHB102-.LFB2403
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L2023-.LFB2403
	.uleb128 0
	.uleb128 .LEHB103-.LFB2403
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L2021-.LFB2403
	.uleb128 0
	.uleb128 .LEHB104-.LFB2403
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L2020-.LFB2403
	.uleb128 0
	.uleb128 .LEHB105-.LFB2403
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L2018-.LFB2403
	.uleb128 0
	.uleb128 .LEHB106-.LFB2403
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L2016-.LFB2403
	.uleb128 0
	.uleb128 .LEHB107-.LFB2403
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L2015-.LFB2403
	.uleb128 0
	.uleb128 .LEHB108-.LFB2403
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
.LLSDACSE2403:
	.section	.text._ZNK5ValueIddE5printEv,"axG",@progbits,_ZNK5ValueIddE5printEv,comdat
	.size	_ZNK5ValueIddE5printEv, .-_ZNK5ValueIddE5printEv
	.section	.text._ZNK5ValueIddE7displayEi,"axG",@progbits,_ZNK5ValueIddE7displayEi,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNK5ValueIddE7displayEi
	.type	_ZNK5ValueIddE7displayEi, @function
_ZNK5ValueIddE7displayEi:
.LFB2302:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rdi), %rax
	movq	8(%rdi), %r14
	movq	%rax, 8(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L2075
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L2087
	cmpb	$0, 56(%r12)
	je	.L2077
	movsbl	67(%r12), %esi
.L2078:
	movl	%ebp, %r12d
	movl	$_ZSt4cout, %edi
	xorl	%r15d, %r15d
	call	_ZNSo3putEc
	imull	%r13d, %r12d
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	testl	%r12d, %r12d
	jg	.L2079
	jmp	.L2081
	.p2align 4,,10
	.p2align 3
.L2080:
	addl	$1, %r15d
	cmpl	%r12d, %r15d
	je	.L2081
.L2079:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r15d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2080
	movl	$1, %edx
	leaq	31(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	addl	$1, %r15d
	movb	$124, 31(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpl	%r12d, %r15d
	jne	.L2079
.L2081:
	movq	8(%rsp), %rdi
	leal	1(%r13), %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%rbx), %rax
.L2075:
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L2082
	cmpq	%rax, %rdx
	je	.L2082
	movl	%ebp, %r12d
	xorl	%ebx, %ebx
	imull	%r13d, %r12d
	testl	%r12d, %r12d
	jg	.L2083
	jmp	.L2086
	.p2align 4,,10
	.p2align 3
.L2085:
	addl	$1, %ebx
	cmpl	%r12d, %ebx
	je	.L2086
.L2083:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2085
	movl	$1, %edx
	leaq	31(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	addl	$1, %ebx
	movb	$124, 31(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpl	%r12d, %ebx
	jne	.L2083
.L2086:
	leal	1(%r13), %esi
	movq	%r14, %rdi
	call	_ZNK5ValueIddE7displayEi
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2077:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2078
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2078
	.p2align 4,,10
	.p2align 3
.L2082:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L2087
	cmpb	$0, 56(%rbx)
	je	.L2088
	movsbl	67(%rbx), %esi
.L2089:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2088:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2089
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2089
.L2087:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE2302:
	.size	_ZNK5ValueIddE7displayEi, .-_ZNK5ValueIddE7displayEi
	.section	.rodata.str1.1
.LC34:
	.string	"Test Tanh passed"
	.section	.text.unlikely
.LCOLDB38:
	.text
.LHOTB38:
	.p2align 4,,15
	.globl	_Z8testTanhv
	.type	_Z8testTanhv, @function
_Z8testTanhv:
.LFB2083:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2083
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	movl	$24, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$888, %rsp
	.cfi_def_cfa_offset 944
	leaq	240(%rsp), %rax
	movaps	%xmm0, 240(%rsp)
	leaq	800(%rsp), %r15
	movq	%rax, (%rsp)
	leaq	320(%rsp), %rax
	movq	(%rsp), %xmm3
	movq	%rax, (%rsp)
	movq	.LC28(%rip), %rax
	movaps	%xmm0, 320(%rsp)
	movq	%rax, 264(%rsp)
	movq	.LC29(%rip), %rax
	movaps	%xmm0, 400(%rsp)
	movsd	.LC31(%rip), %xmm0
	movhps	(%rsp), %xmm3
	movq	%rax, 344(%rsp)
	movq	.LC30(%rip), %rax
	movq	%r15, 256(%rsp)
	movq	%rax, 424(%rsp)
	leaq	120(%rsp), %rax
	movb	$0, 272(%rsp)
	movq	$0, 304(%rsp)
	movq	%r15, 336(%rsp)
	movb	$0, 352(%rsp)
	movq	$0, 384(%rsp)
	movq	%r15, 416(%rsp)
	movb	$0, 432(%rsp)
	movq	$0, 464(%rsp)
	movsd	%xmm0, 120(%rsp)
	movaps	%xmm3, (%rsp)
	movaps	%xmm3, 480(%rsp)
	movq	%rax, 496(%rsp)
	movsd	%xmm0, 504(%rsp)
	movb	$43, 512(%rsp)
	movq	$0, 544(%rsp)
	movq	$0, 816(%rsp)
.LEHB109:
	call	_Znwm
.LEHE109:
	leaq	480(%rsp), %rcx
	movdqa	(%rsp), %xmm3
	movl	$2, %edx
	movq	$_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, 16(%rsp)
	movq	16(%rsp), %xmm0
	movq	%rcx, 16(%rax)
	movq	%r15, %rsi
	leaq	144(%rsp), %rbx
	movups	%xmm3, (%rax)
	movq	%rbx, %rdi
	movdqa	%xmm0, %xmm4
	movq	%rax, 800(%rsp)
	movhps	.LC35(%rip), %xmm4
	movq	$0, 160(%rsp)
	movaps	%xmm4, 16(%rsp)
	movaps	%xmm4, 816(%rsp)
.LEHB110:
	call	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE110:
	movq	552(%rsp), %rdx
	movq	544(%rsp), %rcx
	movdqa	144(%rsp), %xmm0
	movq	816(%rsp), %rax
	movdqa	528(%rsp), %xmm7
	movq	%rdx, 168(%rsp)
	movq	824(%rsp), %rdx
	movaps	%xmm0, 528(%rsp)
	movaps	%xmm7, 144(%rsp)
	movq	%rcx, 160(%rsp)
	movq	%rax, 544(%rsp)
	movq	%rdx, 552(%rsp)
	testq	%rcx, %rcx
	je	.L2117
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	816(%rsp), %rax
.L2117:
	testq	%rax, %rax
	je	.L2122
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L2122:
	leaq	480(%rsp), %rax
	movl	$24, %edi
	movsd	504(%rsp), %xmm0
	addsd	424(%rsp), %xmm0
	movq	%rax, (%rsp)
	leaq	400(%rsp), %rax
	movq	(%rsp), %xmm5
	movq	%rax, (%rsp)
	leaq	128(%rsp), %rax
	movsd	%xmm0, 128(%rsp)
	movq	%rax, 576(%rsp)
	movhps	(%rsp), %xmm5
	movsd	%xmm0, 584(%rsp)
	movaps	%xmm5, (%rsp)
	movaps	%xmm5, 560(%rsp)
	movb	$43, 592(%rsp)
	movq	$0, 624(%rsp)
	movq	$0, 816(%rsp)
.LEHB111:
	call	_Znwm
.LEHE111:
	leaq	560(%rsp), %rcx
	movdqa	(%rsp), %xmm5
	movl	$2, %edx
	movq	%r15, %rsi
	movq	$_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, (%rsp)
	movq	(%rsp), %xmm0
	leaq	176(%rsp), %rdi
	movq	%rcx, 16(%rax)
	movhps	.LC36(%rip), %xmm0
	movups	%xmm5, (%rax)
	movq	%rax, 800(%rsp)
	movaps	%xmm0, 816(%rsp)
	movq	$0, 192(%rsp)
.LEHB112:
	call	_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE112:
	movq	632(%rsp), %rdx
	movq	624(%rsp), %rcx
	movdqa	176(%rsp), %xmm0
	movq	816(%rsp), %rax
	movdqa	608(%rsp), %xmm7
	movq	%rdx, 200(%rsp)
	movq	824(%rsp), %rdx
	movaps	%xmm0, 608(%rsp)
	movaps	%xmm7, 176(%rsp)
	movq	%rcx, 192(%rsp)
	movq	%rax, 624(%rsp)
	movq	%rdx, 632(%rsp)
	testq	%rcx, %rcx
	je	.L2131
	leaq	176(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	816(%rsp), %rax
.L2131:
	testq	%rax, %rax
	je	.L2136
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L2136:
	pxor	%xmm0, %xmm0
	leaq	560(%rsp), %rax
	movl	$24, %edi
	movq	%r15, 656(%rsp)
	movaps	%xmm0, 640(%rsp)
	movsd	.LC32(%rip), %xmm0
	movq	%rax, (%rsp)
	leaq	640(%rsp), %rax
	movq	(%rsp), %xmm6
	movsd	%xmm0, 664(%rsp)
	mulsd	584(%rsp), %xmm0
	movq	%rax, (%rsp)
	leaq	136(%rsp), %rax
	movb	$0, 672(%rsp)
	movq	$0, 704(%rsp)
	movhps	(%rsp), %xmm6
	movq	%rax, 736(%rsp)
	movsd	%xmm0, 136(%rsp)
	movaps	%xmm6, (%rsp)
	movaps	%xmm6, 720(%rsp)
	movsd	%xmm0, 744(%rsp)
	movb	$43, 752(%rsp)
	movq	$0, 784(%rsp)
	movq	$0, 192(%rsp)
.LEHB113:
	call	_Znwm
.LEHE113:
	movdqa	(%rsp), %xmm6
	movdqa	16(%rsp), %xmm7
	leaq	720(%rsp), %rcx
	movl	$2, %edx
	movq	%rcx, 16(%rax)
	leaq	176(%rsp), %rsi
	leaq	208(%rsp), %rdi
	movups	%xmm6, (%rax)
	movq	%rax, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
	movq	$0, 224(%rsp)
.LEHB114:
	call	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE114:
	movq	792(%rsp), %rdx
	movq	784(%rsp), %rcx
	movdqa	208(%rsp), %xmm0
	movq	192(%rsp), %rax
	movdqa	768(%rsp), %xmm7
	movq	%rdx, 232(%rsp)
	movq	200(%rsp), %rdx
	movaps	%xmm0, 768(%rsp)
	movaps	%xmm7, 208(%rsp)
	movq	%rcx, 224(%rsp)
	movq	%rax, 784(%rsp)
	movq	%rdx, 792(%rsp)
	testq	%rcx, %rcx
	je	.L2145
	leaq	208(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	192(%rsp), %rax
.L2145:
	testq	%rax, %rax
	je	.L2150
	leaq	176(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L2150:
	movsd	744(%rsp), %xmm0
	movsd	%xmm0, 144(%rsp)
	call	exp
	movsd	%xmm0, (%rsp)
	movsd	144(%rsp), %xmm0
	xorpd	.LC33(%rip), %xmm0
	call	exp
	movsd	(%rsp), %xmm2
	leaq	720(%rsp), %rax
	movl	$2, %edx
	movq	%rax, (%rsp)
	leaq	176(%rsp), %rsi
	leaq	208(%rsp), %rdi
	movapd	%xmm2, %xmm1
	addsd	%xmm0, %xmm2
	movq	%rbx, 816(%rsp)
	subsd	%xmm0, %xmm1
	movb	$116, 832(%rsp)
	movq	$0, 864(%rsp)
	movq	$0, 224(%rsp)
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 144(%rsp)
	movapd	%xmm1, %xmm0
	movq	720(%rsp), %xmm1
	movsd	%xmm0, 824(%rsp)
	movq	(%rsp), %xmm0
	movq	%r15, (%rsp)
	punpcklqdq	%xmm1, %xmm1
	movaps	%xmm1, 800(%rsp)
	movhps	(%rsp), %xmm0
	movq	$_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, (%rsp)
	movaps	%xmm0, 176(%rsp)
	movq	(%rsp), %xmm0
	movhps	.LC37(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	call	_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	movq	872(%rsp), %rdx
	movdqa	208(%rsp), %xmm0
	movq	864(%rsp), %rcx
	movq	192(%rsp), %rax
	movdqa	848(%rsp), %xmm2
	movq	%rdx, 232(%rsp)
	movq	200(%rsp), %rdx
	movaps	%xmm0, 848(%rsp)
	movaps	%xmm2, 208(%rsp)
	movq	%rcx, 224(%rsp)
	movq	%rax, 864(%rsp)
	movq	%rdx, 872(%rsp)
	testq	%rcx, %rcx
	je	.L2152
	leaq	208(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	192(%rsp), %rax
.L2152:
	testq	%rax, %rax
	je	.L2155
	leaq	176(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L2155:
	movq	808(%rsp), %rax
	movq	%r15, %rdi
	movq	800(%rsp), %r13
	movq	%rax, 16(%rsp)
.LEHB115:
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	800(%rsp), %rax
	testq	%rax, %rax
	je	.L2156
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2991
	cmpb	$0, 56(%rbp)
	je	.L2158
	movsbl	67(%rbp), %esi
.L2159:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	jg	.L2160
	jmp	.L2163
	.p2align 4,,10
	.p2align 3
.L2162:
	addl	$1, %ebp
	cmpl	%ebp, %ebx
	je	.L2163
.L2160:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L2162
	movl	$1, %edx
	leaq	84(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 84(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %ebx
	jne	.L2160
.L2163:
	movq	8(%r13), %rax
	movq	%r13, %rdi
	movq	0(%r13), %r14
	movq	%rax, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, (%rsp)
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L2164
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2992
	cmpb	$0, 56(%rbp)
	je	.L2166
	movsbl	67(%rbp), %esi
.L2167:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	(%rsp), %eax
	xorl	%ebp, %ebp
	leal	(%rax,%rax), %r12d
	testl	%r12d, %r12d
	jg	.L2168
	jmp	.L2171
	.p2align 4,,10
	.p2align 3
.L2170:
	addl	$1, %ebp
	cmpl	%r12d, %ebp
	je	.L2171
.L2168:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	(%rsp)
	testl	%edx, %edx
	jne	.L2170
	movl	$1, %edx
	leaq	86(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 86(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%r12d, %ebp
	jne	.L2168
.L2171:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 64(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 56(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r12d
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L2172
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2993
	cmpb	$0, 56(%rbp)
	je	.L2174
	movsbl	67(%rbp), %esi
.L2175:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r12,%r12,2), %eax
	xorl	%ebp, %ebp
	movl	%eax, 48(%rsp)
	testl	%eax, %eax
	jg	.L2176
	jmp	.L2179
	.p2align 4,,10
	.p2align 3
.L2178:
	addl	$1, %ebp
	cmpl	48(%rsp), %ebp
	je	.L2179
.L2176:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2178
	movl	$1, %edx
	leaq	88(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 88(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	48(%rsp), %ebp
	jne	.L2176
.L2179:
	movq	64(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%r14), %rax
.L2172:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L2180
	cmpq	%rax, %rdx
	je	.L2180
	leal	(%r12,%r12,2), %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jg	.L2181
	jmp	.L2184
	.p2align 4,,10
	.p2align 3
.L2183:
	addl	$1, %ebp
	cmpl	%r14d, %ebp
	je	.L2184
.L2181:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2183
	movl	$1, %edx
	leaq	89(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 89(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%r14d, %ebp
	jne	.L2181
.L2184:
	movq	56(%rsp), %r14
	movq	(%r14), %rcx
	movq	%r14, %rdi
	movq	%rcx, 64(%rsp)
	movq	8(%r14), %rcx
	movq	%rcx, 48(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r12d
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L2185
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2994
	cmpb	$0, 56(%rbp)
	je	.L2187
	movsbl	67(%rbp), %esi
.L2188:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r12,4), %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jg	.L2189
	jmp	.L2192
	.p2align 4,,10
	.p2align 3
.L2191:
	addl	$1, %ebp
	cmpl	%r14d, %ebp
	je	.L2192
.L2189:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2191
	movl	$1, %edx
	leaq	90(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 90(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2191
	.p2align 4,,10
	.p2align 3
.L2245:
	movq	40(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L2238:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L2246
	cmpq	%rax, %rdx
	jne	.L2995
.L2246:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2996
	.p2align 4,,10
	.p2align 3
.L2273:
	cmpb	$0, 56(%rbp)
	je	.L2274
	movsbl	67(%rbp), %esi
.L2275:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L2907:
	movq	800(%rsp), %rax
.L2156:
	movq	808(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L2276
	cmpq	%rax, %rdx
	je	.L2276
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	jg	.L2277
	jmp	.L2280
	.p2align 4,,10
	.p2align 3
.L2279:
	addl	$1, %ebp
	cmpl	%ebp, %ebx
	je	.L2280
.L2277:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L2279
	movl	$1, %edx
	leaq	85(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 85(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %ebx
	jne	.L2277
.L2280:
	movq	16(%rsp), %rbx
	movq	8(%rbx), %rcx
	movq	%rbx, %rdi
	movq	(%rbx), %r13
	movq	%rcx, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r14d
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L2281
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L2997
	cmpb	$0, 56(%rbx)
	je	.L2283
	movsbl	67(%rbx), %esi
.L2284:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r14,%r14), %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jg	.L2285
	jmp	.L2288
	.p2align 4,,10
	.p2align 3
.L2287:
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	je	.L2288
.L2285:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	testl	%edx, %edx
	jne	.L2287
	movl	$1, %edx
	leaq	100(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 100(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	jne	.L2285
.L2288:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 56(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 48(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L2289
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2998
	cmpb	$0, 56(%rbp)
	je	.L2291
	movsbl	67(%rbp), %esi
.L2292:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L2293
	jmp	.L2296
	.p2align 4,,10
	.p2align 3
.L2295:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L2296
.L2293:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L2295
	movl	$1, %edx
	leaq	102(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 102(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L2293
.L2296:
	movq	56(%rsp), %rbp
	movq	0(%rbp), %rcx
	movq	%rbp, %rdi
	movq	%rcx, 72(%rsp)
	movq	8(%rbp), %rcx
	movq	%rcx, 64(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r12d
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L2297
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2999
	cmpb	$0, 56(%rbp)
	je	.L2299
	movsbl	67(%rbp), %esi
.L2300:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r12,4), %eax
	xorl	%ebp, %ebp
	movl	%eax, 40(%rsp)
	testl	%eax, %eax
	jg	.L2301
	jmp	.L2304
	.p2align 4,,10
	.p2align 3
.L2303:
	addl	$1, %ebp
	cmpl	%ebp, 40(%rsp)
	je	.L2304
.L2301:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2303
	movl	$1, %edx
	leaq	104(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 104(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2303
	.p2align 4,,10
	.p2align 3
.L2313:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3000
.L2350:
	cmpb	$0, 56(%rbx)
	je	.L2351
	movsbl	67(%rbx), %esi
.L2352:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L2909:
	movq	16(%rsp), %rax
	movq	(%rax), %rax
.L2281:
	movq	16(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L2353
	cmpq	%rax, %rdx
	je	.L2353
	leal	(%r14,%r14), %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jg	.L2354
	jmp	.L2357
	.p2align 4,,10
	.p2align 3
.L2356:
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	je	.L2357
.L2354:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	testl	%edx, %edx
	jne	.L2356
	movl	$1, %edx
	leaq	101(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 101(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	jne	.L2354
.L2357:
	movq	(%rsp), %rbp
	movq	%rbp, %rdi
	movq	0(%rbp), %r14
	movq	8(%rbp), %r13
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L2358
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3001
	cmpb	$0, 56(%rbp)
	je	.L2360
	movsbl	67(%rbp), %esi
.L2361:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L2362
	jmp	.L2365
	.p2align 4,,10
	.p2align 3
.L2364:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L2365
.L2362:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L2364
	movl	$1, %edx
	leaq	110(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 110(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L2362
.L2365:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 48(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r12d
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L2366
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3002
	cmpb	$0, 56(%rbp)
	je	.L2368
	movsbl	67(%rbp), %esi
.L2369:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r12,4), %eax
	xorl	%ebp, %ebp
	movl	%eax, 16(%rsp)
	testl	%eax, %eax
	jg	.L2370
	jmp	.L2373
	.p2align 4,,10
	.p2align 3
.L2372:
	addl	$1, %ebp
	cmpl	16(%rsp), %ebp
	je	.L2373
.L2370:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2372
	movl	$1, %edx
	leaq	112(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 112(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	16(%rsp), %ebp
	jne	.L2370
.L2373:
	movq	48(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%r14), %rax
.L2366:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L2374
	cmpq	%rax, %rdx
	je	.L2374
	leal	0(,%r12,4), %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jg	.L2375
	jmp	.L2378
	.p2align 4,,10
	.p2align 3
.L2377:
	addl	$1, %ebp
	cmpl	%ebp, %r14d
	je	.L2378
.L2375:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2377
	movl	$1, %edx
	leaq	113(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 113(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r14d
	jne	.L2375
.L2378:
	movq	40(%rsp), %r14
	movq	(%r14), %rcx
	movq	%r14, %rdi
	movq	%rcx, 48(%rsp)
	movq	8(%r14), %rcx
	movq	%rcx, 16(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L2379
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L3003
	cmpb	$0, 56(%r12)
	je	.L2381
	movsbl	67(%r12), %esi
.L2382:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,4), %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jg	.L2383
	jmp	.L2386
	.p2align 4,,10
	.p2align 3
.L2385:
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	je	.L2386
.L2383:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2385
	movl	$1, %edx
	leaq	114(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 114(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2385
	.p2align 4,,10
	.p2align 3
.L2158:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2159
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2159
	.p2align 4,,10
	.p2align 3
.L2353:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3004
.L2441:
	cmpb	$0, 56(%rbx)
	je	.L2442
	movsbl	67(%rbx), %esi
.L2443:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L2426:
	movl	$16, %edx
	movl	$.LC34, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3005
	cmpb	$0, 56(%rbx)
	je	.L2445
	movsbl	67(%rbx), %esi
.L2446:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE115:
	movq	864(%rsp), %rax
	testq	%rax, %rax
	je	.L2447
	leaq	48(%r15), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2447:
	movq	784(%rsp), %rax
	testq	%rax, %rax
	je	.L2448
	leaq	768(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2448:
	movq	704(%rsp), %rax
	testq	%rax, %rax
	je	.L2449
	leaq	688(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2449:
	movq	624(%rsp), %rax
	testq	%rax, %rax
	je	.L2450
	leaq	608(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2450:
	movq	544(%rsp), %rax
	testq	%rax, %rax
	je	.L2451
	leaq	528(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2451:
	movq	464(%rsp), %rax
	testq	%rax, %rax
	je	.L2452
	leaq	448(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2452:
	movq	384(%rsp), %rax
	testq	%rax, %rax
	je	.L2453
	leaq	368(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2453:
	movq	304(%rsp), %rax
	testq	%rax, %rax
	je	.L2111
	leaq	288(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2111:
	addq	$888, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2197:
	.cfi_restore_state
	movq	48(%rsp), %rdi
	movl	$5, %esi
.LEHB116:
	call	_ZNK5ValueIddE7displayEi
.L2905:
	movq	0(%r13), %rax
.L2164:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L2204
	cmpq	%rax, %rdx
	je	.L2204
	movl	(%rsp), %eax
	xorl	%ebp, %ebp
	leal	(%rax,%rax), %r12d
	testl	%r12d, %r12d
	jg	.L2205
	jmp	.L2208
	.p2align 4,,10
	.p2align 3
.L2207:
	addl	$1, %ebp
	cmpl	%r12d, %ebp
	je	.L2208
.L2205:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	(%rsp)
	testl	%edx, %edx
	jne	.L2207
	movl	$1, %edx
	leaq	87(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 87(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%r12d, %ebp
	jne	.L2205
.L2208:
	movq	40(%rsp), %r13
	movq	8(%r13), %rcx
	movq	%r13, %rdi
	movq	0(%r13), %r14
	movq	%rcx, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L2209
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L3006
	cmpb	$0, 56(%r12)
	je	.L2211
	movsbl	67(%r12), %esi
.L2212:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L2213
	jmp	.L2216
	.p2align 4,,10
	.p2align 3
.L2215:
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	je	.L2216
.L2213:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2215
	movl	$1, %edx
	leaq	92(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 92(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r13d, %r12d
	jne	.L2213
.L2216:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 64(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 56(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r13d
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L2217
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L3007
	cmpb	$0, 56(%r12)
	je	.L2219
	movsbl	67(%r12), %esi
.L2220:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r13,4), %eax
	xorl	%r12d, %r12d
	movl	%eax, 48(%rsp)
	testl	%eax, %eax
	jg	.L2221
	jmp	.L2224
	.p2align 4,,10
	.p2align 3
.L2223:
	addl	$1, %r12d
	cmpl	48(%rsp), %r12d
	je	.L2224
.L2221:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L2223
	movl	$1, %edx
	leaq	94(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 94(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2223
	.p2align 4,,10
	.p2align 3
.L2445:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2446
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2446
	.p2align 4,,10
	.p2align 3
.L2391:
	movq	16(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
.L2910:
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L2358:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L2398
	cmpq	%rdx, %rax
	je	.L2398
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L2399
	jmp	.L2402
	.p2align 4,,10
	.p2align 3
.L2401:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L2402
.L2399:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L2401
	movl	$1, %edx
	leaq	111(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 111(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L2399
.L2402:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	8(%r13), %r12
	movq	%rax, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L2403
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3008
	cmpb	$0, 56(%rbx)
	je	.L2405
	movsbl	67(%rbx), %esi
.L2406:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%rbp,4), %r14d
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jg	.L2407
	jmp	.L2410
	.p2align 4,,10
	.p2align 3
.L2409:
	addl	$1, %ebx
	cmpl	%r14d, %ebx
	je	.L2410
.L2407:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2409
	movl	$1, %edx
	leaq	116(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 116(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%r14d, %ebx
	jne	.L2407
.L2410:
	movq	(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	0(%r13), %rax
.L2403:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L2411
	cmpq	%rdx, %rax
	je	.L2411
	leal	0(,%rbp,4), %r13d
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jg	.L2412
	.p2align 4,,10
	.p2align 3
.L2415:
	movq	(%r12), %rax
	movq	%r12, %rdi
	movq	8(%r12), %r14
	movq	%rax, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.L2416
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3009
	cmpb	$0, 56(%rbx)
	je	.L2418
	movsbl	67(%rbx), %esi
.L2419:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,4), %r13d
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jg	.L2420
	jmp	.L2423
	.p2align 4,,10
	.p2align 3
.L2422:
	addl	$1, %ebx
	cmpl	%ebx, %r13d
	je	.L2423
.L2420:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2422
	movl	$1, %edx
	leaq	118(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 118(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2422
	.p2align 4,,10
	.p2align 3
.L2442:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2443
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2443
	.p2align 4,,10
	.p2align 3
.L2229:
	movq	56(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
.L2906:
	movq	40(%rsp), %rax
	movq	(%rax), %rax
.L2209:
	movq	40(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L2233
	cmpq	%rax, %rdx
	je	.L2233
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L2234
	jmp	.L2237
	.p2align 4,,10
	.p2align 3
.L2236:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L2237
.L2234:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2236
	movl	$1, %edx
	leaq	93(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 93(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jne	.L2234
.L2237:
	movq	(%rsp), %rbp
	movq	0(%rbp), %rcx
	movq	%rbp, %rdi
	movq	8(%rbp), %r14
	movq	%rcx, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r12d
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L2238
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3010
	cmpb	$0, 56(%rbp)
	je	.L2240
	movsbl	67(%rbp), %esi
.L2241:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r12,4), %r13d
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jg	.L2242
	jmp	.L2245
	.p2align 4,,10
	.p2align 3
.L2244:
	addl	$1, %ebp
	cmpl	%ebp, %r13d
	je	.L2245
.L2242:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2244
	movl	$1, %edx
	leaq	96(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 96(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2244
	.p2align 4,,10
	.p2align 3
.L2276:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L2441
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3011:
	movl	$1, %edx
	leaq	117(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 117(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L2414:
	addl	$1, %ebx
	cmpl	%ebx, %r13d
	je	.L2415
.L2412:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2414
	jmp	.L3011
	.p2align 4,,10
	.p2align 3
.L2423:
	movq	(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%r12), %rax
.L2416:
	movq	8(%r12), %rdx
	testq	%rdx, %rdx
	je	.L2424
	cmpq	%rdx, %rax
	je	.L2424
	leal	0(%rbp,%rbp,4), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jg	.L2425
	jmp	.L2428
	.p2align 4,,10
	.p2align 3
.L2427:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	je	.L2428
.L2425:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2427
	movl	$1, %edx
	leaq	119(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 119(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L2425
.L2428:
	movl	$6, %esi
	movq	%r14, %rdi
	call	_ZNK5ValueIddE7displayEi
	jmp	.L2426
	.p2align 4,,10
	.p2align 3
.L2283:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2284
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2284
	.p2align 4,,10
	.p2align 3
.L2995:
	leal	0(,%r12,4), %r13d
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jg	.L2247
	jmp	.L2250
	.p2align 4,,10
	.p2align 3
.L2249:
	addl	$1, %ebp
	cmpl	%ebp, %r13d
	je	.L2250
.L2247:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2249
	movl	$1, %edx
	leaq	97(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 97(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r13d
	jne	.L2247
.L2250:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 40(%rsp)
	movq	8(%r14), %rax
	movq	%rax, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L2251
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L3012
	cmpb	$0, 56(%r12)
	je	.L2253
	movsbl	67(%r12), %esi
.L2254:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,4), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L2255
	jmp	.L2258
	.p2align 4,,10
	.p2align 3
.L2257:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L2258
.L2255:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2257
	movl	$1, %edx
	leaq	98(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 98(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2257
	.p2align 4,,10
	.p2align 3
.L2166:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2167
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2167
	.p2align 4,,10
	.p2align 3
.L2360:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2361
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2361
	.p2align 4,,10
	.p2align 3
.L2424:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L2441
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2309:
	movq	64(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
.L2908:
	movq	0(%r13), %rax
.L2289:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L2313
	cmpq	%rax, %rdx
	je	.L2313
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L2314
	jmp	.L2317
	.p2align 4,,10
	.p2align 3
.L2316:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L2317
.L2314:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L2316
	movl	$1, %edx
	leaq	103(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 103(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L2314
.L2317:
	movq	48(%rsp), %rbx
	movq	(%rbx), %rcx
	movq	%rbx, %rdi
	movq	8(%rbx), %r13
	movq	%rcx, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L2318
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3013
	cmpb	$0, 56(%rbx)
	je	.L2320
	movsbl	67(%rbx), %esi
.L2321:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%rbp,4), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jg	.L2322
	jmp	.L2325
	.p2align 4,,10
	.p2align 3
.L2324:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	je	.L2325
.L2322:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2324
	movl	$1, %edx
	leaq	106(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 106(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L2322
.L2325:
	movq	40(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	48(%rsp), %rax
	movq	(%rax), %rax
.L2318:
	movq	48(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L2326
	cmpq	%rax, %rdx
	je	.L2326
	leal	0(,%rbp,4), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jg	.L2327
	jmp	.L2330
	.p2align 4,,10
	.p2align 3
.L2329:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	je	.L2330
.L2327:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2329
	movl	$1, %edx
	leaq	107(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 107(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L2327
.L2330:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 48(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L2331
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3014
	cmpb	$0, 56(%rbp)
	je	.L2333
	movsbl	67(%rbp), %esi
.L2334:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbx,%rbx,4), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L2335
	jmp	.L2338
	.p2align 4,,10
	.p2align 3
.L2337:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L2338
.L2335:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L2337
	movl	$1, %edx
	leaq	108(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 108(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2337
	.p2align 4,,10
	.p2align 3
.L2274:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2275
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2275
	.p2align 4,,10
	.p2align 3
.L2192:
	movq	64(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	56(%rsp), %rax
	movq	(%rax), %rax
.L2185:
	movq	56(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L2193
	cmpq	%rax, %rdx
	je	.L2193
	leal	0(,%r12,4), %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jg	.L2194
	jmp	.L2197
	.p2align 4,,10
	.p2align 3
.L2196:
	addl	$1, %ebp
	cmpl	%r14d, %ebp
	je	.L2197
.L2194:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2196
	movl	$1, %edx
	leaq	91(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 91(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2196
	.p2align 4,,10
	.p2align 3
.L2224:
	movq	64(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%r14), %rax
.L2217:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L2225
	cmpq	%rax, %rdx
	je	.L2225
	leal	0(,%r13,4), %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jg	.L2226
	jmp	.L2229
	.p2align 4,,10
	.p2align 3
.L2228:
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	je	.L2229
.L2226:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	testl	%edx, %edx
	jne	.L2228
	movl	$1, %edx
	leaq	95(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 95(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2228
	.p2align 4,,10
	.p2align 3
.L2304:
	movq	72(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	56(%rsp), %rax
	movq	(%rax), %rax
.L2297:
	movq	56(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L2305
	cmpq	%rax, %rdx
	je	.L2305
	leal	0(,%r12,4), %eax
	xorl	%ebp, %ebp
	movl	%eax, 40(%rsp)
	testl	%eax, %eax
	jg	.L2306
	jmp	.L2309
	.p2align 4,,10
	.p2align 3
.L2308:
	addl	$1, %ebp
	cmpl	40(%rsp), %ebp
	je	.L2309
.L2306:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L2308
	movl	$1, %edx
	leaq	105(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 105(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2308
	.p2align 4,,10
	.p2align 3
.L2204:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L2273
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2258:
	movq	40(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%r14), %rax
.L2251:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L2259
	cmpq	%rax, %rdx
	je	.L2259
	leal	0(%rbp,%rbp,4), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	jg	.L2260
	jmp	.L2263
	.p2align 4,,10
	.p2align 3
.L2262:
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	je	.L2263
.L2260:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2262
	movl	$1, %edx
	leaq	99(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 99(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2262
	.p2align 4,,10
	.p2align 3
.L2338:
	movq	48(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	0(%r13), %rax
.L2331:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L2339
	cmpq	%rdx, %rax
	je	.L2339
	leal	(%rbx,%rbx,4), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L2340
	jmp	.L2343
	.p2align 4,,10
	.p2align 3
.L2342:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L2343
.L2340:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L2342
	movl	$1, %edx
	leaq	109(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 109(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2342
	.p2align 4,,10
	.p2align 3
.L2386:
	movq	48(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	40(%rsp), %rax
	movq	(%rax), %rax
.L2379:
	movq	40(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L2387
	cmpq	%rdx, %rax
	je	.L2387
	leal	0(%rbp,%rbp,4), %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jg	.L2388
	jmp	.L2391
	.p2align 4,,10
	.p2align 3
.L2390:
	addl	$1, %r12d
	cmpl	%r14d, %r12d
	je	.L2391
.L2388:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L2390
	movl	$1, %edx
	leaq	115(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 115(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L2390
	.p2align 4,,10
	.p2align 3
.L2398:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L2441
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2233:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L2273
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2351:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2352
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2352
	.p2align 4,,10
	.p2align 3
.L2263:
	movq	(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	jmp	.L2907
	.p2align 4,,10
	.p2align 3
.L2343:
	movq	40(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	jmp	.L2909
	.p2align 4,,10
	.p2align 3
.L2411:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L2441
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2180:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3015
.L2201:
	cmpb	$0, 56(%rbp)
	je	.L2202
	movsbl	67(%rbp), %esi
.L2203:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L2905
	.p2align 4,,10
	.p2align 3
.L2211:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2212
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2212
	.p2align 4,,10
	.p2align 3
.L2291:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2292
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2292
	.p2align 4,,10
	.p2align 3
.L2326:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L2350
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2374:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3016
.L2395:
	cmpb	$0, 56(%rbp)
	je	.L2396
	movsbl	67(%rbp), %esi
.L2397:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L2910
	.p2align 4,,10
	.p2align 3
.L2405:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2406
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2406
	.p2align 4,,10
	.p2align 3
.L2202:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2203
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2203
	.p2align 4,,10
	.p2align 3
.L2174:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2175
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2175
	.p2align 4,,10
	.p2align 3
.L2396:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2397
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2397
	.p2align 4,,10
	.p2align 3
.L2225:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.L3017
	cmpb	$0, 56(%r12)
	je	.L2231
	movsbl	67(%r12), %esi
.L2232:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L2906
	.p2align 4,,10
	.p2align 3
.L2193:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L2201
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2305:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3018
	cmpb	$0, 56(%rbp)
	je	.L2311
	movsbl	67(%rbp), %esi
.L2312:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L2908
	.p2align 4,,10
	.p2align 3
.L2240:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2241
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2241
	.p2align 4,,10
	.p2align 3
.L2320:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2321
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2321
	.p2align 4,,10
	.p2align 3
.L2368:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2369
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2369
	.p2align 4,,10
	.p2align 3
.L2339:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L2350
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2259:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L2273
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2387:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	jne	.L2395
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L2418:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2419
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2419
	.p2align 4,,10
	.p2align 3
.L2253:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2254
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2254
	.p2align 4,,10
	.p2align 3
.L2381:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2382
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2382
	.p2align 4,,10
	.p2align 3
.L2333:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2334
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2334
	.p2align 4,,10
	.p2align 3
.L2231:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2232
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2232
	.p2align 4,,10
	.p2align 3
.L2311:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2312
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2312
	.p2align 4,,10
	.p2align 3
.L2299:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2300
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2300
	.p2align 4,,10
	.p2align 3
.L2219:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2220
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2220
	.p2align 4,,10
	.p2align 3
.L2187:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L2188
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L2188
.L3005:
	call	_ZSt16__throw_bad_castv
.L2991:
	call	_ZSt16__throw_bad_castv
.L3004:
	call	_ZSt16__throw_bad_castv
.L2997:
	call	_ZSt16__throw_bad_castv
.L3001:
	call	_ZSt16__throw_bad_castv
.L2992:
	call	_ZSt16__throw_bad_castv
.L3002:
	call	_ZSt16__throw_bad_castv
.L3013:
	call	_ZSt16__throw_bad_castv
.L2993:
	call	_ZSt16__throw_bad_castv
.L2998:
	call	_ZSt16__throw_bad_castv
.L3006:
	call	_ZSt16__throw_bad_castv
.L3008:
	call	_ZSt16__throw_bad_castv
.L3010:
	call	_ZSt16__throw_bad_castv
.L3018:
	call	_ZSt16__throw_bad_castv
.L2994:
	call	_ZSt16__throw_bad_castv
.L3003:
	call	_ZSt16__throw_bad_castv
.L3012:
	call	_ZSt16__throw_bad_castv
.L3014:
	call	_ZSt16__throw_bad_castv
.L2999:
	call	_ZSt16__throw_bad_castv
.L3007:
	call	_ZSt16__throw_bad_castv
.L3017:
	call	_ZSt16__throw_bad_castv
.L3015:
	call	_ZSt16__throw_bad_castv
.L3016:
	call	_ZSt16__throw_bad_castv
.L2996:
	call	_ZSt16__throw_bad_castv
.L3000:
	call	_ZSt16__throw_bad_castv
.L3009:
	call	_ZSt16__throw_bad_castv
.LEHE116:
.L2543:
	movq	%rax, %rbx
	jmp	.L2146
.L2538:
	movq	%rax, %rbx
	jmp	.L2113
.L2537:
	movq	%rax, %rbx
	jmp	.L2455
.L2542:
	movq	%rax, %rbx
	jmp	.L2141
.L2541:
	movq	%rax, %rbx
	jmp	.L2132
.L2540:
	movq	%rax, %rbx
	jmp	.L2127
.L2539:
	movq	%rax, %rbp
	jmp	.L2118
	.section	.gcc_except_table
.LLSDA2083:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2083-.LLSDACSB2083
.LLSDACSB2083:
	.uleb128 .LEHB109-.LFB2083
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L2538-.LFB2083
	.uleb128 0
	.uleb128 .LEHB110-.LFB2083
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L2539-.LFB2083
	.uleb128 0
	.uleb128 .LEHB111-.LFB2083
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L2540-.LFB2083
	.uleb128 0
	.uleb128 .LEHB112-.LFB2083
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L2541-.LFB2083
	.uleb128 0
	.uleb128 .LEHB113-.LFB2083
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L2542-.LFB2083
	.uleb128 0
	.uleb128 .LEHB114-.LFB2083
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L2543-.LFB2083
	.uleb128 0
	.uleb128 .LEHB115-.LFB2083
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L2537-.LFB2083
	.uleb128 0
	.uleb128 .LEHB116-.LFB2083
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L2537-.LFB2083
	.uleb128 0
.LLSDACSE2083:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2083
	.type	_Z8testTanhv.cold.63, @function
_Z8testTanhv.cold.63:
.LFSB2083:
.L2146:
	.cfi_def_cfa_offset 944
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	224(%rsp), %rax
	testq	%rax, %rax
	je	.L2147
	leaq	208(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L2147:
	movq	192(%rsp), %rax
	testq	%rax, %rax
	je	.L2143
	leaq	176(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L2143:
	movq	784(%rsp), %rax
	testq	%rax, %rax
	je	.L2154
	leaq	768(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L2154:
	movq	704(%rsp), %rax
	testq	%rax, %rax
	je	.L2458
	leaq	688(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2458:
	movq	624(%rsp), %rax
	testq	%rax, %rax
	je	.L2139
	leaq	608(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2139:
	movq	544(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2125
	leaq	528(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rcx
.L2125:
	movq	464(%rsp), %rax
	testq	%rax, %rax
	je	.L2461
	leaq	448(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L2461:
	movq	384(%rsp), %rax
	testq	%rax, %rax
	je	.L2462
	leaq	368(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2462:
	movq	304(%rsp), %rax
	testq	%rax, %rax
	je	.L2463
	leaq	288(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2463:
	movq	%rbx, %rdi
.LEHB117:
	call	_Unwind_Resume
.LEHE117:
.L2113:
	movq	816(%rsp), %rax
	testq	%rax, %rax
	je	.L2115
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L2115:
	movq	544(%rsp), %rax
	testq	%rax, %rax
	je	.L2125
	leaq	528(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L2125
.L2455:
	movq	864(%rsp), %rax
	testq	%rax, %rax
	je	.L2456
	leaq	48(%r15), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L2456:
	movq	784(%rsp), %rax
	testq	%rax, %rax
	je	.L2154
	leaq	768(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
	jmp	.L2154
.L2141:
	movq	192(%rsp), %rax
	testq	%rax, %rax
	je	.L2143
	leaq	176(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L2143
.L2132:
	movq	192(%rsp), %rax
	testq	%rax, %rax
	je	.L2133
	leaq	176(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L2133:
	movq	816(%rsp), %rax
	testq	%rax, %rax
	je	.L2129
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L2129:
	movq	624(%rsp), %rax
	testq	%rax, %rax
	je	.L2139
	leaq	608(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L2139
.L2127:
	movq	816(%rsp), %rax
	testq	%rax, %rax
	je	.L2129
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
	jmp	.L2129
.L2118:
	movq	160(%rsp), %rax
	testq	%rax, %rax
	je	.L2119
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rax
.L2119:
	movq	816(%rsp), %rax
	testq	%rax, %rax
	je	.L2121
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L2121:
	movq	%rbp, %rbx
	jmp	.L2115
	.cfi_endproc
.LFE2083:
	.section	.gcc_except_table
.LLSDAC2083:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2083-.LLSDACSBC2083
.LLSDACSBC2083:
	.uleb128 .LEHB117-.LCOLDB38
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
.LLSDACSEC2083:
	.section	.text.unlikely
	.text
	.size	_Z8testTanhv, .-_Z8testTanhv
	.section	.text.unlikely
	.size	_Z8testTanhv.cold.63, .-_Z8testTanhv.cold.63
.LCOLDE38:
	.text
.LHOTE38:
	.section	.rodata.str1.1
.LC42:
	.string	"Test Grad passed"
	.section	.text.unlikely
.LCOLDB43:
	.text
.LHOTB43:
	.p2align 4,,15
	.globl	_Z8testGradv
	.type	_Z8testGradv, @function
_Z8testGradv:
.LFB2087:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2087
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	movl	$24, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$1096, %rsp
	.cfi_def_cfa_offset 1152
	leaq	288(%rsp), %rax
	leaq	1008(%rsp), %r15
	movaps	%xmm0, 288(%rsp)
	movq	%rax, (%rsp)
	leaq	448(%rsp), %rax
	movq	(%rsp), %xmm3
	movq	%rax, (%rsp)
	movq	.LC28(%rip), %rax
	movaps	%xmm0, 368(%rsp)
	movq	%rax, 312(%rsp)
	movq	.LC32(%rip), %rax
	movhps	(%rsp), %xmm3
	movaps	%xmm0, 448(%rsp)
	movq	%rax, 472(%rsp)
	movq	.LC0(%rip), %rax
	movaps	%xmm0, 528(%rsp)
	movq	%rax, 552(%rsp)
	movq	%r15, 304(%rsp)
	movb	$0, 320(%rsp)
	movq	$0, 352(%rsp)
	movq	%r15, 384(%rsp)
	movq	$0x000000000, 392(%rsp)
	movb	$0, 400(%rsp)
	movq	$0, 432(%rsp)
	movq	%r15, 464(%rsp)
	movb	$0, 480(%rsp)
	movq	$0, 512(%rsp)
	movq	%r15, 544(%rsp)
	movb	$0, 560(%rsp)
	movq	.LC40(%rip), %rax
	movaps	%xmm0, 608(%rsp)
	movsd	.LC41(%rip), %xmm0
	movq	%rax, 632(%rsp)
	leaq	128(%rsp), %rax
	movq	$0, 592(%rsp)
	movq	%r15, 624(%rsp)
	movb	$0, 640(%rsp)
	movq	$0, 672(%rsp)
	movsd	%xmm0, 128(%rsp)
	movaps	%xmm3, (%rsp)
	movaps	%xmm3, 688(%rsp)
	movq	%rax, 704(%rsp)
	movsd	%xmm0, 712(%rsp)
	movb	$43, 720(%rsp)
	movq	$0, 752(%rsp)
	movq	$0, 1024(%rsp)
.LEHB118:
	call	_Znwm
.LEHE118:
	leaq	688(%rsp), %rcx
	movdqa	(%rsp), %xmm3
	movq	%r15, %rsi
	movq	$_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, 16(%rsp)
	movq	16(%rsp), %xmm0
	movq	%rcx, 16(%rax)
	movl	$2, %edx
	leaq	160(%rsp), %rdi
	movups	%xmm3, (%rax)
	movdqa	%xmm0, %xmm4
	movq	%rax, 1008(%rsp)
	movhps	.LC35(%rip), %xmm4
	movq	$0, 176(%rsp)
	movaps	%xmm4, 16(%rsp)
	movaps	%xmm4, 1024(%rsp)
.LEHB119:
	call	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE119:
	movq	760(%rsp), %rdx
	movq	752(%rsp), %rcx
	movdqa	160(%rsp), %xmm0
	movq	1024(%rsp), %rax
	movdqa	736(%rsp), %xmm2
	movq	%rdx, 184(%rsp)
	movq	1032(%rsp), %rdx
	movaps	%xmm0, 736(%rsp)
	movaps	%xmm2, 160(%rsp)
	movq	%rcx, 176(%rsp)
	movq	%rax, 752(%rsp)
	movq	%rdx, 760(%rsp)
	testq	%rcx, %rcx
	je	.L3025
	leaq	160(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	1024(%rsp), %rax
.L3025:
	testq	%rax, %rax
	je	.L3030
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L3030:
	leaq	368(%rsp), %rax
	movl	$24, %edi
	movsd	392(%rsp), %xmm0
	movb	$43, 800(%rsp)
	mulsd	552(%rsp), %xmm0
	movq	%rax, (%rsp)
	leaq	528(%rsp), %rax
	movq	(%rsp), %xmm5
	movq	%rax, (%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 784(%rsp)
	movq	$0, 832(%rsp)
	movq	$0, 1024(%rsp)
	movhps	(%rsp), %xmm5
	movsd	%xmm0, 136(%rsp)
	movaps	%xmm5, (%rsp)
	movaps	%xmm5, 768(%rsp)
	movsd	%xmm0, 792(%rsp)
.LEHB120:
	call	_Znwm
.LEHE120:
	leaq	768(%rsp), %rcx
	movdqa	(%rsp), %xmm5
	movq	%r15, %rsi
	movdqa	16(%rsp), %xmm2
	movq	%rcx, 16(%rax)
	leaq	192(%rsp), %rbx
	movl	$2, %edx
	movups	%xmm5, (%rax)
	movq	%rbx, %rdi
	movq	%rax, 1008(%rsp)
	movaps	%xmm2, 1024(%rsp)
	movq	$0, 208(%rsp)
.LEHB121:
	call	_ZNSt14_Function_base13_Base_managerIZmlR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE121:
	movq	840(%rsp), %rdx
	movq	832(%rsp), %rcx
	movdqa	192(%rsp), %xmm0
	movq	1024(%rsp), %rax
	movdqa	816(%rsp), %xmm4
	movq	%rdx, 216(%rsp)
	movq	1032(%rsp), %rdx
	movaps	%xmm0, 816(%rsp)
	movaps	%xmm4, 192(%rsp)
	movq	%rcx, 208(%rsp)
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	testq	%rcx, %rcx
	je	.L3039
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	1024(%rsp), %rax
.L3039:
	testq	%rax, %rax
	je	.L3044
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L3044:
	leaq	688(%rsp), %rax
	movl	$24, %edi
	movsd	712(%rsp), %xmm0
	addsd	792(%rsp), %xmm0
	movq	%rax, (%rsp)
	leaq	768(%rsp), %rax
	movq	(%rsp), %xmm6
	movq	%rax, (%rsp)
	leaq	144(%rsp), %rax
	movsd	%xmm0, 144(%rsp)
	movq	%rax, 864(%rsp)
	movhps	(%rsp), %xmm6
	movsd	%xmm0, 872(%rsp)
	movaps	%xmm6, (%rsp)
	movaps	%xmm6, 848(%rsp)
	movb	$43, 880(%rsp)
	movq	$0, 912(%rsp)
	movq	$0, 1024(%rsp)
.LEHB122:
	call	_Znwm
.LEHE122:
	leaq	848(%rsp), %rcx
	movdqa	(%rsp), %xmm6
	movq	%r15, %rsi
	movq	$_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, 16(%rsp)
	movq	16(%rsp), %xmm0
	movq	%rcx, 16(%rax)
	movl	$2, %edx
	leaq	224(%rsp), %rdi
	movups	%xmm6, (%rax)
	movdqa	%xmm0, %xmm7
	movq	%rax, 1008(%rsp)
	movhps	.LC36(%rip), %xmm7
	movq	$0, 240(%rsp)
	movaps	%xmm7, 16(%rsp)
	movaps	%xmm7, 1024(%rsp)
.LEHB123:
	call	_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE123:
	movq	920(%rsp), %rdx
	movq	912(%rsp), %rcx
	movdqa	224(%rsp), %xmm0
	movq	1024(%rsp), %rax
	movdqa	896(%rsp), %xmm7
	movq	%rdx, 248(%rsp)
	movq	1032(%rsp), %rdx
	movaps	%xmm0, 896(%rsp)
	movaps	%xmm7, 224(%rsp)
	movq	%rcx, 240(%rsp)
	movq	%rax, 912(%rsp)
	movq	%rdx, 920(%rsp)
	testq	%rcx, %rcx
	je	.L3053
	leaq	224(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	1024(%rsp), %rax
.L3053:
	testq	%rax, %rax
	je	.L3058
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L3058:
	leaq	848(%rsp), %rax
	movl	$24, %edi
	movsd	872(%rsp), %xmm0
	addsd	632(%rsp), %xmm0
	movq	%rax, (%rsp)
	leaq	608(%rsp), %rax
	movq	(%rsp), %xmm1
	movq	%rax, (%rsp)
	leaq	152(%rsp), %rax
	movsd	%xmm0, 152(%rsp)
	movq	%rax, 944(%rsp)
	movhps	(%rsp), %xmm1
	movsd	%xmm0, 952(%rsp)
	movaps	%xmm1, (%rsp)
	movaps	%xmm1, 928(%rsp)
	movb	$43, 960(%rsp)
	movq	$0, 992(%rsp)
	movq	$0, 240(%rsp)
.LEHB124:
	call	_Znwm
.LEHE124:
	movdqa	(%rsp), %xmm1
	movdqa	16(%rsp), %xmm2
	leaq	928(%rsp), %rcx
	movl	$2, %edx
	movq	%rcx, 16(%rax)
	leaq	224(%rsp), %rsi
	leaq	256(%rsp), %rdi
	movups	%xmm1, (%rax)
	movq	%rax, 224(%rsp)
	movaps	%xmm2, 240(%rsp)
	movq	$0, 272(%rsp)
.LEHB125:
	call	_ZNSt14_Function_base13_Base_managerIZplR5ValueIddES3_EUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
.LEHE125:
	movq	1000(%rsp), %rdx
	movq	992(%rsp), %rcx
	movdqa	256(%rsp), %xmm0
	movq	240(%rsp), %rax
	movdqa	976(%rsp), %xmm3
	movq	%rdx, 280(%rsp)
	movq	248(%rsp), %rdx
	movaps	%xmm0, 976(%rsp)
	movaps	%xmm3, 256(%rsp)
	movq	%rcx, 272(%rsp)
	movq	%rax, 992(%rsp)
	movq	%rdx, 1000(%rsp)
	testq	%rcx, %rcx
	je	.L3067
	leaq	256(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	240(%rsp), %rax
.L3067:
	testq	%rax, %rax
	je	.L3072
	leaq	224(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3072:
	movsd	952(%rsp), %xmm0
	movsd	%xmm0, 192(%rsp)
	call	exp
	movsd	%xmm0, (%rsp)
	movsd	192(%rsp), %xmm0
	xorpd	.LC33(%rip), %xmm0
	call	exp
	movsd	(%rsp), %xmm2
	leaq	928(%rsp), %rax
	movl	$2, %edx
	movq	%rax, (%rsp)
	leaq	224(%rsp), %rsi
	leaq	256(%rsp), %rdi
	movapd	%xmm2, %xmm1
	addsd	%xmm0, %xmm2
	movq	%rbx, 1024(%rsp)
	subsd	%xmm0, %xmm1
	movb	$116, 1040(%rsp)
	movq	$0, 1072(%rsp)
	movq	$0, 272(%rsp)
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 192(%rsp)
	movapd	%xmm1, %xmm0
	movq	928(%rsp), %xmm1
	movsd	%xmm0, 1032(%rsp)
	movq	(%rsp), %xmm0
	movq	%r15, (%rsp)
	punpcklqdq	%xmm1, %xmm1
	movaps	%xmm1, 1008(%rsp)
	movhps	(%rsp), %xmm0
	movq	$_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, (%rsp)
	movaps	%xmm0, 224(%rsp)
	movq	(%rsp), %xmm0
	movhps	.LC37(%rip), %xmm0
	movaps	%xmm0, 240(%rsp)
	call	_ZNSt14_Function_base13_Base_managerIZN5ValueIddE4tanhEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	movq	1080(%rsp), %rdx
	movdqa	256(%rsp), %xmm0
	movq	1072(%rsp), %rcx
	movq	240(%rsp), %rax
	movdqa	1056(%rsp), %xmm5
	movq	%rdx, 280(%rsp)
	movq	248(%rsp), %rdx
	movaps	%xmm0, 1056(%rsp)
	movaps	%xmm5, 256(%rsp)
	movq	%rcx, 272(%rsp)
	movq	%rax, 1072(%rsp)
	movq	%rdx, 1080(%rsp)
	testq	%rcx, %rcx
	je	.L3074
	leaq	256(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
	movq	240(%rsp), %rax
.L3074:
	testq	%rax, %rax
	je	.L3077
	leaq	224(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3077:
	cmpq	$0, 1072(%rsp)
	movq	.LC0(%rip), %rax
	movq	%rax, 1048(%rsp)
	je	.L3081
	leaq	48(%r15), %rdi
.LEHB126:
	call	*1080(%rsp)
.L3081:
	cmpq	$0, 992(%rsp)
	je	.L3080
	leaq	928(%rsp), %rax
	leaq	48(%rax), %rdi
	call	*1000(%rsp)
.L3080:
	movq	1016(%rsp), %rax
	movq	%r15, %rdi
	movq	1008(%rsp), %r12
	movq	%rax, 16(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r14d
	movq	1008(%rsp), %rax
	testq	%rax, %rax
	je	.L3082
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3903
	cmpb	$0, 56(%rbx)
	je	.L3084
	movsbl	67(%rbx), %esi
.L3085:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jg	.L3086
	jmp	.L3089
	.p2align 4,,10
	.p2align 3
.L3088:
	addl	$1, %ebx
	cmpl	%ebx, %r14d
	je	.L3089
.L3086:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	testl	%edx, %edx
	jne	.L3088
	movl	$1, %edx
	leaq	94(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 94(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r14d
	jne	.L3086
.L3089:
	movq	8(%r12), %rax
	movq	%r12, %rdi
	movq	(%r12), %r13
	movq	%rax, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, (%rsp)
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.L3090
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3904
	cmpb	$0, 56(%rbx)
	je	.L3092
	movsbl	67(%rbx), %esi
.L3093:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	(%rsp), %eax
	xorl	%ebx, %ebx
	leal	(%rax,%rax), %ebp
	testl	%ebp, %ebp
	jg	.L3094
	jmp	.L3097
	.p2align 4,,10
	.p2align 3
.L3096:
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	je	.L3097
.L3094:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	(%rsp)
	testl	%edx, %edx
	jne	.L3096
	movl	$1, %edx
	leaq	96(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 96(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	jne	.L3094
.L3097:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 64(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 56(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L3098
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3905
	cmpb	$0, 56(%rbx)
	je	.L3100
	movsbl	67(%rbx), %esi
.L3101:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,2), %eax
	xorl	%ebx, %ebx
	movl	%eax, 48(%rsp)
	testl	%eax, %eax
	jg	.L3102
	jmp	.L3105
	.p2align 4,,10
	.p2align 3
.L3104:
	addl	$1, %ebx
	cmpl	%ebx, 48(%rsp)
	je	.L3105
.L3102:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3104
	movl	$1, %edx
	leaq	98(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 98(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, 48(%rsp)
	jne	.L3102
.L3105:
	movq	64(%rsp), %rdi
	movl	$4, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	0(%r13), %rax
.L3098:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L3106
	cmpq	%rax, %rdx
	je	.L3106
	leal	0(%rbp,%rbp,2), %r13d
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jg	.L3107
	jmp	.L3110
	.p2align 4,,10
	.p2align 3
.L3109:
	addl	$1, %ebx
	cmpl	%r13d, %ebx
	je	.L3110
.L3107:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3109
	movl	$1, %edx
	leaq	99(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 99(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%r13d, %ebx
	jne	.L3107
.L3110:
	movq	56(%rsp), %rbx
	movq	(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%rcx, 64(%rsp)
	movq	8(%rbx), %rcx
	movq	%rcx, 48(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L3111
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3906
	cmpb	$0, 56(%rbx)
	je	.L3113
	movsbl	67(%rbx), %esi
.L3114:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%rbp,4), %r13d
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jg	.L3115
	jmp	.L3118
	.p2align 4,,10
	.p2align 3
.L3117:
	addl	$1, %ebx
	cmpl	%ebx, %r13d
	je	.L3118
.L3115:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3117
	movl	$1, %edx
	leaq	100(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 100(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3117
	.p2align 4,,10
	.p2align 3
.L3171:
	movq	40(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L3164:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L3172
	cmpq	%rax, %rdx
	jne	.L3907
.L3172:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3908
	.p2align 4,,10
	.p2align 3
.L3199:
	cmpb	$0, 56(%rbx)
	je	.L3200
	movsbl	67(%rbx), %esi
.L3201:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L3829:
	movq	1008(%rsp), %rax
.L3082:
	movq	1016(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L3202
	cmpq	%rax, %rdx
	je	.L3202
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jg	.L3203
	jmp	.L3206
	.p2align 4,,10
	.p2align 3
.L3205:
	addl	$1, %ebx
	cmpl	%ebx, %r14d
	je	.L3206
.L3203:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	testl	%edx, %edx
	jne	.L3205
	movl	$1, %edx
	leaq	95(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 95(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r14d
	jne	.L3203
.L3206:
	movq	16(%rsp), %rbx
	movq	8(%rbx), %rcx
	movq	%rbx, %rdi
	movq	(%rbx), %r13
	movq	%rcx, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r14d
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L3207
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3909
	cmpb	$0, 56(%rbx)
	je	.L3209
	movsbl	67(%rbx), %esi
.L3210:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%r14,%r14), %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jg	.L3211
	jmp	.L3214
	.p2align 4,,10
	.p2align 3
.L3213:
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	je	.L3214
.L3211:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	testl	%edx, %edx
	jne	.L3213
	movl	$1, %edx
	leaq	110(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 110(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	jne	.L3211
.L3214:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 56(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 48(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L3215
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3910
	cmpb	$0, 56(%rbp)
	je	.L3217
	movsbl	67(%rbp), %esi
.L3218:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3219
	jmp	.L3222
	.p2align 4,,10
	.p2align 3
.L3221:
	addl	$1, %ebp
	cmpl	%r12d, %ebp
	je	.L3222
.L3219:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3221
	movl	$1, %edx
	leaq	112(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 112(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%r12d, %ebp
	jne	.L3219
.L3222:
	movq	56(%rsp), %rbp
	movq	0(%rbp), %rcx
	movq	%rbp, %rdi
	movq	%rcx, 72(%rsp)
	movq	8(%rbp), %rcx
	movq	%rcx, 64(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r12d
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L3223
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3911
	cmpb	$0, 56(%rbp)
	je	.L3225
	movsbl	67(%rbp), %esi
.L3226:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r12,4), %eax
	xorl	%ebp, %ebp
	movl	%eax, 40(%rsp)
	testl	%eax, %eax
	jg	.L3227
	jmp	.L3230
	.p2align 4,,10
	.p2align 3
.L3229:
	addl	$1, %ebp
	cmpl	%ebp, 40(%rsp)
	je	.L3230
.L3227:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L3229
	movl	$1, %edx
	leaq	114(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 114(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3229
	.p2align 4,,10
	.p2align 3
.L3239:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3912
.L3276:
	cmpb	$0, 56(%rbx)
	je	.L3277
	movsbl	67(%rbx), %esi
.L3278:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L3831:
	movq	16(%rsp), %rax
	movq	(%rax), %rax
.L3207:
	movq	16(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L3279
	cmpq	%rax, %rdx
	je	.L3279
	leal	(%r14,%r14), %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jg	.L3280
	jmp	.L3283
	.p2align 4,,10
	.p2align 3
.L3282:
	addl	$1, %ebx
	cmpl	%ebp, %ebx
	je	.L3283
.L3280:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	testl	%edx, %edx
	jne	.L3282
	movl	$1, %edx
	leaq	111(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 111(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebp, %ebx
	jne	.L3280
.L3283:
	movq	(%rsp), %rbp
	movq	%rbp, %rdi
	movq	0(%rbp), %r14
	movq	8(%rbp), %r13
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L3284
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3913
	cmpb	$0, 56(%rbp)
	je	.L3286
	movsbl	67(%rbp), %esi
.L3287:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3288
	jmp	.L3291
	.p2align 4,,10
	.p2align 3
.L3290:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L3291
.L3288:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3290
	movl	$1, %edx
	leaq	120(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 120(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L3288
.L3291:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, 48(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r12d
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L3292
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3914
	cmpb	$0, 56(%rbp)
	je	.L3294
	movsbl	67(%rbp), %esi
.L3295:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r12,4), %eax
	xorl	%ebp, %ebp
	movl	%eax, 16(%rsp)
	testl	%eax, %eax
	jg	.L3296
	jmp	.L3299
	.p2align 4,,10
	.p2align 3
.L3298:
	addl	$1, %ebp
	cmpl	%ebp, 16(%rsp)
	je	.L3299
.L3296:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L3298
	movl	$1, %edx
	leaq	122(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 122(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, 16(%rsp)
	jne	.L3296
.L3299:
	movq	48(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%r14), %rax
.L3292:
	movq	8(%r14), %rdx
	testq	%rdx, %rdx
	je	.L3300
	cmpq	%rdx, %rax
	je	.L3300
	leal	0(,%r12,4), %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jg	.L3301
	jmp	.L3304
	.p2align 4,,10
	.p2align 3
.L3303:
	addl	$1, %ebp
	cmpl	%r14d, %ebp
	je	.L3304
.L3301:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L3303
	movl	$1, %edx
	leaq	123(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 123(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%r14d, %ebp
	jne	.L3301
.L3304:
	movq	40(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
.L3832:
	movq	(%rsp), %rax
	movq	(%rax), %rax
.L3284:
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L3308
	cmpq	%rdx, %rax
	je	.L3308
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3309
	jmp	.L3312
	.p2align 4,,10
	.p2align 3
.L3311:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L3312
.L3309:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3311
	movl	$1, %edx
	leaq	121(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 121(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L3309
.L3312:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	8(%r13), %r12
	movq	%rax, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L3313
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3915
	cmpb	$0, 56(%rbx)
	je	.L3315
	movsbl	67(%rbx), %esi
.L3316:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%rbp,4), %r14d
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jg	.L3317
	jmp	.L3320
	.p2align 4,,10
	.p2align 3
.L3319:
	addl	$1, %ebx
	cmpl	%r14d, %ebx
	je	.L3320
.L3317:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3319
	movl	$1, %edx
	leaq	124(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 124(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%r14d, %ebx
	jne	.L3317
.L3320:
	movq	(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	0(%r13), %rax
.L3313:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L3321
	cmpq	%rdx, %rax
	je	.L3321
	leal	0(,%rbp,4), %r13d
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jg	.L3322
	.p2align 4,,10
	.p2align 3
.L3325:
	movq	(%r12), %rax
	movq	%r12, %rdi
	movq	8(%r12), %r14
	movq	%rax, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.L3326
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3916
	cmpb	$0, 56(%rbx)
	je	.L3328
	movsbl	67(%rbx), %esi
.L3329:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(%rbp,%rbp,4), %r13d
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jg	.L3330
	jmp	.L3333
	.p2align 4,,10
	.p2align 3
.L3332:
	addl	$1, %ebx
	cmpl	%ebx, %r13d
	je	.L3333
.L3330:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3332
	movl	$1, %edx
	leaq	126(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 126(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3332
	.p2align 4,,10
	.p2align 3
.L3084:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3085
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3085
	.p2align 4,,10
	.p2align 3
.L3279:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3917
.L3351:
	cmpb	$0, 56(%rbx)
	je	.L3352
	movsbl	67(%rbx), %esi
.L3353:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L3336:
	movl	$16, %edx
	movl	$.LC42, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3918
	cmpb	$0, 56(%rbx)
	je	.L3355
	movsbl	67(%rbx), %esi
.L3356:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE126:
	movq	1072(%rsp), %rax
	testq	%rax, %rax
	je	.L3357
	leaq	48(%r15), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3357:
	movq	992(%rsp), %rax
	testq	%rax, %rax
	je	.L3358
	leaq	976(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3358:
	movq	912(%rsp), %rax
	testq	%rax, %rax
	je	.L3359
	leaq	896(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3359:
	movq	832(%rsp), %rax
	testq	%rax, %rax
	je	.L3360
	leaq	816(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3360:
	movq	752(%rsp), %rax
	testq	%rax, %rax
	je	.L3361
	leaq	736(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3361:
	movq	672(%rsp), %rax
	testq	%rax, %rax
	je	.L3362
	leaq	656(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3362:
	movq	592(%rsp), %rax
	testq	%rax, %rax
	je	.L3363
	leaq	576(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3363:
	movq	512(%rsp), %rax
	testq	%rax, %rax
	je	.L3364
	leaq	496(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3364:
	movq	432(%rsp), %rax
	testq	%rax, %rax
	je	.L3365
	leaq	416(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3365:
	movq	352(%rsp), %rax
	testq	%rax, %rax
	je	.L3019
	leaq	336(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3019:
	addq	$1096, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3123:
	.cfi_restore_state
	movq	48(%rsp), %rdi
	movl	$5, %esi
.LEHB127:
	call	_ZNK5ValueIddE7displayEi
.L3827:
	movq	(%r12), %rax
.L3090:
	movq	8(%r12), %rdx
	testq	%rdx, %rdx
	je	.L3130
	cmpq	%rax, %rdx
	je	.L3130
	movl	(%rsp), %eax
	xorl	%ebx, %ebx
	leal	(%rax,%rax), %ebp
	testl	%ebp, %ebp
	jg	.L3131
	jmp	.L3134
	.p2align 4,,10
	.p2align 3
.L3133:
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	je	.L3134
.L3131:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	(%rsp)
	testl	%edx, %edx
	jne	.L3133
	movl	$1, %edx
	leaq	97(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 97(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	jne	.L3131
.L3134:
	movq	40(%rsp), %rbp
	movq	8(%rbp), %rcx
	movq	%rbp, %rdi
	movq	0(%rbp), %r13
	movq	%rcx, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L3135
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3919
	cmpb	$0, 56(%rbp)
	je	.L3137
	movsbl	67(%rbp), %esi
.L3138:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3139
	jmp	.L3142
	.p2align 4,,10
	.p2align 3
.L3141:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L3142
.L3139:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3141
	movl	$1, %edx
	leaq	102(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 102(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L3139
.L3142:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 64(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 56(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %r12d
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L3143
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3920
	cmpb	$0, 56(%rbp)
	je	.L3145
	movsbl	67(%rbp), %esi
.L3146:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%r12,4), %eax
	xorl	%ebp, %ebp
	movl	%eax, 48(%rsp)
	testl	%eax, %eax
	jg	.L3147
	jmp	.L3150
	.p2align 4,,10
	.p2align 3
.L3149:
	addl	$1, %ebp
	cmpl	%ebp, 48(%rsp)
	je	.L3150
.L3147:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L3149
	movl	$1, %edx
	leaq	104(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 104(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3149
	.p2align 4,,10
	.p2align 3
.L3355:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3356
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3356
	.p2align 4,,10
	.p2align 3
.L3352:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3353
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3353
	.p2align 4,,10
	.p2align 3
.L3155:
	movq	56(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
.L3828:
	movq	40(%rsp), %rax
	movq	(%rax), %rax
.L3135:
	movq	40(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L3159
	cmpq	%rax, %rdx
	je	.L3159
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3160
	jmp	.L3163
	.p2align 4,,10
	.p2align 3
.L3162:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L3163
.L3160:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3162
	movl	$1, %edx
	leaq	103(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 103(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L3160
.L3163:
	movq	(%rsp), %rbx
	movq	(%rbx), %rcx
	movq	%rbx, %rdi
	movq	8(%rbx), %r13
	movq	%rcx, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L3164
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3921
	cmpb	$0, 56(%rbx)
	je	.L3166
	movsbl	67(%rbx), %esi
.L3167:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%rbp,4), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jg	.L3168
	jmp	.L3171
	.p2align 4,,10
	.p2align 3
.L3170:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	je	.L3171
.L3168:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3170
	movl	$1, %edx
	leaq	106(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 106(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3170
	.p2align 4,,10
	.p2align 3
.L3202:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3351
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3922:
	movl	$1, %edx
	leaq	125(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 125(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L3324:
	addl	$1, %ebx
	cmpl	%ebx, %r13d
	je	.L3325
.L3322:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3324
	jmp	.L3922
	.p2align 4,,10
	.p2align 3
.L3333:
	movq	(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	(%r12), %rax
.L3326:
	movq	8(%r12), %rdx
	testq	%rdx, %rdx
	je	.L3334
	cmpq	%rdx, %rax
	je	.L3334
	leal	0(%rbp,%rbp,4), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jg	.L3335
	jmp	.L3338
	.p2align 4,,10
	.p2align 3
.L3337:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	je	.L3338
.L3335:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3337
	movl	$1, %edx
	leaq	127(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 127(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L3335
.L3338:
	movl	$6, %esi
	movq	%r14, %rdi
	call	_ZNK5ValueIddE7displayEi
	jmp	.L3336
	.p2align 4,,10
	.p2align 3
.L3209:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3210
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3210
	.p2align 4,,10
	.p2align 3
.L3907:
	leal	0(,%rbp,4), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jg	.L3173
	jmp	.L3176
	.p2align 4,,10
	.p2align 3
.L3175:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	je	.L3176
.L3173:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3175
	movl	$1, %edx
	leaq	107(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 107(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L3173
.L3176:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 40(%rsp)
	movq	8(%r13), %rax
	movq	%rax, (%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L3177
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3923
	cmpb	$0, 56(%rbp)
	je	.L3179
	movsbl	67(%rbp), %esi
.L3180:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbx,%rbx,4), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3181
	jmp	.L3184
	.p2align 4,,10
	.p2align 3
.L3183:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L3184
.L3181:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3183
	movl	$1, %edx
	leaq	108(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 108(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3183
	.p2align 4,,10
	.p2align 3
.L3092:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3093
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3093
	.p2align 4,,10
	.p2align 3
.L3286:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3287
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3287
	.p2align 4,,10
	.p2align 3
.L3334:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3351
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3235:
	movq	64(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
.L3830:
	movq	0(%r13), %rax
.L3215:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L3239
	cmpq	%rax, %rdx
	je	.L3239
	leal	(%rbx,%rbx,2), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3240
	jmp	.L3243
	.p2align 4,,10
	.p2align 3
.L3242:
	addl	$1, %ebp
	cmpl	%r12d, %ebp
	je	.L3243
.L3240:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3242
	movl	$1, %edx
	leaq	113(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 113(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebp
	cmpl	%r12d, %ebp
	jne	.L3240
.L3243:
	movq	48(%rsp), %rbx
	movq	(%rbx), %rcx
	movq	%rbx, %rdi
	movq	8(%rbx), %r13
	movq	%rcx, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebp
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L3244
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3924
	cmpb	$0, 56(%rbx)
	je	.L3246
	movsbl	67(%rbx), %esi
.L3247:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	0(,%rbp,4), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jg	.L3248
	jmp	.L3251
	.p2align 4,,10
	.p2align 3
.L3250:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	je	.L3251
.L3248:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3250
	movl	$1, %edx
	leaq	116(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 116(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L3248
.L3251:
	movq	40(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	48(%rsp), %rax
	movq	(%rax), %rax
.L3244:
	movq	48(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L3252
	cmpq	%rax, %rdx
	je	.L3252
	leal	0(,%rbp,4), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jg	.L3253
	jmp	.L3256
	.p2align 4,,10
	.p2align 3
.L3255:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	je	.L3256
.L3253:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3255
	movl	$1, %edx
	leaq	117(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 117(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L3253
.L3256:
	movq	0(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 48(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	call	_ZNK5ValueIddE5printEv
	movl	%eax, %ebx
	movq	0(%r13), %rax
	testq	%rax, %rax
	je	.L3257
	movl	$3, %edx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3925
	cmpb	$0, 56(%rbp)
	je	.L3259
	movsbl	67(%rbp), %esi
.L3260:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	leal	(%rbx,%rbx,4), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3261
	jmp	.L3264
	.p2align 4,,10
	.p2align 3
.L3263:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L3264
.L3261:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3263
	movl	$1, %edx
	leaq	118(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 118(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3263
	.p2align 4,,10
	.p2align 3
.L3200:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3201
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3201
	.p2align 4,,10
	.p2align 3
.L3118:
	movq	64(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	56(%rsp), %rax
	movq	(%rax), %rax
.L3111:
	movq	56(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L3119
	cmpq	%rax, %rdx
	je	.L3119
	leal	0(,%rbp,4), %r13d
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jg	.L3120
	jmp	.L3123
	.p2align 4,,10
	.p2align 3
.L3122:
	addl	$1, %ebx
	cmpl	%ebx, %r13d
	je	.L3123
.L3120:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.L3122
	movl	$1, %edx
	leaq	101(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 101(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3122
	.p2align 4,,10
	.p2align 3
.L3150:
	movq	64(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	0(%r13), %rax
.L3143:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L3151
	cmpq	%rax, %rdx
	je	.L3151
	leal	0(,%r12,4), %r13d
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jg	.L3152
	jmp	.L3155
	.p2align 4,,10
	.p2align 3
.L3154:
	addl	$1, %ebp
	cmpl	%r13d, %ebp
	je	.L3155
.L3152:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L3154
	movl	$1, %edx
	leaq	105(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 105(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3154
	.p2align 4,,10
	.p2align 3
.L3230:
	movq	72(%rsp), %rdi
	movl	$5, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	56(%rsp), %rax
	movq	(%rax), %rax
.L3223:
	movq	56(%rsp), %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L3231
	cmpq	%rax, %rdx
	je	.L3231
	leal	0(,%r12,4), %eax
	xorl	%ebp, %ebp
	movl	%eax, 40(%rsp)
	testl	%eax, %eax
	jg	.L3232
	jmp	.L3235
	.p2align 4,,10
	.p2align 3
.L3234:
	addl	$1, %ebp
	cmpl	40(%rsp), %ebp
	je	.L3235
.L3232:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	testl	%edx, %edx
	jne	.L3234
	movl	$1, %edx
	leaq	115(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 115(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3234
	.p2align 4,,10
	.p2align 3
.L3130:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3199
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3184:
	movq	40(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	0(%r13), %rax
.L3177:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L3185
	cmpq	%rax, %rdx
	je	.L3185
	leal	(%rbx,%rbx,4), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3186
	jmp	.L3189
	.p2align 4,,10
	.p2align 3
.L3188:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L3189
.L3186:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3188
	movl	$1, %edx
	leaq	109(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 109(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3188
	.p2align 4,,10
	.p2align 3
.L3264:
	movq	48(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	movq	0(%r13), %rax
.L3257:
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.L3265
	cmpq	%rdx, %rax
	je	.L3265
	leal	(%rbx,%rbx,4), %r12d
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	jg	.L3266
	jmp	.L3269
	.p2align 4,,10
	.p2align 3
.L3268:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	je	.L3269
.L3266:
	movl	$1, %edx
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3268
	movl	$1, %edx
	leaq	119(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	movb	$124, 119(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.L3268
	.p2align 4,,10
	.p2align 3
.L3308:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3351
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3159:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3199
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3277:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3278
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3278
	.p2align 4,,10
	.p2align 3
.L3189:
	movq	(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	jmp	.L3829
	.p2align 4,,10
	.p2align 3
.L3269:
	movq	40(%rsp), %rdi
	movl	$6, %esi
	call	_ZNK5ValueIddE7displayEi
	jmp	.L3831
	.p2align 4,,10
	.p2align 3
.L3321:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3351
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3106:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L3926
.L3127:
	cmpb	$0, 56(%rbx)
	je	.L3128
	movsbl	67(%rbx), %esi
.L3129:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L3827
	.p2align 4,,10
	.p2align 3
.L3217:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3218
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3218
	.p2align 4,,10
	.p2align 3
.L3137:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3138
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3138
	.p2align 4,,10
	.p2align 3
.L3252:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3276
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3300:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3927
	cmpb	$0, 56(%rbp)
	je	.L3306
	movsbl	67(%rbp), %esi
.L3307:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L3832
	.p2align 4,,10
	.p2align 3
.L3315:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3316
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3316
	.p2align 4,,10
	.p2align 3
.L3128:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3129
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3129
	.p2align 4,,10
	.p2align 3
.L3100:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3101
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3101
	.p2align 4,,10
	.p2align 3
.L3151:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3928
	cmpb	$0, 56(%rbp)
	je	.L3157
	movsbl	67(%rbp), %esi
.L3158:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L3828
	.p2align 4,,10
	.p2align 3
.L3119:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3127
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3231:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.L3929
	cmpb	$0, 56(%rbp)
	je	.L3237
	movsbl	67(%rbp), %esi
.L3238:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	jmp	.L3830
	.p2align 4,,10
	.p2align 3
.L3294:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3295
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3295
	.p2align 4,,10
	.p2align 3
.L3166:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3167
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3167
	.p2align 4,,10
	.p2align 3
.L3246:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3247
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3247
	.p2align 4,,10
	.p2align 3
.L3185:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3199
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3265:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3276
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L3328:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3329
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3329
	.p2align 4,,10
	.p2align 3
.L3179:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3180
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3180
	.p2align 4,,10
	.p2align 3
.L3259:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3260
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3260
	.p2align 4,,10
	.p2align 3
.L3306:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3307
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3307
	.p2align 4,,10
	.p2align 3
.L3237:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3238
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3238
	.p2align 4,,10
	.p2align 3
.L3157:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3158
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3158
	.p2align 4,,10
	.p2align 3
.L3145:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3146
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3146
	.p2align 4,,10
	.p2align 3
.L3113:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3114
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3114
	.p2align 4,,10
	.p2align 3
.L3225:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L3226
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L3226
.L3918:
	call	_ZSt16__throw_bad_castv
.L3903:
	call	_ZSt16__throw_bad_castv
.L3913:
	call	_ZSt16__throw_bad_castv
.L3905:
	call	_ZSt16__throw_bad_castv
.L3910:
	call	_ZSt16__throw_bad_castv
.L3921:
	call	_ZSt16__throw_bad_castv
.L3914:
	call	_ZSt16__throw_bad_castv
.L3924:
	call	_ZSt16__throw_bad_castv
.L3919:
	call	_ZSt16__throw_bad_castv
.L3915:
	call	_ZSt16__throw_bad_castv
.L3917:
	call	_ZSt16__throw_bad_castv
.L3909:
	call	_ZSt16__throw_bad_castv
.L3904:
	call	_ZSt16__throw_bad_castv
.L3926:
	call	_ZSt16__throw_bad_castv
.L3928:
	call	_ZSt16__throw_bad_castv
.L3927:
	call	_ZSt16__throw_bad_castv
.L3929:
	call	_ZSt16__throw_bad_castv
.L3923:
	call	_ZSt16__throw_bad_castv
.L3925:
	call	_ZSt16__throw_bad_castv
.L3912:
	call	_ZSt16__throw_bad_castv
.L3908:
	call	_ZSt16__throw_bad_castv
.L3916:
	call	_ZSt16__throw_bad_castv
.L3906:
	call	_ZSt16__throw_bad_castv
.L3911:
	call	_ZSt16__throw_bad_castv
.L3920:
	call	_ZSt16__throw_bad_castv
.LEHE127:
.L3447:
	movq	%rax, %rbx
	jmp	.L3367
.L3455:
	movq	%rax, %rbx
	jmp	.L3068
.L3451:
	movq	%rax, %rbp
	jmp	.L3040
.L3453:
	movq	%rax, %rbx
	jmp	.L3054
.L3449:
	movq	%rax, %rbx
	jmp	.L3026
.L3454:
	movq	%rax, %rbx
	jmp	.L3063
.L3450:
	movq	%rax, %rbx
	jmp	.L3035
.L3452:
	movq	%rax, %rbx
	jmp	.L3049
.L3448:
	movq	%rax, %rbx
	jmp	.L3021
	.section	.gcc_except_table
.LLSDA2087:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2087-.LLSDACSB2087
.LLSDACSB2087:
	.uleb128 .LEHB118-.LFB2087
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L3448-.LFB2087
	.uleb128 0
	.uleb128 .LEHB119-.LFB2087
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L3449-.LFB2087
	.uleb128 0
	.uleb128 .LEHB120-.LFB2087
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L3450-.LFB2087
	.uleb128 0
	.uleb128 .LEHB121-.LFB2087
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L3451-.LFB2087
	.uleb128 0
	.uleb128 .LEHB122-.LFB2087
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L3452-.LFB2087
	.uleb128 0
	.uleb128 .LEHB123-.LFB2087
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L3453-.LFB2087
	.uleb128 0
	.uleb128 .LEHB124-.LFB2087
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L3454-.LFB2087
	.uleb128 0
	.uleb128 .LEHB125-.LFB2087
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L3455-.LFB2087
	.uleb128 0
	.uleb128 .LEHB126-.LFB2087
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L3447-.LFB2087
	.uleb128 0
	.uleb128 .LEHB127-.LFB2087
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L3447-.LFB2087
	.uleb128 0
.LLSDACSE2087:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2087
	.type	_Z8testGradv.cold.64, @function
_Z8testGradv.cold.64:
.LFSB2087:
.L3367:
	.cfi_def_cfa_offset 1152
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	1072(%rsp), %rax
	testq	%rax, %rax
	je	.L3368
	leaq	48(%r15), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3368:
	movq	992(%rsp), %rax
	testq	%rax, %rax
	je	.L3076
	leaq	976(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3076:
	movq	912(%rsp), %rax
	testq	%rax, %rax
	je	.L3061
	leaq	896(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3061:
	movq	832(%rsp), %rax
	testq	%rax, %rax
	je	.L3047
	leaq	816(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3047:
	movq	752(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3033
	leaq	736(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rcx
.L3033:
	movq	672(%rsp), %rax
	testq	%rax, %rax
	je	.L3373
	leaq	656(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3373:
	movq	592(%rsp), %rax
	testq	%rax, %rax
	je	.L3374
	leaq	576(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3374:
	movq	512(%rsp), %rax
	testq	%rax, %rax
	je	.L3375
	leaq	496(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3375:
	movq	432(%rsp), %rax
	testq	%rax, %rax
	je	.L3376
	leaq	416(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3376:
	movq	352(%rsp), %rax
	testq	%rax, %rax
	je	.L3377
	leaq	336(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L3377:
	movq	%rbx, %rdi
.LEHB128:
	call	_Unwind_Resume
.LEHE128:
.L3068:
	movq	272(%rsp), %rax
	testq	%rax, %rax
	je	.L3069
	leaq	256(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3069:
	movq	240(%rsp), %rax
	testq	%rax, %rax
	je	.L3065
	leaq	224(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3065:
	movq	992(%rsp), %rax
	testq	%rax, %rax
	je	.L3076
	leaq	976(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L3076
.L3063:
	movq	240(%rsp), %rax
	testq	%rax, %rax
	je	.L3065
	leaq	224(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L3065
.L3040:
	movq	208(%rsp), %rax
	testq	%rax, %rax
	je	.L3041
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rax
.L3041:
	movq	1024(%rsp), %rax
	testq	%rax, %rax
	je	.L3043
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L3043:
	movq	%rbp, %rbx
.L3037:
	movq	832(%rsp), %rax
	testq	%rax, %rax
	je	.L3047
	leaq	816(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L3047
.L3035:
	movq	1024(%rsp), %rax
	testq	%rax, %rax
	je	.L3037
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
	jmp	.L3037
.L3054:
	movq	240(%rsp), %rax
	testq	%rax, %rax
	je	.L3055
	leaq	224(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3055:
	movq	1024(%rsp), %rax
	testq	%rax, %rax
	je	.L3051
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L3051:
	movq	912(%rsp), %rax
	testq	%rax, %rax
	je	.L3061
	leaq	896(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L3061
.L3049:
	movq	1024(%rsp), %rax
	testq	%rax, %rax
	je	.L3051
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
	jmp	.L3051
.L3026:
	movq	176(%rsp), %rax
	testq	%rax, %rax
	je	.L3027
	leaq	160(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L3027:
	movq	1024(%rsp), %rax
	testq	%rax, %rax
	je	.L3023
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
.L3023:
	movq	752(%rsp), %rax
	testq	%rax, %rax
	je	.L3033
	leaq	736(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	jmp	.L3033
.L3021:
	movq	1024(%rsp), %rax
	testq	%rax, %rax
	je	.L3023
	movl	$3, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	*%rax
	jmp	.L3023
	.cfi_endproc
.LFE2087:
	.section	.gcc_except_table
.LLSDAC2087:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2087-.LLSDACSBC2087
.LLSDACSBC2087:
	.uleb128 .LEHB128-.LCOLDB43
	.uleb128 .LEHE128-.LEHB128
	.uleb128 0
	.uleb128 0
.LLSDACSEC2087:
	.section	.text.unlikely
	.text
	.size	_Z8testGradv, .-_Z8testGradv
	.section	.text.unlikely
	.size	_Z8testGradv.cold.64, .-_Z8testGradv.cold.64
.LCOLDE43:
	.text
.LHOTE43:
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2088:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_Z12testAdditionv
	call	_Z15testSubtractionv
	call	_Z18testMultiplicationv
	call	_Z12testDivisionv
	call	_Z14testConversionv
	call	_Z12testMultiplev
	call	_Z8testTanhv
	call	_Z8testGradv
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2088:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z12testAdditionv, @function
_GLOBAL__sub_I__Z12testAdditionv:
.LFB2570:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE2570:
	.size	_GLOBAL__sub_I__Z12testAdditionv, .-_GLOBAL__sub_I__Z12testAdditionv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12testAdditionv
	.section	.rodata
	.align 16
	.type	_ZZ14testConversionvE19__PRETTY_FUNCTION__, @object
	.size	_ZZ14testConversionvE19__PRETTY_FUNCTION__, 22
_ZZ14testConversionvE19__PRETTY_FUNCTION__:
	.string	"void testConversion()"
	.align 16
	.type	_ZZ12testDivisionvE19__PRETTY_FUNCTION__, @object
	.size	_ZZ12testDivisionvE19__PRETTY_FUNCTION__, 20
_ZZ12testDivisionvE19__PRETTY_FUNCTION__:
	.string	"void testDivision()"
	.align 16
	.type	_ZZ18testMultiplicationvE19__PRETTY_FUNCTION__, @object
	.size	_ZZ18testMultiplicationvE19__PRETTY_FUNCTION__, 26
_ZZ18testMultiplicationvE19__PRETTY_FUNCTION__:
	.string	"void testMultiplication()"
	.align 16
	.type	_ZZ15testSubtractionvE19__PRETTY_FUNCTION__, @object
	.size	_ZZ15testSubtractionvE19__PRETTY_FUNCTION__, 23
_ZZ15testSubtractionvE19__PRETTY_FUNCTION__:
	.string	"void testSubtraction()"
	.weak	_ZTSZplR5ValueIiiES1_EUlvE_
	.section	.rodata._ZTSZplR5ValueIiiES1_EUlvE_,"aG",@progbits,_ZTSZplR5ValueIiiES1_EUlvE_,comdat
	.align 16
	.type	_ZTSZplR5ValueIiiES1_EUlvE_, @object
	.size	_ZTSZplR5ValueIiiES1_EUlvE_, 24
_ZTSZplR5ValueIiiES1_EUlvE_:
	.string	"ZplR5ValueIiiES1_EUlvE_"
	.weak	_ZTIZplR5ValueIiiES1_EUlvE_
	.section	.rodata._ZTIZplR5ValueIiiES1_EUlvE_,"aG",@progbits,_ZTIZplR5ValueIiiES1_EUlvE_,comdat
	.align 8
	.type	_ZTIZplR5ValueIiiES1_EUlvE_, @object
	.size	_ZTIZplR5ValueIiiES1_EUlvE_, 16
_ZTIZplR5ValueIiiES1_EUlvE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZplR5ValueIiiES1_EUlvE_
	.weak	_ZTSZmlR5ValueIiiES1_EUlvE_
	.section	.rodata._ZTSZmlR5ValueIiiES1_EUlvE_,"aG",@progbits,_ZTSZmlR5ValueIiiES1_EUlvE_,comdat
	.align 16
	.type	_ZTSZmlR5ValueIiiES1_EUlvE_, @object
	.size	_ZTSZmlR5ValueIiiES1_EUlvE_, 24
_ZTSZmlR5ValueIiiES1_EUlvE_:
	.string	"ZmlR5ValueIiiES1_EUlvE_"
	.weak	_ZTIZmlR5ValueIiiES1_EUlvE_
	.section	.rodata._ZTIZmlR5ValueIiiES1_EUlvE_,"aG",@progbits,_ZTIZmlR5ValueIiiES1_EUlvE_,comdat
	.align 8
	.type	_ZTIZmlR5ValueIiiES1_EUlvE_, @object
	.size	_ZTIZmlR5ValueIiiES1_EUlvE_, 16
_ZTIZmlR5ValueIiiES1_EUlvE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZmlR5ValueIiiES1_EUlvE_
	.weak	_ZTSZmlR5ValueIddES1_EUlvE_
	.section	.rodata._ZTSZmlR5ValueIddES1_EUlvE_,"aG",@progbits,_ZTSZmlR5ValueIddES1_EUlvE_,comdat
	.align 16
	.type	_ZTSZmlR5ValueIddES1_EUlvE_, @object
	.size	_ZTSZmlR5ValueIddES1_EUlvE_, 24
_ZTSZmlR5ValueIddES1_EUlvE_:
	.string	"ZmlR5ValueIddES1_EUlvE_"
	.weak	_ZTIZmlR5ValueIddES1_EUlvE_
	.section	.rodata._ZTIZmlR5ValueIddES1_EUlvE_,"aG",@progbits,_ZTIZmlR5ValueIddES1_EUlvE_,comdat
	.align 8
	.type	_ZTIZmlR5ValueIddES1_EUlvE_, @object
	.size	_ZTIZmlR5ValueIddES1_EUlvE_, 16
_ZTIZmlR5ValueIddES1_EUlvE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZmlR5ValueIddES1_EUlvE_
	.weak	_ZTSZplR5ValueIddES1_EUlvE_
	.section	.rodata._ZTSZplR5ValueIddES1_EUlvE_,"aG",@progbits,_ZTSZplR5ValueIddES1_EUlvE_,comdat
	.align 16
	.type	_ZTSZplR5ValueIddES1_EUlvE_, @object
	.size	_ZTSZplR5ValueIddES1_EUlvE_, 24
_ZTSZplR5ValueIddES1_EUlvE_:
	.string	"ZplR5ValueIddES1_EUlvE_"
	.weak	_ZTIZplR5ValueIddES1_EUlvE_
	.section	.rodata._ZTIZplR5ValueIddES1_EUlvE_,"aG",@progbits,_ZTIZplR5ValueIddES1_EUlvE_,comdat
	.align 8
	.type	_ZTIZplR5ValueIddES1_EUlvE_, @object
	.size	_ZTIZplR5ValueIddES1_EUlvE_, 16
_ZTIZplR5ValueIddES1_EUlvE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZplR5ValueIddES1_EUlvE_
	.weak	_ZTSZN5ValueIddE4tanhEvEUlvE_
	.section	.rodata._ZTSZN5ValueIddE4tanhEvEUlvE_,"aG",@progbits,_ZTSZN5ValueIddE4tanhEvEUlvE_,comdat
	.align 16
	.type	_ZTSZN5ValueIddE4tanhEvEUlvE_, @object
	.size	_ZTSZN5ValueIddE4tanhEvEUlvE_, 26
_ZTSZN5ValueIddE4tanhEvEUlvE_:
	.string	"ZN5ValueIddE4tanhEvEUlvE_"
	.weak	_ZTIZN5ValueIddE4tanhEvEUlvE_
	.section	.rodata._ZTIZN5ValueIddE4tanhEvEUlvE_,"aG",@progbits,_ZTIZN5ValueIddE4tanhEvEUlvE_,comdat
	.align 8
	.type	_ZTIZN5ValueIddE4tanhEvEUlvE_, @object
	.size	_ZTIZN5ValueIddE4tanhEvEUlvE_, 16
_ZTIZN5ValueIddE4tanhEvEUlvE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZN5ValueIddE4tanhEvEUlvE_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC15:
	.quad	_ZNSt17_Function_handlerIFvvEZmlR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.align 8
.LC16:
	.quad	_ZNSt17_Function_handlerIFvvEZplR5ValueIiiES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.align 8
.LC28:
	.long	0
	.long	1073741824
	.align 8
.LC29:
	.long	2576980378
	.long	-1073112679
	.align 8
.LC30:
	.long	0
	.long	1076166656
	.align 8
.LC31:
	.long	2576980378
	.long	-1072064103
	.align 8
.LC32:
	.long	0
	.long	-1073217536
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC33:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC35:
	.quad	_ZNSt17_Function_handlerIFvvEZmlR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.align 8
.LC36:
	.quad	_ZNSt17_Function_handlerIFvvEZplR5ValueIddES3_EUlvE_E9_M_invokeERKSt9_Any_data
	.align 8
.LC37:
	.quad	_ZNSt17_Function_handlerIFvvEZN5ValueIddE4tanhEvEUlvE_E9_M_invokeERKSt9_Any_data
	.align 8
.LC40:
	.long	3425647237
	.long	1075545734
	.align 8
.LC41:
	.long	0
	.long	-1072168960
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-22)"
	.section	.note.GNU-stack,"",@progbits
