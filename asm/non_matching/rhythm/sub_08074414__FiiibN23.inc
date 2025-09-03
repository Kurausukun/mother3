	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r5, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r6, #0
	cmp r6, r5
	bgt _08074484
_0807443C:
	subs r2, r5, r6
	ldr r0, [sp]
	mov r1, sl
	adds r3, r5, #0
	bl sub_08069558
	adds r4, r0, #0
	mov r0, sb
	cmp r0, #1
	bne _0807445A
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__11BattleFaderUi
_0807445A:
	mov r0, r8
	cmp r0, #1
	bne _0807446A
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__11BattleFaderUi
_0807446A:
	cmp r7, #1
	bne _08074478
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__11BattleFaderUi
_08074478:
	movs r0, #1
	bl setsleep
	adds r6, #1
	cmp r6, r5
	ble _0807443C
_08074484:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
