	.syntax unified
sub_08080060:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x180
	adds r7, r1, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl __16UnitTargetChoiceUsP4Unit
	mov r0, sp
	bl sub_08076B30
	mov r8, r0
	movs r6, #0
	b _080800D0
_080800AE:
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	mov r0, sp
	adds r1, r6, #0
	bl attackdata_118__10UnitTargeti
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_080800D0:
	mov r0, sp
	bl attackdata_110__C10UnitTarget
	cmp r6, r0
	blt _080800AE
	mov r0, sp
	movs r1, #2
	bl _._16UnitTargetChoice
	mov r0, r8
	add sp, #0x180
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
