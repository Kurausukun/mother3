	.syntax unified
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _08057D38
	ldr r2, _08057D3C
	adds r4, r1, r2
	ldrb r2, [r4]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r4]
	ldr r2, _08057D40
	adds r3, r1, r2
	movs r2, #0
	strh r2, [r3]
	ldr r3, _08057D44
	adds r1, r1, r3
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0x78
	bl sub_080031F0
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057D38: .4byte gSomeBlend
_08057D3C: .4byte 0x00002CB0
_08057D40: .4byte 0x00002CB4
_08057D44: .4byte 0x00002CFC
	.syntax divided
