	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	cmp r1, #0
	ble _08074360
	adds r6, r2, #0
	adds r4, r1, #0
_08074344:
	ldr r2, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	ldm r6!, {r1}
	ldr r2, [r2, #4]
	bl _call_via_r2
	subs r4, #1
	cmp r4, #0
	bne _08074344
_08074360:
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r5, #0
	beq _0807438C
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807438C:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
