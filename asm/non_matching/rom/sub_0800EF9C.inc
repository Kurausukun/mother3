	.syntax unified
	push {r4, lr}
	mov ip, r0
	ldr r0, _0800EFE4
	ldr r1, _0800EFE8
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EFEC
	mov r0, ip
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x1c
	cmp r1, #0
	beq _0800EFEC
	mov r0, ip
	adds r0, #0xc0
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r2, r0, #0x17
	movs r3, #0
	mov r0, ip
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EFD6
	movs r3, #1
_0800EFD6:
	mov r0, ip
	bl object_interact
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _0800EFEE
	.align 2, 0
_0800EFE4: .4byte gGame
_0800EFE8: .4byte 0x00008494
_0800EFEC:
	movs r0, #0
_0800EFEE:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
