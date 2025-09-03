	.syntax unified
sub_08038A40:
	push {r4, r5, r6, lr}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #3
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08038AA6
	ldr r0, _08038AB0
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	ldr r2, _08038AB4
	adds r1, r1, r2
	asrs r1, r1, #0x10
	lsls r6, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r6, r6, r2
	asrs r6, r6, #0x10
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08038AB8
	ldr r0, [r0, #8]
	subs r4, #0xe
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #1
	str r1, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_0803D878
_08038AA6:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038AB0: .4byte gUnknown_080C1EE0
_08038AB4: .4byte 0xFFE00000
_08038AB8: .4byte gSave
	.syntax divided
