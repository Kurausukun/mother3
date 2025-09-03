	.syntax unified
	push {lr}
	bl sub_0805B9F4
	ldr r0, _0805B9EC
	movs r1, #0x80
	lsls r1, r1, #0xa
	bl init__15SystemAllocatorP3FitUi
	bl makeInstance__13SystemManager
	ldr r0, _0805B9F0
	ldrh r0, [r0, #0xa]
	bl sub_0805D8C8
	ldr r1, [r0, #0x1c]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_0805D880
	bl destroy__13SystemManager
	bl destroy__15SystemAllocator
	pop {r0}
	bx r0
	.align 2, 0
_0805B9EC: .4byte gSomeBlend
_0805B9F0: .4byte gEncounter
	.syntax divided
