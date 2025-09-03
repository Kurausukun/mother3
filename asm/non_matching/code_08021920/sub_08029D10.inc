	.syntax unified
sub_08029D10:
	push {r4, lr}
	bl sub_08029D9C
	ldr r2, _08029D88
	ldr r0, _08029D8C
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029D44
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08029D90
	adds r4, r2, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _08029D44
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08002FD4
	adds r0, #0x64
	lsls r0, r0, #4
	strh r0, [r4]
_08029D44:
	ldr r1, _08029D88
	ldr r0, _08029D94
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08029D7C
	movs r0, #0
	strb r0, [r2]
	ldr r2, _08029D98
	adds r4, r1, r2
	ldrh r0, [r4]
	cmp r0, #0
	bne _08029D7C
	adds r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08029D7C
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08002FD4
	adds r0, #0x64
	lsls r0, r0, #4
	strh r0, [r4]
_08029D7C:
	bl sub_08029E18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029D88: .4byte gSave
_08029D8C: .4byte 0x0000071A
_08029D90: .4byte 0x0000071C
_08029D94: .4byte 0x00000734
_08029D98: .4byte 0x00000736
	.syntax divided
