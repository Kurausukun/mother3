	.syntax unified
	push {lr}
	bl snd_vsync
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08005490
	ldrh r0, [r2, #8]
	strh r0, [r1]
	adds r1, #0x12
	ldrh r0, [r2, #0x1a]
	strh r0, [r1]
	ldr r0, _08005494
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800547E
	bl snd_main
_0800547E:
	ldr r2, _08005498
	movs r0, #0
	strh r0, [r2]
	ldr r1, _0800549C
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08005490: .4byte gSomeBlend
_08005494: .4byte gUnknown_03004B00
_08005498: .4byte 0x04000208
_0800549C: .4byte gUnknown_03007FF8
	.syntax divided
