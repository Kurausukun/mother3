	.syntax unified
sub_08085988:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _080859DC
	str r0, [r5, #0x1c]
	ldr r0, _080859E0
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r5, #0
	adds r0, #0x9c
	cmp r0, #0
	beq _080859C2
	cmp r0, r4
	beq _080859C2
	adds r6, r0, #0
_080859AC:
	subs r4, #0x58
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _080859AC
_080859C2:
	adds r0, r5, #0
	adds r0, #0x30
	movs r1, #2
	bl _._11Unk0806D64C
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080859DC: .4byte vt_09F84088
_080859E0: .4byte 0x0000174C
	.syntax divided
