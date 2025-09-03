	.syntax unified
sub_08060D78:
	push {lr}
	sub sp, #0x2c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	beq _08060D98
	mov r0, sp
	bl sub_08061024
	mov r0, sp
	bl tellPresent
	mov r0, sp
	movs r1, #2
	bl sub_08061048
_08060D98:
	add sp, #0x2c
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
