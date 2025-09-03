	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	mov r1, sp
	bl sub_08036BEC
	ldr r0, [r5, #0x40]
	ldrb r0, [r0, #5]
	lsrs r0, r0, #6
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801AA70
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080346E0
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801AAB0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r4, sp, #4
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #0x10
	ldr r1, [sp, #4]
	asrs r1, r1, #0x10
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r0
	str r2, [sp, #4]
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	ldr r0, _080346DC
	ands r0, r1
	strh r0, [r2, #4]
	adds r0, r6, #0
	bl sub_080270D8
	ldr r3, [r5, #0x40]
	movs r1, #0x1f
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	ldr r0, [r5, #0x40]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_080270C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sp
	adds r2, #6
	adds r1, r4, #0
	bl sub_080270A0
	ldr r1, [r5, #0x40]
	ldrh r0, [r4]
	lsls r0, r0, #4
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r1, [r5, #0x40]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	ldrh r2, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	ldr r2, [r5, #0x40]
	ldrh r0, [r2]
	strh r0, [r5]
	ldrh r0, [r2, #2]
	strh r0, [r5, #2]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x17
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1b
	bl sub_080332AC
	adds r1, r5, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #1
	b _080346EE
	.align 2, 0
_080346DC: .4byte 0xFFFFC01F
_080346E0:
	adds r1, r5, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080346EC
	strh r6, [r1]
_080346EC:
	movs r0, #0
_080346EE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
