	.syntax unified
	push {lr}
	mov ip, r4
	ldr r4, _08087AC4
	add sp, r4
	mov r4, ip
	mov r0, sp
	bl sub_0808E350
	mov r0, sp
	bl sub_0808E64C
	mov r0, sp
	movs r1, #2
	bl sub_0808E5FC
	movs r0, #1
	movs r3, #0xa3
	lsls r3, r3, #2
	add sp, r3
	pop {r1}
	bx r1
	.align 2, 0
_08087AC4: .4byte 0xFFFFFD74
	.syntax divided
