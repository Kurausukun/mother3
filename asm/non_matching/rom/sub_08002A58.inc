	.syntax unified
sub_08002A58:
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	strh r2, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08002A7C
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r3, #0
	movs r1, #1
	bl sub_0805CD30
	b _08002A88
_08002A7C:
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r3, #0
	movs r1, #0
	bl sub_0805CD30
_08002A88:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
