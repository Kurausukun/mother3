	.syntax unified
sub_080161D4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, _0801625C
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	movs r3, #0
	mov sl, r3
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _08016260
	ldr r0, _08016264
	adds r0, r0, r4
	mov r8, r0
	ldrh r0, [r0]
	ldr r1, _08016268
	adds r7, r4, r1
	ldrb r1, [r7]
	bl sub_08019320
	bl sub_08001960
	bl sub_08005C4C
	ldr r2, _0801626C
	adds r2, r2, r4
	mov sb, r2
	ldrh r2, [r2]
	ldr r3, _08016270
	adds r4, r4, r3
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x50
	bl sub_08002E60
	mov r1, r8
	strh r0, [r1]
	ldr r2, _08016274
	adds r5, r5, r2
	ldrb r2, [r5]
	movs r4, #1
	movs r3, #1
	mov ip, r3
	mov r3, ip
	lsls r1, r3, #6
	movs r6, #0x41
	rsbs r6, r6, #0
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r1
	strb r3, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4f
	bls _08016298
	ldrb r0, [r7]
	cmp r0, #3
	beq _08016278
	movs r0, #1
	b _0801629A
	.align 2, 0
_0801625C: .4byte gSomeBlend
_08016260: .4byte gGame
_08016264: .4byte 0x00005968
_08016268: .4byte 0x0000595E
_0801626C: .4byte 0x00005962
_08016270: .4byte 0x00005960
_08016274: .4byte 0x0001ED10
_08016278:
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	orrs r0, r4
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #6
	ands r3, r6
	orrs r3, r0
	strb r3, [r5]
	movs r0, #7
	strb r0, [r7]
	mov r3, sl
	mov r2, r8
	strh r3, [r2]
	mov r0, sb
	strh r3, [r0]
_08016298:
	movs r0, #0
_0801629A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
