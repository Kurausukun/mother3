    .syntax unified
sub_0805DC6C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0805DDE0 @ =gEncounter
	adds r0, #0x66
	ldrb r0, [r0]
	str r0, [r4, #0x38]
	movs r0, #0x3c
	bl __builtin_new
	movs r1, #0xa0
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0xf0
	bl __9ComboRootUiUiUiUi
	str r0, [r4, #0x44]
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0805F018
	str r0, [r4, #0x48]
	movs r0, #0x8c
	bl __builtin_new
	bl sub_0805F98C
	str r0, [r4, #0x4c]
	movs r0, #0x40
	bl __builtin_new
	bl sub_08061A68
	str r0, [r4, #0x50]
	movs r0, #0xa4
	bl __builtin_new
	bl MonsterInfo_ct
	str r0, [r4, #0x54]
	movs r0, #0x3c
	bl __builtin_new
	bl sub_0805F1C0
	str r0, [r4, #0x58]
	movs r0, #0x14
	bl __builtin_new
	bl sub_08065A80
	str r0, [r4, #0x5c]
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl setBattleResult__6Battleib
_0805DD02:
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805DD02
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x5c]
	cmp r2, #0
	beq _0805DD54
	ldr r1, [r2, #0x10]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DD54:
	ldr r2, [r4, #0x58]
	cmp r2, #0
	beq _0805DD6A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DD6A:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	beq _0805DD80
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DD80:
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _0805DD96
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DD96:
	ldr r2, [r4, #0x4c]
	cmp r2, #0
	beq _0805DDAC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DDAC:
	ldr r2, [r4, #0x48]
	cmp r2, #0
	beq _0805DDC2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DDC2:
	ldr r2, [r4, #0x44]
	cmp r2, #0
	beq _0805DDD8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DDD8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDE0: .4byte gEncounter
    .syntax divided
