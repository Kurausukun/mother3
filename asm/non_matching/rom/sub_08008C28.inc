	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0
	ldr r0, _08008C4C
	ldr r4, _08008C50
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08008C6A
	cmp r0, #1
	bgt _08008C54
	cmp r0, #0
	beq _08008C5A
	b _08008C6A
	.align 2, 0
_08008C4C: .4byte gSomeBlend
_08008C50: .4byte 0x00011C92
_08008C54:
	cmp r0, #2
	beq _08008C62
	b _08008C6A
_08008C5A:
	adds r0, r2, #0
	bl sub_08008C70
	b _08008C6A
_08008C62:
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_08008D3C
_08008C6A:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
