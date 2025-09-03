	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	lsls r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x1b
	mov r8, r0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	movs r1, #0
	cmp r1, r3
	bhs _08022200
	ldrh r2, [r5]
	movs r0, #0xe5
	lsls r0, r0, #1
	cmp r2, r0
	beq _080221DC
	subs r0, #0x5e
	cmp r2, r0
	beq _080221DC
	mov r0, sp
	strh r1, [r0]
	b _08022200
_080221DC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	bhs _08022200
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	movs r0, #0xe5
	lsls r0, r0, #1
	cmp r2, r0
	beq _080221DC
	subs r0, #0x5e
	cmp r2, r0
	beq _080221DC
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_08022200:
	lsls r0, r3, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r1, [r0]
	movs r0, #0xe5
	lsls r0, r0, #1
	cmp r1, r0
	bne _08022242
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08022252
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080222C0
	adds r4, r0, #0
	subs r4, #2
	movs r1, #0
	cmp r1, r6
	bhs _0802223C
_0802222C:
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r6
	blo _0802222C
_0802223C:
	movs r1, #0xe5
	lsls r1, r1, #1
	b _08022288
_08022242:
	movs r0, #0xb6
	lsls r0, r0, #1
	cmp r1, r0
	bne _08022290
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08022260
_08022252:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080222C0
	adds r4, r0, #0
	b _080222B2
_08022260:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080222C0
	adds r4, r0, #0
	subs r4, #2
	movs r1, #0
	cmp r1, r6
	bhs _08022284
_08022274:
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r6
	blo _08022274
_08022284:
	movs r1, #0xb6
	lsls r1, r1, #1
_08022288:
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	b _080222B2
_08022290:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080222C0
	adds r4, r0, #0
	movs r1, #0
	cmp r1, r6
	bhs _080222B2
_080222A2:
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r6
	blo _080222A2
_080222B2:
	adds r0, r4, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
