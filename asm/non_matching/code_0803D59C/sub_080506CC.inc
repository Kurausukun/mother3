	.syntax unified
sub_080506CC:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08050720
	ldrb r0, [r0]
	ldr r4, _08050724
	cmp r0, #8
	bne _080506F6
	cmp r3, #5
	bne _080506F6
	ldr r0, _08050728
	ldrb r1, [r4, #6]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1d
	adds r2, r0, #0
	adds r2, #0x29
	strb r1, [r2]
	ldrb r1, [r4, #6]
	lsrs r1, r1, #5
	adds r0, #0x8d
	strb r1, [r0]
_080506F6:
	ldr r1, _0805072C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _08050730
	strb r3, [r0]
	movs r1, #0
	cmp r3, #1
	bne _0805070E
	movs r1, #1
_0805070E:
	strb r1, [r0, #1]
	movs r1, #0
	cmp r3, #2
	bne _08050718
	movs r1, #1
_08050718:
	strb r1, [r0, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050720: .4byte gUnknown_02004100
_08050724: .4byte gUnknown_0200F920
_08050728: .4byte gUnknown_020050C0
_0805072C: .4byte 0x00006478
_08050730: .4byte gUnknown_020051E8
	.syntax divided
