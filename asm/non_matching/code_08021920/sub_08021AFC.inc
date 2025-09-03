	.syntax unified
sub_08021AFC:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, _08021B44
	adds r4, r0, r1
	str r4, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_08001B54
	ldrh r0, [r5]
	ldr r1, _08021B48
	cmp r0, r1
	beq _08021B5C
	ldr r7, _08021B4C
	adds r6, r1, #0
_08021B20:
	ldrh r0, [r5]
	cmp r0, r7
	bls _08021B50
	ldrh r0, [r5]
	adds r1, r5, #2
	adds r2, r4, #0
	bl sub_08021B64
	adds r4, r0, #0
	ldrh r0, [r5]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r5, r5, r0
	b _08021B56
	.align 2, 0
_08021B44: .4byte 0x0000040C
_08021B48: .4byte 0x0000FFFF
_08021B4C: .4byte 0x0000FEFF
_08021B50:
	strh r0, [r4]
	adds r5, #2
	adds r4, #2
_08021B56:
	ldrh r0, [r5]
	cmp r0, r6
	bne _08021B20
_08021B5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
