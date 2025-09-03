	.syntax unified
	push {lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0807081C
	mov r0, sp
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	b _08070806
_08070800:
	movs r0, #1
	bl setsleep
_08070806:
	mov r0, sp
	bl sub_080701AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08070800
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
_0807081C:
	add sp, #0x38
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
