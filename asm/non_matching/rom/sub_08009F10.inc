	.syntax unified
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009F44
	ldr r1, _08009F38
	adds r0, r4, r1
	movs r1, #0x88
	lsls r1, r1, #3
	bl sub_080019DC
	ldr r1, _08009F3C
	adds r0, r4, r1
	ldr r1, _08009F40
	bl sub_080019DC
	b _08009F5A
	.align 2, 0
_08009F38: .4byte 0x00003230
_08009F3C: .4byte 0x00003670
_08009F40: .4byte 0x00005FA0
_08009F44:
	ldr r1, _08009F64
	adds r0, r4, r1
	movs r1, #0x88
	lsls r1, r1, #3
	bl memclear
	ldr r1, _08009F68
	adds r0, r4, r1
	ldr r1, _08009F6C
	bl memclear
_08009F5A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009F64: .4byte 0x00003230
_08009F68: .4byte 0x00003670
_08009F6C: .4byte 0x00005FA0
	.syntax divided
