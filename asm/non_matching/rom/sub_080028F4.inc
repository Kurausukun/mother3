	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, _0800291C
	lsrs r0, r0, #0x11
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r3, r0, r1
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08002920
	ldrb r0, [r3]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r4, #4
	b _0800292C
	.align 2, 0
_0800291C: .4byte gSave
_08002920:
	ldrb r0, [r3]
	movs r1, #0xf0
	ands r1, r0
	movs r2, #0xf
	adds r0, r4, #0
	ands r0, r2
_0800292C:
	orrs r1, r0
	strb r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
