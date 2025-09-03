	.syntax unified
sub_08055750:
	push {r4, r5, lr}
	movs r4, #0
	ldr r0, _08055780
	ldr r1, _08055784
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r4, r1
	bhs _0805577A
	adds r5, r0, #0
_08055762:
	adds r0, r4, #0
	bl sub_08055694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805577A
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _08055762
_0805577A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08055780: .4byte gSomeBlend
_08055784: .4byte 0x00002DFC
	.syntax divided
