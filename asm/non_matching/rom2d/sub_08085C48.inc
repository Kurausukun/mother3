	.syntax unified
	push {r4, lr}
	sub sp, #0xa0
	adds r4, r0, #0
	mov r0, sp
	bl sub_0808AFA8
	add r1, sp, #0x9c
	movs r0, #0xd9
	movs r2, #0x18
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sp
	bl sub_0808B074
	movs r0, #1
	str r0, [r4, #0x2c]
_08085C68:
	movs r0, #1
	bl setsleep
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	beq _08085C68
	mov r0, sp
	movs r1, #2
	bl sub_0808B060
	add sp, #0xa0
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
