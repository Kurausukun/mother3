	.syntax unified
sub_08099E88:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08099F00
	str r0, [r4, #0x1c]
	ldr r1, _08099F04
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08099EAC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08099EAC:
	ldr r0, _08099F08
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _08099F0C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EC4
	bl __builtin_vec_delete
_08099EC4:
	ldr r3, _08099F10
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099ED2
	bl __builtin_vec_delete
_08099ED2:
	ldr r1, _08099F14
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EE0
	bl __builtin_vec_delete
_08099EE0:
	movs r3, #0xf6
	lsls r3, r3, #4
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EF0
	bl __builtin_vec_delete
_08099EF0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099F00: .4byte vt_09F458E8
_08099F04: .4byte 0x00000F98
_08099F08: .4byte vt_09F46450
_08099F0C: .4byte 0x00000F84
_08099F10: .4byte 0x00000F78
_08099F14: .4byte 0x00000F6C
	.syntax divided
