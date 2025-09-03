	.syntax unified
sub_080052E4:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	ldr r4, _08005314
	ldr r0, _08005318
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800531C
	movs r1, #0
	strb r3, [r0]
	cmp r3, #2
	bne _08005328
	ldr r2, _08005320
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08005324
	adds r1, r4, r0
	movs r0, #0x14
	b _08005340
	.align 2, 0
_08005314: .4byte gGame
_08005318: .4byte 0x00009D14
_0800531C: .4byte gUnknown_020051E4
_08005320: .4byte 0x0000595C
_08005324: .4byte 0x00005960
_08005328:
	cmp r3, #2
	blt _08005342
	cmp r3, #5
	bgt _08005342
	cmp r3, #4
	blt _08005342
	ldr r2, _08005348
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0800534C
	adds r1, r4, r0
	movs r0, #0x28
_08005340:
	strh r0, [r1]
_08005342:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005348: .4byte 0x0000595C
_0800534C: .4byte 0x00005960
	.syntax divided
