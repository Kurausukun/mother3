	.syntax unified
sub_0807CB60:
	push {r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	bl sub_0807C96C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sp
	adds r1, r4, #0
	bl __11Unk0806D478P4Unk2
	ldr r0, _0807CBB4
	str r0, [sp, #0x14]
	mov r0, sp
	bl sub_0806D53C
	movs r2, #0
	adds r1, r0, #0
	adds r5, #0x28
_0807CB90:
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1]
	strh r0, [r5, #0x20]
	adds r1, #2
	adds r5, #2
	adds r2, #1
	cmp r2, #0xf
	bls _0807CB90
	mov r0, sp
	movs r1, #2
	bl _._11Unk0806D478
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807CBB4: .4byte _vt.6ResPtr
	.syntax divided
