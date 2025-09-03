	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08052078
	movs r2, #0x82
	lsls r2, r2, #4
	adds r1, r4, #0
	bl sub_08001B18
	ldr r0, _0805207C
	adds r4, r4, r0
	ldr r0, _08052080
	ldr r2, _08052084
	adds r1, r4, #0
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052078: .4byte gSave
_0805207C: .4byte 0x00000898
_08052080: .4byte gUnknown_0200417C
_08052084: .4byte 0x0000057C
	.syntax divided
