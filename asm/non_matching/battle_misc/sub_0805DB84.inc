	.syntax unified
sub_0805DB84:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805DC18
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x34]
	cmp r2, #0
	beq _0805DBA4
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DBA4:
	bl sub_0806FBB4
	bl sub_0806EC14
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0805DBC6
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DBC6:
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _0805DBE0
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DBE0:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	beq _0805DBFA
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DBFA:
	adds r0, r4, #0
	bl sub_0805DC1C__6Battle
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DC18: .4byte vt_09F45058
	.syntax divided
