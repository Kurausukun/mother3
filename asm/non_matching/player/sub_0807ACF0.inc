	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0807AD9C
	str r0, [r4, #0x20]
	ldr r0, _0807ADA0
	str r0, [r4, #0x1c]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0807AD1A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807AD1A:
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0807AD36
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807AD36:
	adds r0, r4, #0
	bl sub_0807AFC4
	adds r0, r4, #0
	bl sub_0807AF20
	adds r0, r4, #0
	bl sub_0807ADA4
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #2
	bl sub_08060E8C
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0807AD64
	bl __builtin_vec_delete
_0807AD64:
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0807AD74
	bl __builtin_vec_delete
_0807AD74:
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r1, #2
	bl sub_0808AEF4
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	bl sub_0808AEF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Unit
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807AD9C: .4byte vt_09F82070
_0807ADA0: .4byte vt_09F820E8
	.syntax divided
