	.syntax unified
sub_08051C38:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08001DC8
	str r0, [sp]
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08051C68
	ldrh r0, [r4]
	cmp r0, #2
	bne _08051C68
	ldrh r1, [r4, #2]
	ldr r0, _08051C64
	cmp r1, r0
	bne _08051C68
	movs r0, #1
	b _08051C6A
	.align 2, 0
_08051C64: .4byte 0x0000334D
_08051C68:
	movs r0, #0
_08051C6A:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
