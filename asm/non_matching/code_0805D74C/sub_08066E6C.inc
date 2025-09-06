	.syntax unified
sub_08066E6C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08066ED8
	str r0, [r5, #0x1c]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08066E92
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066E92:
	ldr r1, _08066EDC
	adds r0, r5, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08066EAC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066EAC:
	movs r4, #0
_08066EAE:
	lsls r1, r4, #2
	ldr r2, _08066EE0
	adds r0, r5, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08066ECC
	ldr r1, [r2]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066ECC:
	adds r4, #1
	cmp r4, #5
	ble _08066EAE
	movs r4, #0
	b _08066F04
	.align 2, 0
_08066ED8: .4byte vt_09F7E538
_08066EDC: .4byte 0x000004CC
_08066EE0: .4byte 0x000004B4
_08066EE4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08087600
	adds r2, r0, #0
	cmp r2, #0
	beq _08066F02
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066F02:
	adds r4, #1
_08066F04:
	adds r0, r5, #0
	bl sub_080875FC
	cmp r4, r0
	blt _08066EE4
	movs r1, #0xcd
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #2
	bl _._10KeyFocuser
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #2
	bl sub_0808724C
	movs r3, #0xa6
	lsls r3, r3, #3
	adds r0, r5, r3
	movs r1, #2
	bl sub_0806D9A4
	ldr r1, _08066F5C
	adds r0, r5, r1
	ldr r1, _08066F60
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	movs r2, #0x89
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #2
	bl _._11Unk0806D64C
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08087348
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066F5C: .4byte 0x000004D4
_08066F60: .4byte vt_09F7E458
	.syntax divided
