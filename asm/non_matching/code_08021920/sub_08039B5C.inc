	.syntax unified
sub_08039B5C:
	push {lr}
	ldr r0, _08039B84
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08039B7E
	movs r0, #1
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	bne _08039B7E
	movs r0, #1
	bl musicPlayerStop_bgm
_08039B7E:
	pop {r0}
	bx r0
	.align 2, 0
_08039B84: .4byte gGame
	.syntax divided
