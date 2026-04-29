	.syntax unified
sub_0809DA34:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA64
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl __5Sound
	movs r0, #0x64
	str r0, [r4, #0x4c]
	movs r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA64: .4byte vt_09F4B3B0
	.syntax divided
