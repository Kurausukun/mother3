	.syntax unified
sub_0805AEEC:
	push {r4, lr}
	ldr r2, _0805AF28
	ldrb r1, [r2, #0xc]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0
	str r0, [r2, #8]
	ldr r4, _0805AF2C
	adds r0, r4, #0
	bl sub_080013D0
	adds r0, r4, #0
	adds r0, #0x50
	bl sub_08001454
	ldr r0, _0805AF30
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_08001630
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AF28: .4byte gUnknown_02015E00
_0805AF2C: .4byte gSomeBlend
_0805AF30: .4byte 0x00002CA0
	.syntax divided
