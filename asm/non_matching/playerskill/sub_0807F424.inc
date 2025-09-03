	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
_0807F428:
	movs r0, #0
	str r0, [r4, #0x38]
	str r0, [r4, #0x40]
_0807F42E:
	movs r0, #1
	bl setsleep
	movs r0, #1
	movs r1, #0
	bl sub_08073018__FbT0
	bl sub_08072B70__Fv
	bl sub_08072D0C__Fv
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0807F42E
	cmp r0, #2
	beq _0807F496
	cmp r0, #2
	bgt _0807F49A
	cmp r0, #1
	bne _0807F49A
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0807F4A4
	cmp r0, #1
	beq _0807F484
	cmp r0, #1
	bgt _0807F47A
	cmp r0, #0
	beq _0807F480
	b _0807F484
_0807F47A:
	cmp r0, #2
	beq _0807F49A
	b _0807F484
_0807F480:
	movs r0, #0
	b _0807F49C
_0807F484:
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0807F428
_0807F496:
	movs r0, #1
	b _0807F49C
_0807F49A:
	movs r0, #2
_0807F49C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
