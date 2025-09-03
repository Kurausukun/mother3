	.syntax unified
sub_0803F36C:
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0803F3A8
	ldr r1, _0803F3AC
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r5, r1
	bhs _0803F3A0
	adds r6, r0, #0
_0803F37E:
	adds r0, r5, #0
	bl sub_08054FE0
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08054FF0
	ldr r1, [r0, #0x30]
	str r1, [r4, #0x20]
	ldrh r0, [r0, #0x34]
	strh r0, [r4, #0x24]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r6]
	cmp r5, r0
	blo _0803F37E
_0803F3A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F3A8: .4byte gSomeBlend
_0803F3AC: .4byte 0x00002DFA
	.syntax divided
