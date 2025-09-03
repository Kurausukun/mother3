	.syntax unified
sub_08057CB4:
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _08057CF4
	ldr r2, _08057CF8
	adds r4, r1, r2
	ldrb r2, [r4]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4]
	ldr r2, _08057CFC
	adds r4, r1, r2
	ldrb r2, [r4]
	movs r3, #2
	orrs r2, r3
	strb r2, [r4]
	ldr r2, _08057D00
	adds r1, r1, r2
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0x20
	bl sub_080031F0
	movs r0, #0x3a
	bl sub_080038A4
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057CF4: .4byte gSomeBlend
_08057CF8: .4byte 0x00002CB0
_08057CFC: .4byte 0x00002CB1
_08057D00: .4byte 0x00002CFC
	.syntax divided
