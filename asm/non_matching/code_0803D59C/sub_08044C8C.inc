	.syntax unified
sub_08044C8C:
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x2c
	mov sb, r0
	mov sl, r1
	ldr r0, _08044D9C
	mov r8, r0
	add r1, sp, #0x18
	movs r2, #0x14
	bl sub_08001B18
	mov r0, sb
	bl sub_080552E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r3, sp, #0x18
	ldr r2, _08044DA0
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r2, r4, #0
	ldrh r1, [r1]
	adds r2, r2, r1
	movs r5, #0
	movs r4, #0
	strh r2, [r3, #2]
	adds r2, r3, #0
	ldr r1, _08044DA4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #5
	strh r0, [r2, #4]
	adds r0, r2, #0
	strb r5, [r0, #0xc]
	adds r1, r0, #0
	movs r0, #8
	strh r0, [r1, #0x10]
	movs r0, #0x88
	strh r0, [r1, #0x12]
	adds r0, r1, #0
	bl sub_08046A64
	mov r1, sb
	ldr r0, [r1, #0x18]
	str r4, [sp]
	movs r6, #0x9c
	lsls r6, r6, #2
	str r6, [sp, #4]
	movs r5, #0xb
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x24
	movs r2, #0x8c
	movs r3, #3
	bl sub_08046BA8
	movs r2, #0xeb
	lsls r2, r2, #2
	add r8, r2
	str r4, [sp]
	mov r0, r8
	movs r1, #0x24
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
	mov r1, sl
	ldr r0, [r1, #8]
	str r4, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x2b
	movs r2, #0x94
	movs r3, #3
	bl sub_08046BA8
	mov r2, sb
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x46
	movs r2, #0x8c
	movs r3, #3
	bl sub_08046BA8
	str r4, [sp]
	mov r0, r8
	movs r1, #0x46
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
	mov r2, sl
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x4d
	movs r2, #0x94
	movs r3, #3
	bl sub_08046BA8
	mov r0, sb
	movs r1, #0x68
	movs r2, #0x8d
	movs r3, #0
	bl sub_080443A4
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044D9C: .4byte gUnknown_080C629C
_08044DA0: .4byte gUnknown_080C6994
_08044DA4: .4byte gUnknown_080C69B8
	.syntax divided
