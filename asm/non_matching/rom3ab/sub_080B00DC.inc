	.syntax unified
sub_080B00DC:
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0118
	str r0, [r5, #0x1c]
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	movs r2, #0
	ldr r1, _080B011C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B010A
	movs r2, #1
_080B010A:
	adds r0, r5, #0
	adds r0, #0x4c
	strb r2, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B0118: .4byte vt_09F6A2B8
_080B011C: .4byte gUnknown_080F9558
	.syntax divided
