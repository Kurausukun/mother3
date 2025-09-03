	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x2c
	adds r6, r0, #0
	mov sl, r1
	adds r4, r2, #0
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _080863C4
	str r0, [r6, #0x1c]
	movs r0, #0x50
	adds r0, r0, r6
	mov sb, r0
	bl sub_08071268
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	str r0, [r6, #0x3c]
	movs r3, #2
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	str r0, [r6, #0x40]
	adds r1, r6, #0
	adds r1, #0x4c
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xd6
	lsls r0, r0, #2
	movs r1, #0xea
	lsls r1, r1, #2
	bl randS32
	ldr r2, _080863C8
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r0, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r4, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r4, r0
	mov r8, r1
	subs r4, r4, r0
	ldr r0, _080863CC
	ldr r1, _080863D0
	bl randS32
	adds r5, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl sub_080695D4
	str r0, [r6, #0x44]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080695D4
	str r0, [r6, #0x48]
	mov r0, sb
	mov r1, sl
	bl sub_0807138C
	mov r0, sb
	movs r1, #1
	bl sub_080714A0
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r3, _080863D4
	mov r8, r3
	ldr r0, _080863D8
	str r0, [sp, #0x24]
	ldr r0, _080863DC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r6, #0
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080863C4: .4byte vt_09F846C8
_080863C8: .4byte gUnknown_080EF880
_080863CC: .4byte 0xFFFE0C00
_080863D0: .4byte 0xFFFE7000
_080863D4: .4byte _vt.3Unk
_080863D8: .4byte _vt.12PostAppClock
_080863DC: .4byte gUnknown_08111478
	.syntax divided
