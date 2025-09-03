	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
	cmp r7, r6
	bgt _08066246
_080661E8:
	subs r2, r6, r7
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r3, r6, #0
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
	adds r7, #1
	cmp r7, r6
	ble _080661E8
_08066246:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
