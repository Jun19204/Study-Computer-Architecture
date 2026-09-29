	.file	"mstore.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0_zcd1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	multstore
	.type	multstore, @function
multstore:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	.cfi_offset 1, -8
	sd	a2,8(sp)
	call	mult2
	ld	a2,8(sp)
	ld	ra,24(sp)
	.cfi_restore 1
	sd	a0,0(a2)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	multstore, .-multstore
	.ident	"GCC: (GNU) 16.2.1 20260819 (Red Hat Cross 16.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
