	.syntax unified
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r2, _0803E44C
	ldrh r1, [r2, #0xa]
	ldr r0, _0803E450
	ands r0, r1
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xa]
	ldr r0, _0803E454
	ands r0, r1
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xa]
	ldr r1, _0803E458
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803E446
	ldr r0, _0803E45C
	ldr r1, _0803E460
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0803E464
	str r0, [r2, #4]
	ldr r0, _0803E468
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0803E446:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803E44C: .4byte 0x040000B0
_0803E450: .4byte 0x0000C5FF
_0803E454: .4byte 0x00007FFF
_0803E458: .4byte 0x040000BA
_0803E45C: .4byte gSomeBlend
_0803E460: .4byte 0x0000C61C
_0803E464: .4byte 0x04000016
_0803E468: .4byte 0xA2600001
	.syntax divided
