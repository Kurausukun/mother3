	.syntax unified
playSound:
	push {lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08070846
	mov r0, sp
	bl __5SoundUs
	mov r0, sp
	movs r1, #0
	bl play__5Soundb
	mov r0, sp
	movs r1, #2
	bl _._5Sound
_08070846:
	add sp, #0x38
	pop {r0}
	bx r0
	.syntax divided
