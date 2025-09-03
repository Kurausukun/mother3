	.syntax unified
sub_080056E4:
	push {lr}
	sub sp, #4
	mov r1, sp
	ldr r0, _08005720
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0x9f
	bne _08005714
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08005724
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08005728
	ldrh r2, [r1, #8]
	movs r3, #0xd0
	lsls r3, r3, #4
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
_08005714:
	ldr r1, _0800572C
	movs r0, #4
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08005720: .4byte 0x04000006
_08005724: .4byte 0x0000FEFF
_08005728: .4byte gSomeBlend
_0800572C: .4byte 0x04000202
	.syntax divided
