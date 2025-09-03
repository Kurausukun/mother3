	.syntax unified
	push {lr}
	sub sp, #4
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #5
	bhi _08047B80
	lsls r0, r0, #2
	ldr r1, _08047B24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047B24: .4byte _08047B28
_08047B28:
	.4byte _08047B40
	.4byte _08047B44
	.4byte _08047B60
	.4byte _08047B44
	.4byte _08047B64
	.4byte _08047B68
_08047B40:
	movs r0, #0x5d
	b _08047B6A
_08047B44:
	ldr r0, _08047B54
	ldr r1, _08047B58
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08047B5C
	movs r0, #0x43
	b _08047B6A
	.align 2, 0
_08047B54: .4byte gSomeBlend
_08047B58: .4byte 0x0000427A
_08047B5C:
	movs r0, #0x61
	b _08047B6A
_08047B60:
	movs r0, #0x5e
	b _08047B6A
_08047B64:
	movs r0, #0x5f
	b _08047B6A
_08047B68:
	movs r0, #0x60
_08047B6A:
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #0xc
	movs r2, #9
	bl sub_08047B9C
	b _08047B96
_08047B80:
	movs r0, #0x61
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #0xc
	movs r2, #9
	bl sub_08047B9C
_08047B96:
	add sp, #4
	pop {r0}
	bx r0
	.syntax divided
