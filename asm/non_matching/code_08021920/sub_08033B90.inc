	.syntax unified
	push {r4, lr}
	movs r4, #0
_08033B94:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033BBC
	ldr r2, [r1, #0x34]
	cmp r2, #0
	bne _08033BB4
	adds r0, r1, #0
	bl sub_08035F4C
	b _08033BBC
_08033BB4:
	ldrb r0, [r2, #0x14]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x14]
_08033BBC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033B94
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
