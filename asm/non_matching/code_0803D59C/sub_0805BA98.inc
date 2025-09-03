	.syntax unified
	push {lr}
	ldr r0, _0805BAD0
	movs r1, #0x80
	lsls r1, r1, #0xa
	bl init__15SystemAllocatorP3FitUi
	bl makeInstance__13SystemManager
	bl sub_08065D68
	bl sub_08065D98
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08065DA4
	bl destroy__13SystemManager
	bl destroy__15SystemAllocator
	pop {r0}
	bx r0
	.align 2, 0
_0805BAD0: .4byte gSomeBlend
	.syntax divided
