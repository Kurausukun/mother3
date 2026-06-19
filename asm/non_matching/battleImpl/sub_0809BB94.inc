	.syntax unified
sub_0809BB94:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BBD2
	movs r0, #0x17
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BBD2
	ldr r0, _0809BBD8
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0809BBDC
_0809BBD2:
	movs r0, #0
	b _0809BBDE
	.align 2, 0
_0809BBD8: .4byte gSave
_0809BBDC:
	adds r0, r4, #0
_0809BBDE:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
