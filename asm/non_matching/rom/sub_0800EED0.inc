	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800EF78
	ldr r1, _0800EF7C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EF94
	ldr r0, _0800EF80
	adds r7, r5, r0
	ldrh r0, [r7]
	cmp r0, #0
	beq _0800EF94
	movs r0, #0
	bl get_obj_direct
	ldr r6, _0800EF84
	movs r4, #0
	movs r3, #0
	ldrh r0, [r7]
	cmp r4, r0
	bhs _0800EF26
	ldr r1, _0800EF88
	adds r1, r1, r5
	mov ip, r1
	ldr r1, _0800EF8C
	adds r7, r5, r1
	adds r5, r0, #0
_0800EF08:
	lsls r0, r3, #2
	add r0, ip
	ldr r2, [r0]
	lsls r0, r3, #1
	adds r1, r0, r7
	ldrh r0, [r1]
	cmp r0, r6
	bhs _0800EF1C
	adds r6, r0, #0
	adds r4, r2, #0
_0800EF1C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	blo _0800EF08
_0800EF26:
	cmp r4, #0
	beq _0800EF94
	ldr r0, _0800EF78
	ldr r1, _0800EF90
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	cmp r0, #6
	bne _0800EF44
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #6
	beq _0800EF94
_0800EF44:
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x1c
	adds r0, r4, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r2, r0, #0x17
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EF64
	movs r3, #1
_0800EF64:
	adds r0, r4, #0
	bl object_interact
	ldr r0, _0800EF78
	ldr r1, _0800EF7C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _0800EF96
	.align 2, 0
_0800EF78: .4byte gGame
_0800EF7C: .4byte 0x00008494
_0800EF80: .4byte 0x0000844C
_0800EF84: .4byte 0x0000FFFF
_0800EF88: .4byte 0x000083D4
_0800EF8C: .4byte 0x00008424
_0800EF90: .4byte 0x0000829B
_0800EF94:
	movs r0, #0
_0800EF96:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
