	.syntax unified
sub_08003E20:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	cmp r0, #0
	bne _08003E30
	movs r0, #4
	b _08003E56
_08003E30:
	cmp r0, #0x64
	bne _08003E3A
	movs r0, #0x80
	lsls r0, r0, #1
	b _08003E56
_08003E3A:
	movs r3, #0xc8
	lsls r3, r3, #1
	cmp r2, r3
	beq _08003E52
	movs r1, #0xff
	lsls r1, r1, #2
	movs r0, #4
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08003E56
_08003E52:
	movs r0, #0xff
	lsls r0, r0, #2
_08003E56:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
