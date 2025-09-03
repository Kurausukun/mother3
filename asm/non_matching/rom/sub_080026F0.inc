	.syntax unified
	push {lr}
	ldr r0, _08002710
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002724
	ldr r0, _08002714
	ldr r1, _08002718
	adds r2, r0, r1
	ldr r1, [r2]
	ldr r0, _0800271C
	cmp r1, r0
	bhi _08002720
	adds r0, r1, #1
	b _08002722
	.align 2, 0
_08002710: .4byte 0x00000315
_08002714: .4byte gSave
_08002718: .4byte 0x00000744
_0800271C: .4byte 0x0009E33F
_08002720:
	ldr r0, _08002728
_08002722:
	str r0, [r2]
_08002724:
	pop {r0}
	bx r0
	.align 2, 0
_08002728: .4byte 0x0009E340
	.syntax divided
