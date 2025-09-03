	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [r6, #0x30]
	strh r0, [r6, #0x2a]
	strh r0, [r6, #0x2c]
	movs r7, #0
	b _080841A6
_080840CE:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080840F4
	cmp r1, r0
	beq _08084136
	cmp r1, r0
	bgt _08084104
	subs r0, #0x2f
	cmp r1, r0
	beq _0808412E
	cmp r1, r0
	bgt _080840F8
	cmp r1, #0
	beq _08084120
	b _0808415E
	.align 2, 0
_080840F4: .4byte 0x0000FF30
_080840F8:
	ldr r0, _08084100
	cmp r1, r0
	beq _08084128
	b _0808415E
	.align 2, 0
_08084100: .4byte 0x0000FF02
_08084104:
	ldr r0, _0808411C
	cmp r1, r0
	beq _08084146
	cmp r1, r0
	blt _0808413E
	adds r0, #1
	cmp r1, r0
	beq _0808414E
	adds r0, #1
	cmp r1, r0
	beq _08084156
	b _0808415E
	.align 2, 0
_0808411C: .4byte 0x0000FF32
_08084120:
	adds r0, r6, #0
	bl sub_080841E8
	b _080841A4
_08084128:
	adds r0, r6, #0
	bl sub_080842E0
_0808412E:
	adds r0, r6, #0
	bl sub_080841C0
	b _080841A4
_08084136:
	movs r0, #5
	bl setsleep
	b _080841A4
_0808413E:
	movs r0, #0xa
	bl setsleep
	b _080841A4
_08084146:
	movs r0, #0x1e
	bl setsleep
	b _080841A4
_0808414E:
	movs r0, #0x3c
	bl setsleep
	b _080841A4
_08084156:
	movs r0, #0x5a
	bl setsleep
	b _080841A4
_0808415E:
	ldrh r2, [r6, #0x2a]
	ldrh r1, [r6, #0x2c]
	movs r0, #0x58
	muls r1, r0, r1
	lsls r4, r2, #4
	subs r4, r4, r2
	lsls r4, r4, #3
	adds r4, r4, r2
	lsls r4, r4, #4
	adds r0, r4, r6
	adds r0, r1, r0
	adds r0, #0xa0
	ldr r5, [r0, #0x1c]
	adds r5, #0xd0
	adds r4, #0xa0
	adds r4, r6, r4
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r0, r6, #0
	bl sub_080841E8
	adds r0, r6, #0
	bl sub_080842C0
_080841A4:
	adds r7, #1
_080841A6:
	mov r0, r8
	bl len__3Msg
	cmp r7, r0
	blt _080840CE
	adds r0, r6, #0
	bl sub_080842E0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
