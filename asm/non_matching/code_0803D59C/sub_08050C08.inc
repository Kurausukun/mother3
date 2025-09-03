	.syntax unified
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0x6f
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08050C58
	mov r0, ip
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #3
	beq _08050C58
	cmp r0, #1
	bne _08050C3C
	ldr r0, _08050C34
	ldr r1, _08050C38
	b _08050C40
	.align 2, 0
_08050C34: .4byte gSomeBlend
_08050C38: .4byte 0x00004528
_08050C3C:
	ldr r0, _08050C60
	ldr r1, _08050C64
_08050C40:
	adds r0, r0, r1
	ldr r4, [r0]
	mov r0, ip
	adds r0, #0x6e
	ldrb r1, [r0]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	adds r0, r4, #0
	bl sub_08050C68
_08050C58:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050C60: .4byte gSomeBlend
_08050C64: .4byte 0x0000452C
	.syntax divided
