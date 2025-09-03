	.syntax unified
sub_0804863C:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r2, r1, r0
	ldrh r1, [r2]
	ldr r0, _08048650
	cmp r1, r0
	bhi _08048654
	adds r0, r1, #0
	b _08048656
	.align 2, 0
_08048650: .4byte 0x0000FFEF
_08048654:
	movs r0, #0
_08048656:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
