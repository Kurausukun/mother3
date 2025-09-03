	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _0807C994
	cmp r0, #4
	beq _0807C9A6
	b _0807C9B4
_0807C994:
	movs r0, #4
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0807C9B4
	movs r4, #0xe
	b _0807C9CE
_0807C9A6:
	movs r0, #4
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0807C9CC
_0807C9B4:
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0807C9CE
_0807C9CC:
	movs r4, #0xf
_0807C9CE:
	bl sub_0807078C
	adds r1, r0, #0
	lsls r0, r4, #3
	subs r0, r0, r4
	ldr r2, _0807C9E8
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807C9E8: .4byte 0x00000109
	.syntax divided
