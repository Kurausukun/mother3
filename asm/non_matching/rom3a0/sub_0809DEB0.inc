	.syntax unified
sub_0809DEB0:
	push {r4, r5, lr}
	adds r0, r1, #0
	bl dynaCastMonster
	adds r4, r0, #0
	cmp r4, #0
	bne _0809DEC2
	movs r0, #0
	b _0809DEFC
_0809DEC2:
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _0809DEFA
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DEFA
	movs r5, #1
_0809DEFA:
	adds r0, r5, #0
_0809DEFC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
