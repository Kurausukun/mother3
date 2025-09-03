	.syntax unified
	push {lr}
	ldr r1, _08052FBC
	ldrb r1, [r1, #3]
	bl sub_08053034
	ldr r0, _08052FC0
	movs r2, #0x85
	lsls r2, r2, #7
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r2, _08052FC4
	adds r0, r0, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08052FBC: .4byte gUnknown_02004100
_08052FC0: .4byte gSomeBlend
_08052FC4: .4byte 0x00002F42
	.syntax divided
