	.syntax unified
sub_08015090:
	push {lr}
	ldr r2, _080150E0
	ldr r0, _080150E4
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x22]
	movs r0, #0x3f
	strh r0, [r2, #0x22]
	ldrh r0, [r2, #0x24]
	movs r0, #0x21
	strh r0, [r2, #0x24]
	ldrh r0, [r2, #0x2a]
	movs r0, #0xa0
	strh r0, [r2, #0x2a]
	ldr r1, _080150E8
	ldr r0, _080150EC
	adds r2, r1, r0
	movs r0, #0x90
	strh r0, [r2]
	ldr r0, _080150F0
	adds r2, r1, r0
	movs r0, #0x60
	strh r0, [r2]
	ldr r0, _080150F4
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	bl sub_08016D08
	movs r0, #0
	bl sub_08005900
	pop {r0}
	bx r0
	.align 2, 0
_080150E0: .4byte gSomeBlend
_080150E4: .4byte 0x0001ED10
_080150E8: .4byte gGame
_080150EC: .4byte 0x0000596E
_080150F0: .4byte 0x00005970
_080150F4: .4byte 0x00005964
	.syntax divided
