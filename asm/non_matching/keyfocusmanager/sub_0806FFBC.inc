	.syntax unified
sub_0806FFBC:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0
	ldr r0, _0806FFD8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0806FFDC
	movs r0, #0
	strh r0, [r4, #0x20]
	b _08070038
	.align 2, 0
_0806FFD8: .4byte 0x000007B0
_0806FFDC:
	cmp r1, #0
	bne _0806FFE4
	movs r0, #0
	b _08070038
_0806FFE4:
	movs r2, #0
	strh r3, [r4, #0x20]
	ldr r1, _08070040
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08070044
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r0, [r0]
	str r2, [r0, #0xc]
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x64
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x64
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
_08070038:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08070040: .4byte gSongTable
_08070044: .4byte gMPlayTable
	.syntax divided
