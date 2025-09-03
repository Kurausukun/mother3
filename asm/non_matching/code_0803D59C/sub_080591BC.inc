	.syntax unified
sub_080591BC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r1, sp
	strh r0, [r1]
	ldr r1, _08059284
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080591DC
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r1, r0
_080591DC:
	ldr r2, _08059288
	adds r2, r1, r2
	str r2, [sp, #4]
	ldr r0, _0805928C
	adds r0, r0, r1
	mov sl, r0
	movs r6, #0
	ldr r0, _08059290
	movs r1, #0xdb
	lsls r1, r1, #3
	adds r2, r0, r1
	ldrh r0, [r2]
	ldr r1, _08059294
	cmp r0, r1
	beq _08059272
	mov r8, r2
	ldr r2, _08059298
	mov ip, r2
	ldr r0, _0805929C
	mov sb, r0
	movs r7, #0xf0
_08059206:
	lsls r4, r6, #1
	mov r1, r8
	adds r5, r4, r1
	ldrh r0, [r5]
	cmp r0, #0xac
	beq _0805925C
	ldr r2, [sp, #4]
	adds r3, r4, r2
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, _080592A0
	adds r1, r1, r2
	adds r1, r0, r1
	mov r0, ip
	ands r1, r0
	ldrh r2, [r3]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldrb r0, [r3, #1]
	orrs r0, r7
	strb r0, [r3, #1]
	mov r1, sl
	adds r3, r4, r1
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, _080592A4
	adds r1, r1, r2
	ldrh r5, [r5]
	adds r1, r1, r5
	mov r0, ip
	ands r1, r0
	ldrh r2, [r3]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldrb r0, [r3, #1]
	orrs r0, r7
	strb r0, [r3, #1]
_0805925C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bhi _08059272
	lsls r0, r6, #1
	add r0, r8
	ldrh r0, [r0]
	ldr r1, _08059294
	cmp r0, r1
	bne _08059206
_08059272:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059284: .4byte gUnknown_020192BC
_08059288: .4byte 0x00000484
_0805928C: .4byte 0x000004C4
_08059290: .4byte gSave
_08059294: .4byte 0x0000FFFF
_08059298: .4byte 0x000003FF
_0805929C: .4byte 0xFFFFFC00
_080592A0: .4byte 0x0000FF64
_080592A4: .4byte 0x0000FF84
	.syntax divided
