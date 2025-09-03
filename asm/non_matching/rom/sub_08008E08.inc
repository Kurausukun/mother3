	.syntax unified
sub_08008E08:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov sb, r6
	ldr r4, _08008E74
	ldr r1, _08008E78
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08008E44
	ldr r0, _08008E7C
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0x60
	bl sub_08001B18
_08008E44:
	adds r0, r5, #0
	adds r0, #0xc2
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008EC0
	adds r1, r5, #0
	adds r1, #0xc0
	ldrh r0, [r1]
	cmp r0, r6
	bne _08008E80
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r5, #0
	adds r0, #0x60
	mov r1, r8
	movs r2, #0x60
	bl sub_08001B18
	b _08008EC0
	.align 2, 0
_08008E74: .4byte gSomeBlend
_08008E78: .4byte 0x00011D16
_08008E7C: .4byte 0x00011CA4
_08008E80:
	ldrh r1, [r1]
	adds r0, r1, #1
	cmp r0, r6
	bne _08008EA2
	adds r0, r5, #0
	adds r0, #0x20
	adds r1, r7, #0
	movs r2, #0x40
	bl sub_08001B18
	adds r0, r5, #0
	adds r0, #0x80
	mov r1, r8
	movs r2, #0x40
	bl sub_08001B18
	b _08008EC0
_08008EA2:
	adds r0, r1, #2
	cmp r0, sb
	bne _08008EC0
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r7, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r5, #0
	adds r0, #0xa0
	mov r1, r8
	movs r2, #0x20
	bl sub_08001B18
_08008EC0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
