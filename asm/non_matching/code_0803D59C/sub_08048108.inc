	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4]
	ldr r1, _0804813C
	cmp r0, r1
	beq _08048150
	ldr r7, _08048140
	adds r6, r1, #0
_0804811A:
	ldrh r0, [r4]
	cmp r0, r7
	bls _08048144
	ldrh r0, [r4]
	adds r1, r4, #2
	adds r2, r5, #0
	bl sub_08048158
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_0804865C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _0804814A
	.align 2, 0
_0804813C: .4byte 0x0000FFFF
_08048140: .4byte 0x0000FEFF
_08048144:
	strh r0, [r5]
	adds r4, #2
	adds r5, #2
_0804814A:
	ldrh r0, [r4]
	cmp r0, r6
	bne _0804811A
_08048150:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
