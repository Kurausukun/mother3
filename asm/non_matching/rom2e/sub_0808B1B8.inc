	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldr r0, _0808B210
	mov r5, ip
	adds r5, #0x98
	ldrb r1, [r5]
	lsrs r1, r1, #3
	adds r0, r1, r0
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, ip
	adds r0, #0x96
	movs r6, #0
	ldrsh r2, [r0, r6]
	ldr r0, _0808B214
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, sp
	adds r3, r3, r4
	adds r2, r2, r0
	mov r0, sp
	strh r3, [r0]
	strh r2, [r1, #2]
	mov r0, ip
	bl sub_0806DB74
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _0808B208
	movs r0, #0
	strb r0, [r5]
_0808B208:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808B210: .4byte gUnknown_080C696C
_0808B214: .4byte gUnknown_080C6974
	.syntax divided
