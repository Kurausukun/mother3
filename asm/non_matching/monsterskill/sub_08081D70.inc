	.syntax unified
sub_08081D70:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
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
	ldr r0, _08081DD8
	adds r4, r4, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806DB60
	adds r0, r6, #0
	adds r0, #0x98
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, #2
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, #0x72
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r4, r0]
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r3, [r0]
	strh r1, [r2, #2]
	adds r0, r6, #0
	mov r1, sp
	bl sub_0806DB74
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081DD8: .4byte gMonsterData
	.syntax divided
