	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x4c
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	adds r5, r6, #0
	adds r5, #0x4c
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r0, #0x4d
	adds r0, r0, r6
	mov r8, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r7, r6, #0
	adds r7, #0x4e
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0808CB18
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08082B78
	mov r0, sp
	bl sub_08083074
	movs r4, #0
	cmp sb, r0
	blt _0808C24C
	movs r4, #1
_0808C24C:
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	cmp r4, #0
	bne _0808C266
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_0808C578
	movs r0, #0
	b _0808C2A6
_0808C266:
	movs r1, #0
	ldrsb r1, [r5, r1]
	mov r3, r8
	movs r2, #0
	ldrsb r2, [r3, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0808CB18
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08064950
	str r0, [r6, #0x50]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	bl sub_0808C578
	movs r0, #1
_0808C2A6:
	add sp, #0x4c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
