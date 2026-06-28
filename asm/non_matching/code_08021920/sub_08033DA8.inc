	.syntax unified
sub_08033DA8:
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	movs r0, #0
	bl get_obj_direct
	ldr r1, [r0, #0x18]
	ldr r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08033DFC
	ldr r0, _08033DF4
	ldr r2, _08033DF8
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _08033DEE
	adds r0, r1, #0
	bl sub_0801A7AC
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033DEE
	movs r0, #5
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08033DEE
	adds r0, r4, #0
	bl play_sound
_08033DEE:
	movs r0, #0
	b _08033E58
	.align 2, 0
_08033DF4: .4byte gGame
_08033DF8: .4byte 0x0000829B
_08033DFC:
	adds r0, r1, #0
	bl sub_0801A764
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033E1E
	movs r0, #5
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08033E1E
	adds r0, r4, #0
	bl play_sound
_08033E1E:
	ldr r4, _08033E60
	ldr r0, _08033E64
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08033E44
	ldr r1, _08033E68
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r3, #3
	bl sub_08035384
_08033E44:
	bl sub_08033ABC
	ldr r0, _08033E6C
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
_08033E58:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08033E60: .4byte gGame
_08033E64: .4byte 0x0000829B
_08033E68: .4byte 0x000082A0
_08033E6C: .4byte 0x00008496
	.syntax divided
