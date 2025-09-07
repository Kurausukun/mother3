	.syntax unified
sub_08088C08:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl get__17ObjPltPoolManager
	adds r6, r0, #0
	ldrb r0, [r4, #5]
	lsrs r0, r0, #4
	lsls r0, r0, #5
	ldr r1, [r5, #0xc]
	adds r5, r1, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0__10ObjPltPooli
	adds r4, r0, #0
	ldr r0, _08088C50
	cmp r4, r0
	bne _08088C46
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_08088C46:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08088C50: .4byte 0x0000FFFF
	.syntax divided
