	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #2
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808BBCC
	bl sub_08072858
	ldrh r0, [r0, #2]
	mov sb, r0
	bl sub_08072858
	ldrh r1, [r0, #4]
	adds r0, r6, #0
	adds r0, #0x4d
	b _0808BC08
_0808BBCC:
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #4
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808BBFE
	bl sub_08072858
	ldrh r0, [r0, #6]
	mov sb, r0
	bl sub_08072858
	ldrh r1, [r0, #8]
	adds r0, r6, #0
	adds r0, #0x4d
	b _0808BC08
_0808BBFE:
	movs r0, #0
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0x4d
	mov r1, sb
_0808BC08:
	strb r1, [r0]
	mov r8, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, sb
	bl _call_via_r2
	adds r5, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	bge _0808BCF2
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	mov r1, sb
	bl sub_08082B78
	mov r0, sp
	bl sub_0808306C
	adds r4, r6, #0
	adds r4, #0x4c
	strb r0, [r4]
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	movs r1, #0
	ldrsb r1, [r4, r1]
	add r0, sp, #0x4c
	strb r5, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r6
	adds r2, #0x28
	movs r1, #0
	ldr r3, [r2, #4]
	mov sl, r4
	adds r7, r6, #0
	adds r7, #0x4e
	cmp r1, r3
	bge _0808BCBE
	ldr r4, [r2, #8]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_0808BCB0:
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, r5
	beq _0808BCC0
	adds r1, #1
	cmp r1, r3
	blt _0808BCB0
_0808BCBE:
	ldr r1, [r2, #4]
_0808BCC0:
	mov r3, r8
	ldrb r0, [r3]
	subs r0, r1, r0
	movs r5, #0
	strb r0, [r7]
	mov r0, sl
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #0
	ldrsb r2, [r3, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	beq _0808BD02
	mov r1, sl
	strb r5, [r1]
	mov r2, r8
	strb r5, [r2]
	strb r5, [r7]
	b _0808BD02
_0808BCF2:
	adds r1, r6, #0
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	mov r3, r8
	strb r0, [r3]
	adds r1, #2
	strb r0, [r1]
_0808BD02:
	ldr r4, [r6, #0x1c]
	adds r4, #0xc8
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	bl sub_08072858
	ldrb r1, [r0, #0xe]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
