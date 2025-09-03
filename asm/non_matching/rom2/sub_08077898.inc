	.syntax unified
sub_08077898:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x44
	adds r6, r0, #0
	ldr r0, [r6, #0x60]
	cmp r0, #4
	bne _080778AA
	b _08077A3C
_080778AA:
	ldr r1, [r1, #0x20]
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r8, r0
	bne _080778D8
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08077A3C
_080778D8:
	ldr r1, [r6, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl __10UnitTargetUsP4Unit
	mov r0, sp
	bl attackdata_c8__10UnitTarget
	mov r0, sp
	mov r1, r8
	bl attackdata_f8__C10UnitTargetP4Unit
	adds r4, r0, #0
	mov r0, sp
	bl numTargets__C10UnitTarget
	cmp r4, r0
	bge _08077924
	b _08077A34
_08077924:
	ldr r1, [r6, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080779A4
	movs r4, #0
	b _0807795E
_08077942:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r0, sp
	bl removeTarget__10UnitTargetP4Unit
	adds r4, #1
_0807795E:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08077942
	movs r7, #0
	b _08077994
_08077976:
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	adds r1, r7, #0
	bl attackdata_f0__10UnitTargeti
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08077994:
	mov r0, sp
	bl numTargets__C10UnitTarget
	cmp r7, r0
	blt _08077976
	adds r0, r6, #0
	bl sub_08076BBC
_080779A4:
	ldr r1, [r6, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08077A34
	movs r4, #0
	b _080779E6
_080779C6:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r0, sp
	bl attackdata_108__10UnitTargetP4Unit
	adds r4, #1
_080779E6:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _080779C6
	movs r7, #0
	b _08077A24
_08077A02:
	ldr r4, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	mov r0, sp
	adds r1, r7, #0
	bl attackdata_118__10UnitTargeti
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08077A24:
	mov r0, sp
	bl attackdata_110__C10UnitTarget
	cmp r7, r0
	blt _08077A02
	adds r0, r6, #0
	bl sub_08076D18
_08077A34:
	mov r0, sp
	movs r1, #2
	bl _._10UnitTarget
_08077A3C:
	add sp, #0x44
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
