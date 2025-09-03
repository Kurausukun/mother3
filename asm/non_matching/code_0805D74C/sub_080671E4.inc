	.syntax unified
sub_080671E4:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r0, #0
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08067290
	mov r1, sp
	ldr r0, _08067234
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r1, _08067238
	adds r0, r4, r1
	ldrh r0, [r0]
	lsls r1, r0, #3
	mov r2, sp
	adds r0, r2, r1
	movs r3, #2
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble _0806723C
	movs r7, #4
	ldrsh r0, [r0, r7]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #3
	adds r0, r0, r1
	subs r0, #8
	ldr r5, [r0]
	ldr r6, [r0, #4]
	adds r3, r6, #0
	b _08067242
	.align 2, 0
_08067234: .4byte gUnknown_080FE218
_08067238: .4byte 0x0000043C
_0806723C:
	add r0, sp, #4
	adds r0, r0, r1
	ldr r3, [r0]
_08067242:
	ldr r1, _0806725C
	adds r0, r4, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	add r0, sp
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r2, #0
	ble _08067260
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _08067262
	.align 2, 0
_0806725C: .4byte 0x0000043C
_08067260:
	adds r0, r1, #0
_08067262:
	adds r0, r4, r0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08067290
	ldr r1, _08067298
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, _0806729C
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08067290:
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067298: .4byte 0x0000043C
_0806729C: .4byte 0x000004B4
	.syntax divided
