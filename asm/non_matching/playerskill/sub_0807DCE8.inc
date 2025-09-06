	.syntax unified
sub_0807DCE8:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0807DDB0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0807DDCC
	movs r1, #0xd3
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #2
	bl _._10KeyFocuser
	ldr r2, _0807DDB4
	adds r0, r5, r2
	ldr r1, _0807DDB8
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	movs r1, #0xb5
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r4, _0807DDBC
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	ldr r2, _0807DDC0
	adds r0, r5, r2
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	ldr r1, _0807DDC4
	adds r0, r5, r1
	movs r1, #2
	bl sub_080867C0
	movs r2, #0x96
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #2
	bl _._11Unk0806D64C
	ldr r1, _0807DDC8
	adds r0, r5, r1
	movs r1, #2
	bl sub_08071F14
	movs r2, #0xde
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #2
	bl sub_08071DE4
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	adds r0, r5, #0
	adds r0, #0xb4
	cmp r0, #0
	beq _0807DD8C
	cmp r0, r4
	beq _0807DD8C
	adds r6, r0, #0
_0807DD76:
	subs r4, #0x5c
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0807DD76
_0807DD8C:
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #2
	bl _._11Unk0806D64C
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0807DDA0
	bl __builtin_vec_delete
_0807DDA0:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807DDB0: .4byte vt_09F827A8
_0807DDB4: .4byte 0x00000604
_0807DDB8: .4byte vt_09F82898
_0807DDBC: .4byte vt_09F7E458
_0807DDC0: .4byte 0x0000054C
_0807DDC4: .4byte 0x0000051C
_0807DDC8: .4byte 0x00000414
	.syntax divided
