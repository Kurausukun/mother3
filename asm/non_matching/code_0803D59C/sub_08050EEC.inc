	.syntax unified
sub_08050EEC:
	push {lr}
	ldr r1, _08050F1C
	ldr r0, _08050F20
	ldr r2, _08050F24
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08050F28
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08050F18
_08050F10:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08050F10
_08050F18:
	pop {r0}
	bx r0
	.align 2, 0
_08050F1C: .4byte 0x040000D4
_08050F20: .4byte gSomeBlend
_08050F24: .4byte 0x0000C620
_08050F28: .4byte 0x80000200
	.syntax divided
