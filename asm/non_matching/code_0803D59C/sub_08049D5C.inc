	.syntax unified
	push {r4, lr}
	movs r1, #0
	ldr r3, _08049DAC
	ldr r0, _08049DB0
	adds r4, r3, r0
	movs r2, #0
_08049D68:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08049D68
	ldr r1, _08049DB4
	adds r0, r3, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08049DB8
	adds r0, r3, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _08049DBC
	adds r2, r3, r0
	ldr r0, [r2]
	strb r1, [r0, #0x11]
	ldr r0, [r2]
	strb r1, [r0, #0x12]
	ldr r1, _08049DC0
	adds r2, r3, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049DAC: .4byte gSomeBlend
_08049DB0: .4byte 0x0000C5A2
_08049DB4: .4byte 0x0000C5A8
_08049DB8: .4byte 0x0000C5AA
_08049DBC: .4byte 0x0000BAF8
_08049DC0: .4byte 0x0000C5AD
	.syntax divided
