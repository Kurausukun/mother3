	.syntax unified
sub_080A8BF4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A8C96
	lsls r0, r0, #2
	ldr r1, _080A8C10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8C10: .4byte _080A8C14
_080A8C14:
	.4byte _080A8C28
	.4byte _080A8C3E
	.4byte _080A8C54
	.4byte _080A8C6A
	.4byte _080A8C80
_080A8C28:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C3E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C54:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C80:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C96:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A8CEE
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl getMonsterSkill
	b _080A8CF0
_080A8CEE:
	movs r0, #0
_080A8CF0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
