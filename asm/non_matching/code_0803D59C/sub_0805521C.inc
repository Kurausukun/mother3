	.syntax unified
	push {r4, r5, lr}
	movs r4, #0
	ldr r0, _0805524C
	ldr r1, _08055250
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r4, r1
	bhs _08055244
	adds r5, r0, #0
_0805522E:
	adds r0, r4, #0
	bl sub_08054FE0
	bl sub_08055254
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _0805522E
_08055244:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805524C: .4byte gSomeBlend
_08055250: .4byte 0x00002DFA
	.syntax divided
