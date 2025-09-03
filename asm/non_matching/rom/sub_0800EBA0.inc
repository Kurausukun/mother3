	.syntax unified
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _0800EBC8
	ldr r1, _0800EBCC
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EBD0
	adds r0, r2, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	bl sub_0801AF00
	b _0800EBD2
	.align 2, 0
_0800EBC8: .4byte gGame
_0800EBCC: .4byte 0x00008494
_0800EBD0:
	movs r0, #0
_0800EBD2:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
