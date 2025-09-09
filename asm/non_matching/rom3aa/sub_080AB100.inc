	.syntax unified
sub_080AB100:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x3c
	bgt _080AB15E
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB15E
	ldr r0, _080AB164
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080AB15E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB164: .4byte 0x0000021E
	.syntax divided
