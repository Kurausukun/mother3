	.syntax unified
sub_0808ACC4:
	adds r4, r0, #0
	cmp r4, #0
	beq _0808AD0C
	bl getB__11BattleFader
	adds r1, r0, #0
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	mov r3, r8
	subs r0, r3, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB__11BattleFaderUi
	adds r0, r4, #0
	bl getB2__11BattleFader
	adds r1, r0, #0
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	subs r0, r7, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB2__11BattleFaderUi
	adds r0, r4, #0
	bl getB4__11BattleFader
	adds r1, r0, #0
	movs r3, #0x38
	ldrsh r0, [r5, r3]
	subs r0, r6, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB4__11BattleFaderUi
_0808AD0C:
	mov r0, r8
	strh r0, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r6, [r5, #0x38]
	ldrh r0, [r5, #0x30]
	adds r0, #1
	strh r0, [r5, #0x30]
_0808AD1A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
