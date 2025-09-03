	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl __4Unit
	ldr r0, _0807C710
	str r0, [r4, #0x20]
	ldr r0, _0807C714
	str r0, [r4, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_0808AE80
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r4, r2
	bl sub_0808AE80
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r2, #0xc
	adds r1, r4, r2
	str r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08060E70
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807C710: .4byte vt_09F82070
_0807C714: .4byte vt_09F820E8
	.syntax divided
