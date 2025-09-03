	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08026640
	adds r2, r1, #0
	adds r2, #0x51
	movs r0, #0
	movs r3, #1
	strb r3, [r2]
	strb r3, [r1]
	strb r3, [r1, #6]
	adds r2, #0x15
	strb r0, [r2]
	ldr r0, _08026644
	ldr r2, _08026648
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _0802664C
	strb r3, [r1, #7]
	b _0802664E
	.align 2, 0
_08026640: .4byte gEncounter
_08026644: .4byte gGame
_08026648: .4byte 0x00008494
_0802664C:
	strb r0, [r1, #7]
_0802664E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_0802665C
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
