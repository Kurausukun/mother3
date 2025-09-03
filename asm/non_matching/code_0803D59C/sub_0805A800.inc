	.syntax unified
sub_0805A800:
	push {r4, r5, lr}
	sub sp, #8
	ldr r4, _0805A83C
	ldr r0, _0805A840
	adds r4, r4, r0
	ldr r0, [r4]
	bl sub_08002C4C
	adds r5, r0, #0
	ldr r0, [r4]
	bl sub_08002C54
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002ABC
	movs r1, #0x78
	str r1, [sp]
	movs r1, #0xa0
	str r1, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805A844
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A83C: .4byte gSomeBlend
_0805A840: .4byte 0x00002CB0
	.syntax divided
