	.syntax unified
sub_0800196C:
	push {lr}
	ldr r1, _0800199C
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080019A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08001996
_0800198E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0800198E
_08001996:
	pop {r0}
	bx r0
	.align 2, 0
_0800199C: .4byte 0x040000D4
_080019A0: .4byte 0x80000200
	.syntax divided
