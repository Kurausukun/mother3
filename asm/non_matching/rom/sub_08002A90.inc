	.syntax unified
sub_08002A90:
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08002AA8
	adds r0, r2, #0
	movs r1, #0
	b _08002AAC
_08002AA8:
	adds r0, r2, #0
	movs r1, #1
_08002AAC:
	bl sub_0805CDD8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
