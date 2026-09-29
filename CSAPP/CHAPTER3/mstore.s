	.file	"mstore.c"
	.text
	.globl	multstore                       # -- Begin function multstore
	.p2align	4
	.type	multstore,@function
multstore:                              # @multstore
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
                                        # fake_use: $rbx
                                        # fake_use: $rsi
                                        # fake_use: $rdi
	callq	mult2
	movq	%rax, (%rbx)
                                        # fake_use: $rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	multstore, .Lfunc_end0-multstore
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 22.1.8 (Fedora 22.1.8-4.fc44)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
