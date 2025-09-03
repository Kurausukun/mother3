	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08016174
	ldrh r1, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r7, #8]
	orrs r0, r1
	strh r0, [r7, #8]
	bl sub_08004FB4
	ldr r4, _08016178
	ldr r0, _0801617C
	adds r6, r4, r0
	ldrh r0, [r6]
	ldr r1, _08016180
	adds r1, r1, r4
	mov r8, r1
	ldrb r1, [r1]
	bl sub_08019274
	bl sub_08001960
	bl sub_08005C4C
	ldr r2, _08016184
	adds r5, r4, r2
	ldrh r2, [r5]
	ldr r0, _08016188
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #3
	strh r1, [r6]
	ldrh r1, [r5]
	ldrh r2, [r4]
	cmp r1, r2
	blo _0801618C
	movs r0, #1
	b _080161C6
	.align 2, 0
_08016174: .4byte gSomeBlend
_08016178: .4byte gGame
_0801617C: .4byte 0x00005968
_08016180: .4byte 0x0000595E
_08016184: .4byte 0x00005962
_08016188: .4byte 0x00005960
_0801618C:
	ldrh r0, [r4]
	lsrs r0, r0, #1
	cmp r1, r0
	beq _080161AC
	ldr r0, _080161A8
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	b _080161C4
	.align 2, 0
_080161A8: .4byte 0x0001ED10
_080161AC:
	ldr r1, _080161D0
	adds r3, r7, r1
	ldrb r2, [r3]
	movs r4, #1
	movs r1, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r2, r8
	strb r4, [r2]
_080161C4:
	movs r0, #0
_080161C6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080161D0: .4byte 0x0001ED10
	.syntax divided
