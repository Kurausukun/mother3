	.syntax unified
sub_08050E20:
	push {r4, lr}
	ldr r2, _08050E50
	ldr r4, _08050E54
	ldrb r0, [r4, #6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08050E40
	ldr r1, _08050E58
	ldr r3, _08050E5C
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r3, _08050E60
	adds r1, r1, r3
	ldrh r1, [r1]
	bl _call_via_r2
_08050E40:
	ldrb r1, [r4, #6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050E50: .4byte gUnknown_03005715
_08050E54: .4byte gUnknown_0200F920
_08050E58: .4byte gSomeBlend
_08050E5C: .4byte 0x0000C620
_08050E60: .4byte 0x00002C98
	.syntax divided
