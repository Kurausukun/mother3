	.syntax unified
sub_080802A4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r0, [r7, #0x40]
	cmp r0, #3
	beq _080803A4
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080803A4
	adds r6, r7, #0
	adds r6, #0x48
	add r4, sp, #0xc
	ldrh r1, [r7, #0x34]
	adds r5, r7, #0
	adds r5, #0x28
	lsls r1, r1, #1
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08077D8C
	mov r0, sp
	adds r1, r4, #0
	bl sub_08077DBC
	adds r0, r6, #0
	mov r1, sp
	bl sub_08083D14
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl sub_08077D98
	movs r6, #0
	ldr r0, [r5, #4]
	mov sl, r5
	cmp r6, r0
	bge _080803A4
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r0, r7, r0
	str r0, [sp, #0x18]
	mov sb, r6
	mov r8, r6
_08080312:
	ldrh r1, [r7, #0x34]
	cmp r6, r1
	bne _08080356
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #8]
	add r0, r8
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	adds r4, #0x80
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r1, sl
	ldr r0, [r1, #8]
	add r0, sb
	ldrh r1, [r0]
	mov r0, sp
	bl sub_08077D8C
	mov r0, sp
	bl sub_08077EB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_08077D98
	b _08080392
_08080356:
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #8]
	add r0, r8
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	adds r4, #0x80
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r1, sl
	ldr r0, [r1, #8]
	add r0, sb
	ldrh r1, [r0]
	mov r0, sp
	bl sub_08077D8C
	mov r0, sp
	bl sub_08077E28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_08077D98
_08080392:
	movs r0, #2
	add sb, r0
	movs r1, #4
	add r8, r1
	adds r6, #1
	mov r1, sl
	ldr r0, [r1, #4]
	cmp r6, r0
	blt _08080312
_080803A4:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
