	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bgt _0803470C
	cmp r0, #4
	bge _08034736
_0803470C:
	ldr r0, _0803471C
	ldr r1, _08034720
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08034724
	movs r0, #1
	b _08034760
	.align 2, 0
_0803471C: .4byte gGame
_08034720: .4byte 0x0000829B
_08034724:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08036864
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803473A
_08034736:
	movs r0, #0
	b _08034760
_0803473A:
	movs r0, #0
	bl get_char_stats
	adds r1, r4, #0
	adds r1, #0x88
	ldrh r2, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _08034768
	adds r1, r1, r2
	ldrb r0, [r0, #0x12]
	ldrb r1, [r1, #0x12]
	movs r2, #0
	subs r0, r0, r1
	cmp r0, #3
	ble _0803475E
	movs r2, #1
_0803475E:
	adds r0, r2, #0
_08034760:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08034768: .4byte gUnknown_080C7D28
	.syntax divided
