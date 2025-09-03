	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r7, _0804C9AC
	ldr r0, _0804C9B0
	adds r5, r7, r0
	ldrb r1, [r5]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	ldr r0, _0804C9B4
	adds r3, r3, r0
	ldr r4, _0804C9B8
	adds r2, r7, r4
	lsls r1, r1, #5
	ldr r4, _0804C9BC
	adds r0, r7, r4
	adds r6, r1, r0
	str r6, [r2]
	ldr r0, _0804C9C0
	adds r4, r7, r0
	ldrb r0, [r4]
	movs r2, #0xf
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r4]
	ldrh r0, [r3]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrh r1, [r3, #8]
	ldr r2, _0804C9C4
	adds r0, r7, r2
	movs r2, #0
	strh r1, [r0]
	ldr r4, _0804C9C8
	adds r0, r7, r4
	strh r2, [r0]
	ldrb r0, [r5]
	cmp r0, #0xe
	bne _0804C9D0
	adds r0, r6, #0
	movs r1, #0x10
	bl sub_08048748
	ldr r1, _0804C9CC
	adds r3, r7, r1
	b _0804C9DC
	.align 2, 0
_0804C9AC: .4byte gSomeBlend
_0804C9B0: .4byte 0x00004A30
_0804C9B4: .4byte gUnknown_080C69CC
_0804C9B8: .4byte 0x00004DF4
_0804C9BC: .4byte 0x00004A32
_0804C9C0: .4byte 0x00004ECF
_0804C9C4: .4byte 0x00004ECA
_0804C9C8: .4byte 0x00004ECC
_0804C9CC: .4byte 0x00004ECE
_0804C9D0:
	adds r0, r6, #0
	movs r1, #9
	bl sub_08048748
	ldr r2, _0804C9F4
	adds r3, r7, r2
_0804C9DC:
	movs r1, #0x1f
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C9F4: .4byte 0x00004ECE
	.syntax divided
