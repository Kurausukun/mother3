	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0xb
	ldr r2, _08017F74
	adds r3, r0, r2
	movs r2, #0
	lsrs r1, r1, #0xc
	cmp r2, r1
	bge _08017F88
	movs r4, #0x10
	ldr r5, _08017F78
_08017F60:
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _08017F7C
	ldrh r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	movs r0, #0
	b _08017F8A
	.align 2, 0
_08017F74: .4byte gUnknown_03005314
_08017F78: .4byte 0x00007FFF
_08017F7C:
	adds r3, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blt _08017F60
_08017F88:
	movs r0, #1
_08017F8A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
