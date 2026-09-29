	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_c2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0"
	.file	"mstore.c"
	.text
	.globl	multstore                       # -- Begin function multstore
	.p2align	1
	.type	multstore,@function
multstore:                              # @multstore
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a2
	call	mult2
	sd	a0, 0(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	multstore, .Lfunc_end0-multstore
                                        # -- End function
	.ident	"clang version 22.1.8 (Fedora 22.1.8-4.fc44)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
