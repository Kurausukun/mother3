	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _08036A0C
	ldr r1, _08036A10
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08036A14
	cmp r1, r0
	bne _08036A04
	ldr r1, _08036A18
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08036A04
	movs r6, #0
	movs r7, #0x80
	rsbs r7, r7, #0
_080369C2:
	adds r0, r6, #0
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080369FA
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	bl sub_08036BEC
	ldrh r1, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _080369FA
	subs r0, r1, #1
	strh r0, [r4, #2]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r5]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	strh r0, [r5, #2]
_080369FA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x18
	bls _080369C2
_08036A04:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036A0C: .4byte gGame
_08036A10: .4byte 0x000067AC
_08036A14: .4byte 0x0000010F
_08036A18: .4byte 0x00009D10
	.syntax divided
