	.syntax unified
sub_08058DA0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0xa6
	bl sub_08036DF4
	adds r5, r0, #0
	bl sub_08002C4C
	movs r1, #2
	bl sub_08002ABC
	ldr r4, _08058DF8
	ldr r2, _08058DFC
	adds r1, r4, r2
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08002C4C
	movs r1, #1
	bl sub_08002ABC
	ldr r1, _08058E00
	adds r4, r4, r1
	str r0, [r4]
	movs r2, #0
	movs r4, #2
	rsbs r4, r4, #0
	movs r3, #3
	rsbs r3, r3, #0
	adds r6, #0x4d
_08058DDC:
	ldrb r0, [r6]
	adds r1, r4, #0
	ands r1, r0
	ands r1, r3
	strb r1, [r6]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r6, #0x54
	cmp r2, #0xf
	bls _08058DDC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058DF8: .4byte gSomeBlend
_08058DFC: .4byte 0x00002D24
_08058E00: .4byte 0x00002D28
	.syntax divided
