	.syntax unified
sub_0808E958:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, r1, #0
	ldr r2, _0808E9BC
	movs r1, #0
	cmp r0, #0
	blt _0808E976
	adds r1, r0, #0
	cmp r1, r2
	ble _0808E976
	adds r1, r2, #0
_0808E976:
	str r1, [r7, #0x24]
	ldr r0, _0808E9C0
	cmp r1, r0
	bgt _0808E9C8
	adds r4, r7, #0
	adds r4, #0x2a
	movs r3, #7
	mov sl, r4
	lsls r0, r1, #1
	movs r2, #0x28
	adds r2, r2, r7
	mov r8, r2
	movs r2, #0x29
	adds r2, r2, r7
	mov sb, r2
	ldr r2, _0808E9C4
	subs r1, #5
	adds r0, r0, r1
	adds r0, r0, r2
	adds r2, r0, #7
_0808E99E:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	subs r2, #1
	subs r3, #1
	cmp r3, #5
	bge _0808E99E
	movs r1, #4
	movs r2, #0
_0808E9B0:
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #1
	cmp r1, #0
	bge _0808E9B0
	b _0808E9FA
	.align 2, 0
_0808E9BC: .4byte 0x05F5E0FF
_0808E9C0: .4byte 0x000003E7
_0808E9C4: .4byte gUnknown_080F0C80
_0808E9C8:
	adds r4, r1, #0
	adds r6, r7, #0
	adds r6, #0x2a
	movs r5, #7
	mov sl, r6
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x29
	adds r1, r1, r7
	mov sb, r1
_0808E9DE:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F80
	adds r1, r6, r5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #1
	cmp r5, #0
	bge _0808E9DE
_0808E9FA:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _0808EA20
	mov r3, sl
_0808EA0A:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r1, #1
	cmp r0, #7
	bgt _0808EA20
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808EA0A
_0808EA20:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	subs r0, r0, r1
	movs r1, #0
	mov r2, sb
	strb r0, [r2]
	strh r1, [r7, #0x32]
	mov r0, r8
	ldrb r4, [r0]
	ldrb r0, [r2]
	adds r0, r4, r0
	cmp r4, r0
	bge _0808EA5E
_0808EA3C:
	mov r1, sl
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_0808EC28
	ldrh r1, [r7, #0x32]
	adds r1, r1, r0
	strh r1, [r7, #0x32]
	adds r4, #1
	mov r2, r8
	ldrb r0, [r2]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r0, r1
	cmp r4, r0
	blt _0808EA3C
_0808EA5E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
