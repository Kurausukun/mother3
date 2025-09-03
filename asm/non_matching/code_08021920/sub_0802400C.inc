	.syntax unified
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r0, _08024050
	ldr r1, _08024054
	adds r4, r0, r1
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08024064
	ldrh r0, [r4]
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08024064
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08024048
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08024058
_08024048:
	ldrh r0, [r4]
	bl sub_08033414
	b _08024064
	.align 2, 0
_08024050: .4byte gGame
_08024054: .4byte 0x00008452
_08024058:
	adds r0, r1, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08024064:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
