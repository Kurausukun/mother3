	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	bne _08053776
	cmp r6, #0
	beq _080537F8
_08053776:
	mov r3, sp
	adds r3, #2
	mov r0, sp
	ldrh r0, [r0]
	adds r7, r3, #0
	cmp r0, #0
	beq _08053790
	ldrh r0, [r5, #2]
	lsrs r0, r0, #9
	movs r1, #1
	adds r2, r1, #0
	ands r2, r0
	b _0805379E
_08053790:
	movs r2, #0
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _0805379E
	movs r2, #1
_0805379E:
	strh r2, [r3]
	ldrh r0, [r7]
	cmp r0, #0
	beq _080537B4
	ldrh r0, [r4]
	cmp r0, ip
	beq _080537B0
	subs r0, #1
	b _080537EC
_080537B0:
	strh r6, [r4]
	b _080537EE
_080537B4:
	adds r3, r7, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080537CA
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	movs r1, #1
	adds r2, r1, #0
	ands r2, r0
	b _080537D8
_080537CA:
	movs r2, #0
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080537D8
	movs r2, #1
_080537D8:
	strh r2, [r3]
	ldrh r0, [r7]
	cmp r0, #0
	beq _080537F8
	ldrh r0, [r4]
	cmp r0, r6
	beq _080537EA
	adds r0, #1
	b _080537EC
_080537EA:
	mov r0, ip
_080537EC:
	strh r0, [r4]
_080537EE:
	movs r0, #0xd1
	bl play_sound
	movs r0, #1
	b _080537FA
_080537F8:
	movs r0, #0
_080537FA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
