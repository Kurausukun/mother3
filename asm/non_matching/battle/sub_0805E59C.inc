    .syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x40]
	cmp r0, #5
	bne _0805E5AE
	movs r0, #1
	b _0805E65E
_0805E5AE:
	cmp r1, #1
	bne _0805E5C2
	movs r0, #1
	movs r1, #1
	bl sub_08073018__FbT0
	bl sub_08072B70__Fv
	bl sub_08072D0C__Fv
_0805E5C2:
	ldr r1, [r4, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0805E608
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E608
	adds r0, r4, #0
	movs r1, #3
	b _0805E652
_0805E608:
	bl sub_08072A88__Fv
	cmp r0, #0
	bgt _0805E62E
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E62E
	adds r0, r4, #0
	movs r1, #4
	b _0805E652
_0805E62E:
	bl GetMonsterCount
	cmp r0, #0
	bgt _0805E65C
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E65C
	adds r0, r4, #0
	movs r1, #2
_0805E652:
	movs r2, #0
	bl setBattleResult__6Battleib
	movs r0, #1
	b _0805E65E
_0805E65C:
	movs r0, #0
_0805E65E:
	pop {r4}
	pop {r1}
	bx r1
    .syntax divided
