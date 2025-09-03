	.syntax unified
	push {lr}
	ldr r1, _08030804
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	ldr r0, _08030808
	bl sub_0801A530
	ldr r0, _0803080C
	bl sub_08030A00
	bl sub_0803699C
	pop {r0}
	bx r0
	.align 2, 0
_08030804: .4byte gSomeBlend
_08030808: .4byte gUnknown_02001004
_0803080C: .4byte gUnknown_0200DEBC
	.syntax divided
