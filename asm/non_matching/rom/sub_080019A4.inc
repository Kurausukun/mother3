	.syntax unified
	push {lr}
	ldr r1, _080019D4
	movs r2, #0x9c
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080019D8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080019CE
_080019C6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080019C6
_080019CE:
	pop {r0}
	bx r0
	.align 2, 0
_080019D4: .4byte 0x040000D4
_080019D8: .4byte 0x80000200
	.syntax divided
