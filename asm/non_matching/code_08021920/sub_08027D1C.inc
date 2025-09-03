	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	ldrh r1, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08027D36
	ldrh r0, [r4]
	bl play_sound
_08027D36:
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	cmp r0, r1
	bne _08027DAC
	ldrb r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
	ldr r0, _08027DB4
	ldr r2, _08027DB8
	adds r0, r0, r2
	ldrh r0, [r0]
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #1
	bl sub_08003D14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x8b
	bl sub_080038A4
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08027D84
	lsrs r0, r4, #0x10
	bl sub_080038A4
	movs r0, #1
	movs r1, #0
	bl sub_08003C88
_08027D84:
	movs r0, #0
	movs r1, #1
	bl sub_08003A60
	ldr r0, _08027DBC
	lsls r1, r5, #1
	ldr r2, _08027DC0
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_08003E20
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0
	movs r3, #4
	bl sub_08027B84
_08027DAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027DB4: .4byte gGame
_08027DB8: .4byte 0x000067AC
_08027DBC: .4byte gSave
_08027DC0: .4byte 0x00000582
	.syntax divided
