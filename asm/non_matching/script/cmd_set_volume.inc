	.syntax unified
cmd_set_volume:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	bne _0802125E
	ldr r0, _08021284
	ldr r1, _08021288
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802125E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08021268
	movs r4, #0x64
_08021268:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x7f
	bgt _0802127C
	ldr r0, _0802128C
	lsls r1, r1, #1
	ldr r2, _08021290
	adds r0, r0, r2
	adds r1, r1, r0
	strh r4, [r1]
_0802127C:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08021284: .4byte gGame
_08021288: .4byte 0x000067AC
_0802128C: .4byte gSave
_08021290: .4byte 0x00000582
	.syntax divided
