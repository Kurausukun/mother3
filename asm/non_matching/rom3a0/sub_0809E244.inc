	.syntax unified
sub_0809E244:
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r4, #0
	b _0809E26A
_0809E24C:
	adds r0, r4, #0
	bl GetPlayer
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r6, r6, r0
	adds r4, #1
_0809E26A:
	bl getPartyCount
	cmp r4, r0
	blt _0809E24C
	bl getPartyCount
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0807066C
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
	b _0809E2A4
_0809E286:
	adds r0, r4, #0
	bl sub_08072E18__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r5, r5, r0
	adds r4, #1
_0809E2A4:
	bl sub_08072DFC__Fv
	cmp r4, r0
	blt _0809E286
	bl sub_08072DFC__Fv
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0807066C
	adds r5, r0, #0
	ldr r0, _0809E2D4
	ldrb r0, [r0]
	cmp r0, #2
	beq _0809E2E8
	bl sub_08072758
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809E2D8
	movs r4, #0
	b _0809E31A
	.align 2, 0
_0809E2D4: .4byte gEncounter
_0809E2D8:
	bl sub_08072718
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809E2E8
	cmp r6, r5
	ble _0809E2EC
_0809E2E8:
	movs r4, #0x64
	b _0809E31A
_0809E2EC:
	cmp r6, r5
	bne _0809E308
	ldr r0, _0809E304
	ldr r1, [r0]
	adds r2, r1, #0
	adds r1, #1
	str r1, [r0]
	movs r4, #0x64
	cmp r2, #0
	bgt _0809E31A
	b _0809E318
	.align 2, 0
_0809E304: .4byte gUnknown_02002210
_0809E308:
	ldr r0, _0809E334
	ldr r1, [r0]
	adds r2, r1, #0
	adds r1, #1
	str r1, [r0]
	movs r4, #0x64
	cmp r2, #1
	bgt _0809E31A
_0809E318:
	movs r4, #0x32
_0809E31A:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, r4
	bge _0809E32A
	movs r1, #1
_0809E32A:
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809E334: .4byte gUnknown_02002210
	.syntax divided
