	.syntax unified
	push {r4, lr}
	ldr r4, _08016EB4
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl memclear
	ldr r0, _08016EB8
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1a
	lsrs r2, r0, #0x1f
	cmp r2, #0
	beq _08016EC4
	ldr r0, _08016EBC
	ldrh r2, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	ldrh r3, [r0, #8]
	orrs r1, r2
	strh r1, [r0, #8]
	ldrh r2, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r3, [r0, #8]
	orrs r1, r2
	strh r1, [r0, #8]
	ldrh r1, [r0, #0x22]
	movs r1, #1
	strh r1, [r0, #0x22]
	ldr r1, _08016EC0
	adds r0, r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r2, #0x40
	bl sub_08001B18
	b _08016ECA
	.align 2, 0
_08016EB4: .4byte gUnknown_03005314
_08016EB8: .4byte gGame
_08016EBC: .4byte gSomeBlend
_08016EC0: .4byte 0x000131D0
_08016EC4:
	ldr r0, _08016EE0
	ldrh r1, [r0, #0x22]
	strh r2, [r0, #0x22]
_08016ECA:
	ldr r0, _08016EE0
	ldr r3, _08016EE4
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016EE0: .4byte gSomeBlend
_08016EE4: .4byte 0x000121BB
	.syntax divided
