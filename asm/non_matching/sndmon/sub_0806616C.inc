	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	cmp r6, r7
	bgt _080661D6
_08066178:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08069558
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__11BattleFaderUi
	ldr r1, [r5, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__11BattleFaderUi
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__11BattleFaderUi
	movs r0, #1
	bl setsleep
	adds r6, #1
	cmp r6, r7
	ble _08066178
_080661D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
