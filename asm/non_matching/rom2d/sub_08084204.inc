	.syntax unified
sub_08084204:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0
_08084212:
	movs r0, #0
	mov r8, r0
	lsls r0, r1, #4
	adds r2, r1, #1
	mov sl, r2
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r6, r0, #4
	adds r0, r6, #0
	adds r0, #0xa0
	adds r0, r0, r7
	mov sb, r0
_0808422C:
	movs r0, #0x58
	mov r3, r8
	muls r3, r0, r3
	adds r1, r6, r7
	adds r1, r3, r1
	adds r0, r1, #0
	adds r0, #0xa0
	ldr r4, [r0, #0x1c]
	adds r4, #0xd0
	mov r0, sb
	adds r5, r0, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	movs r0, #0x83
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r2, [r1, #0x1c]
	adds r2, #0xd8
	adds r0, r6, r0
	adds r0, r7, r0
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0x15
	ble _0808422C
	mov r1, sl
	cmp r1, #0
	ble _08084212
	movs r4, #0
	movs r5, #0x83
	lsls r5, r5, #4
_08084288:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r0, r7
	adds r1, r1, r5
	ldr r2, [r1, #0x1c]
	adds r2, #0xd0
	adds r0, r0, r5
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	ldr r1, _080842BC
	bl _call_via_r2
	adds r4, #1
	cmp r4, #0x15
	ble _08084288
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080842BC: .4byte 0x0000FFFF
	.syntax divided
