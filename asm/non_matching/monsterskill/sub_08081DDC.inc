	.syntax unified
sub_08081DDC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r0, _08081E8C
	adds r4, r4, r0
	mov r1, r8
	ldrh r0, [r1]
	adds r6, r5, #0
	adds r6, #0x98
	strh r0, [r6]
	ldr r2, [r5, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	mov r2, r8
	ldrh r2, [r2, #2]
	adds r1, r1, r2
	movs r3, #0x9a
	adds r3, r3, r5
	mov r8, r3
	strh r1, [r3]
	movs r0, #0
	ldrsh r6, [r6, r0]
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r3, r8
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0x72
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r1, sp, #4
	adds r2, r2, r0
	strh r6, [r1]
	strh r2, [r1, #2]
	adds r0, r5, #0
	bl sub_0806DB74
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081E8C: .4byte gMonsterData
	.syntax divided
