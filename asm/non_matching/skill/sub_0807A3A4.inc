    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	ldr r0, [r1, #0x20]
	str r0, [sp, #0x44]
	ldr r1, [r6, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807A46C
	adds r5, r6, #0
	adds r5, #0x28
	add r7, sp, #0x44
	mov ip, r7
	movs r4, #0
	ldr r3, [r5, #4]
	mov sl, ip
	adds r7, r6, #0
	adds r7, #0x34
	cmp r4, r3
	bge _0807A424
	ldr r0, [r5, #8]
	mov r8, r0
_0807A3EC:
	lsls r0, r4, #2
	mov r1, r8
	adds r2, r0, r1
	ldr r1, [r2]
	mov r6, ip
	ldr r0, [r6]
	cmp r1, r0
	bne _0807A41C
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	cmp r0, #0
	ble _0807A416
	adds r2, r0, #0
_0807A40C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0807A40C
_0807A416:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0807A41C:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0807A3EC
_0807A424:
	adds r5, r7, #0
	mov r8, sl
	movs r4, #0
	ldr r3, [r7, #4]
	cmp r4, r3
	blt _0807A432
	b _0807A704
_0807A432:
	ldr r6, [r7, #8]
_0807A434:
	lsls r0, r4, #2
	adds r2, r0, r6
	ldr r1, [r2]
	mov r7, r8
	ldr r0, [r7]
	cmp r1, r0
	bne _0807A462
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	cmp r0, #0
	ble _0807A45C
	adds r2, r0, #0
_0807A452:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0807A452
_0807A45C:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0807A462:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0807A434
	b _0807A704
_0807A46C:
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x44]
	cmp r1, r0
	bne _0807A538
	adds r5, r6, #0
	adds r5, #0x28
	add r7, sp, #0x44
	mov ip, r7
	movs r4, #0
	ldr r3, [r5, #4]
	ldr r0, [r6, #0x1c]
	mov sb, r0
	mov sl, ip
	adds r7, r6, #0
	adds r7, #0x34
	cmp r4, r3
	bge _0807A4DC
	ldr r1, [r5, #8]
	mov r8, r1
_0807A4A4:
	lsls r0, r4, #2
	mov r1, r8
	adds r2, r0, r1
	mov r1, ip
	ldr r0, [r1]
	ldr r1, [r2]
	cmp r1, r0
	bne _0807A4D4
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	cmp r0, #0
	ble _0807A4CE
	adds r2, r0, #0
_0807A4C4:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0807A4C4
_0807A4CE:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0807A4D4:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0807A4A4
_0807A4DC:
	adds r5, r7, #0
	mov r8, sl
	movs r4, #0
	ldr r3, [r7, #4]
	cmp r4, r3
	bge _0807A524
	ldr r7, [r7, #8]
	mov sl, r7
_0807A4EC:
	lsls r0, r4, #2
	mov r7, sl
	adds r2, r0, r7
	ldr r1, [r2]
	mov r7, r8
	ldr r0, [r7]
	cmp r1, r0
	bne _0807A51C
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	cmp r0, #0
	ble _0807A516
	adds r2, r0, #0
_0807A50C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0807A50C
_0807A516:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0807A51C:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0807A4EC
_0807A524:
	movs r1, #0xd0
	lsls r1, r1, #1
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0807A704
_0807A538:
	ldr r1, [r6, #0x1c]
	movs r7, #0xfc
	lsls r7, r7, #1
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	subs r7, #0x98
	adds r1, r1, r7
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
	ldr r1, [sp, #0x44]
	mov r0, sp
	bl attackdata_f8__C10UnitTargetP4Unit
	adds r4, r0, #0
	mov r0, sp
	bl numTargets__C10UnitTarget
	cmp r4, r0
	bge _0807A592
	mov r0, sp
	movs r1, #2
	bl _._10UnitTarget
	b _0807A704
_0807A592:
	adds r5, r6, #0
	adds r5, #0x28
	add r7, sp, #0x44
	mov ip, r7
	movs r4, #0
	ldr r3, [r5, #4]
	mov sl, ip
	adds r7, r6, #0
	adds r7, #0x34
	cmp r4, r3
	bge _0807A5E6
	ldr r0, [r5, #8]
	mov r8, r0
_0807A5AC:
	lsls r0, r4, #2
	mov r1, r8
	adds r2, r0, r1
	ldr r0, [r2]
	mov sb, r0
	mov r1, ip
	ldr r0, [r1]
	cmp sb, r0
	bne _0807A5DE
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	cmp r0, #0
	ble _0807A5D8
	adds r2, r0, #0
_0807A5CE:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0807A5CE
_0807A5D8:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0807A5DE:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0807A5AC
_0807A5E6:
	adds r5, r7, #0
	mov ip, sl
	movs r2, #0
	mov sb, r2
	movs r4, #0
	ldr r3, [r5, #4]
	cmp sb, r3
	bge _0807A638
	ldr r7, [r5, #8]
	mov r8, r7
_0807A5FA:
	lsls r0, r4, #2
	mov r1, r8
	adds r2, r0, r1
	ldr r1, [r2]
	mov r7, ip
	ldr r0, [r7]
	cmp r1, r0
	bne _0807A630
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	mov r7, sb
	adds r7, #1
	cmp r0, #0
	ble _0807A628
	adds r2, r0, #0
_0807A61E:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0807A61E
_0807A628:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
	mov sb, r7
_0807A630:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0807A5FA
_0807A638:
	mov r8, sb
	mov r0, r8
	cmp r0, #0
	ble _0807A6FC
	ldr r1, [r6, #0x1c]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807A6D0
	movs r4, #0
	b _0807A680
_0807A660:
	ldr r1, [r6, #0x1c]
	movs r0, #0xc4
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
_0807A680:
	ldr r1, [r6, #0x1c]
	movs r7, #0xc0
	lsls r7, r7, #1
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _0807A660
	movs r7, #0
	b _0807A6BE
_0807A69C:
	ldr r4, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r6, r5
	mov r0, sp
	adds r1, r7, #0
	bl attackdata_118__10UnitTargeti
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_0807A6BE:
	mov r0, sp
	bl attackdata_110__C10UnitTarget
	mov r1, r8
	cmp r1, r0
	ble _0807A6CC
	adds r1, r0, #0
_0807A6CC:
	cmp r7, r1
	blt _0807A69C
_0807A6D0:
	ldr r1, [r6, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807A6FC
	ldr r1, [r6, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0807A6FC:
	mov r0, sp
	movs r1, #2
	bl _._10UnitTarget
_0807A704:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .syntax divided
