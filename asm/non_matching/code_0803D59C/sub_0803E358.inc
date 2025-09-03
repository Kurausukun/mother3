	.syntax unified
sub_0803E358:
	push {lr}
	bl snd_vsync
	movs r0, #0
	bl sub_0803E408
	ldr r0, _0803E39C
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803E374
	movs r0, #1
	bl sub_0803E408
_0803E374:
	ldr r1, _0803E3A0
	ldr r0, _0803E3A4
	ldrh r0, [r0, #0x1a]
	strh r0, [r1]
	ldr r0, _0803E3A8
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803E388
	bl snd_main
_0803E388:
	ldr r2, _0803E3AC
	movs r0, #0
	strh r0, [r2]
	ldr r1, _0803E3B0
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803E39C: .4byte gUnknown_0200F920
_0803E3A0: .4byte 0x04000012
_0803E3A4: .4byte gSomeBlend
_0803E3A8: .4byte gUnknown_03004B00
_0803E3AC: .4byte 0x04000208
_0803E3B0: .4byte gUnknown_03007FF8
	.syntax divided
