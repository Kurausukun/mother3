	.syntax unified
sub_08028780:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r1, _0802885C
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, [sp, #4]
	ldr r4, _08028860
	adds r5, r2, r4
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r7, #9
	rsbs r7, r7, #0
	ands r0, r7
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r4, #0x41
	rsbs r4, r4, #0
	ands r0, r4
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r5]
	ldr r5, [sp, #4]
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrb r0, [r2]
	ands r1, r0
	ands r1, r4
	strb r1, [r2]
	ldr r4, _08028864
	adds r1, r5, r4
	ldrb r0, [r1]
	ands r3, r0
	ands r3, r7
	strb r3, [r1]
	ldr r1, _08028868
	adds r0, r5, r1
	movs r4, #0
	movs r3, #0
	strh r3, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r3, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r3, [r0]
	ldr r0, _0802886C
	adds r1, r5, r0
	ldr r0, _08028870
	strh r0, [r1]
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08028874
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08028878
	adds r0, r5, r1
	strb r4, [r0]
	subs r2, #0x13
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #4
	bne _0802882C
	strb r4, [r1]
_0802882C:
	ldrb r1, [r1]
	ldr r4, [sp, #4]
	ldr r5, _0802887C
	adds r0, r4, r5
	strb r1, [r0]
	movs r1, #0xd3
	lsls r1, r1, #3
	adds r0, r4, r1
	strh r3, [r0]
	ldr r2, _08028880
	adds r0, r4, r2
	strh r3, [r0]
	bl sub_0802B4D8
	ldr r2, _08028884
	ldr r3, _08028888
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802888C
	cmp r0, #1
	beq _080288AC
	b _080288C0
	.align 2, 0
_0802885C: .4byte 0x0000069E
_08028860: .4byte 0x0000069F
_08028864: .4byte 0x000006A1
_08028868: .4byte 0x0000068C
_0802886C: .4byte 0x00000692
_08028870: .4byte 0x0000FFFF
_08028874: .4byte 0x00000696
_08028878: .4byte 0x00000697
_0802887C: .4byte 0x00000684
_08028880: .4byte 0x0000069A
_08028884: .4byte gGame
_08028888: .4byte 0x00005958
_0802888C:
	ldr r4, _080288A4
	adds r1, r2, r4
	ldr r5, _080288A8
	adds r0, r2, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	bl sub_08029350
	b _080288C0
	.align 2, 0
_080288A4: .4byte 0x00005984
_080288A8: .4byte 0x0000595A
_080288AC:
	ldr r1, _08028924
	adds r0, r2, r1
	ldrh r1, [r0]
	mov r0, sp
	strh r1, [r0]
	ldr r3, _08028928
	adds r0, r2, r3
	ldrh r1, [r0]
	mov r0, sp
	strh r1, [r0, #2]
_080288C0:
	movs r4, #0
	str r4, [sp, #8]
_080288C4:
	ldr r5, [sp, #8]
	lsls r1, r5, #2
	ldr r2, [sp, #4]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r0, r2, r3
	adds r0, r0, r1
	movs r4, #0
	str r4, [r0]
	ldr r0, [sp, #8]
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080288EA
	b _08028BD4
_080288EA:
	ldr r3, _0802892C
	ldr r5, _08028930
	adds r0, r3, r5
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08028952
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08028934
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1]
	movs r2, #4
	bl sub_08035C0C
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r6, r7, #0
	adds r6, #0xcc
	b _08028988
	.align 2, 0
_08028924: .4byte 0x0000597C
_08028928: .4byte 0x0000597E
_0802892C: .4byte gGame
_08028930: .4byte 0x0000598C
_08028934:
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1]
	movs r2, #0
	bl sub_08035C0C
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r6, r7, #0
	adds r6, #0xcc
	b _08028988
_08028952:
	adds r1, r7, #0
	adds r1, #0xcc
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	adds r6, r1, #0
	cmp r0, #0
	bge _0802897C
	ldr r1, _08028978
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r0, #0x50
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x92
	strh r2, [r0]
	adds r2, r0, #0
	b _0802898C
	.align 2, 0
_08028978: .4byte 0x0000595A
_0802897C:
	ldr r2, _08028BF8
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
_08028988:
	adds r2, r7, #0
	adds r2, #0x92
_0802898C:
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r0, _08028BFC
	strh r0, [r1]
	movs r3, #0
	str r3, [r7, #0x1c]
	strh r3, [r2]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8f
	movs r4, #0
	strb r4, [r0]
	movs r5, #0xbf
	adds r5, r5, r7
	mov r8, r5
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	adds r5, r7, #0
	adds r5, #0xc8
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	bl sub_080355AC
	adds r1, r7, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r0, [r5]
	movs r2, #7
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5]
	ldr r3, _08028C00
	ldr r4, _08028BF8
	adds r0, r3, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r3, r7, #0
	adds r3, #0xbc
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #2
	ldrb r0, [r3]
	movs r4, #0x1d
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r3]
	ldr r3, _08028C00
	ldr r4, _08028C04
	adds r0, r3, r4
	ldrb r2, [r0]
	movs r0, #0xbd
	adds r0, r0, r7
	mov sl, r0
	movs r4, #3
	ands r2, r4
	lsls r2, r2, #3
	ldrb r0, [r0]
	movs r3, #0x19
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	mov r1, sl
	strb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	mov r2, sl
	ldrb r1, [r2]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	mov r4, sl
	strb r1, [r4]
	movs r0, #0xcb
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r2, r8
	ldrb r1, [r2]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	adds r3, #0x50
	ands r0, r3
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r2, #0xc7
	adds r2, r2, r7
	mov ip, r2
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	mov r3, ip
	strb r0, [r3]
	movs r0, #0xca
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #5
	rsbs r3, r3, #0
	ands r0, r3
	mov r1, r8
	strb r0, [r1]
	mov r0, ip
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5]
	movs r0, #0xcd
	adds r0, r0, r7
	mov ip, r0
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	mov r5, r8
	ldrb r1, [r5]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r5, #0x7f
	ands r0, r5
	mov r1, r8
	strb r0, [r1]
	mov r5, sb
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	ands r0, r3
	ands r0, r4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r5]
	ldrb r0, [r6]
	ands r2, r0
	ands r2, r3
	ands r2, r4
	strb r2, [r6]
	adds r0, r7, #0
	adds r0, #0xb2
	movs r2, #0
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	ldrb r1, [r6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	adds r0, #0xba
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
	adds r2, r7, #0
	adds r2, #0x48
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r7]
	mov r2, sp
	ldrh r0, [r2, #2]
	lsls r0, r0, #4
	strh r0, [r7, #2]
	movs r4, #0
	strh r4, [r7, #4]
	strh r4, [r7, #6]
	ldr r5, _08028C00
	ldr r1, _08028C08
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08028BC8
	mov r3, sl
	ldrb r0, [r3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	bl sub_0801A978
	str r0, [r7, #0x18]
_08028BC8:
	adds r0, r7, #0
	bl sub_08035FE4
	adds r0, r7, #0
	bl sub_08036388
_08028BD4:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #4
	bhi _08028BE4
	b _080288C4
_08028BE4:
	bl sub_08034FFC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028BF8: .4byte 0x0000595A
_08028BFC: .4byte 0x0000FFFF
_08028C00: .4byte gGame
_08028C04: .4byte 0x00005959
_08028C08: .4byte 0x0000598C
	.syntax divided
