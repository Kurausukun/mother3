	.syntax unified
sub_0809D1A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	cmp r1, #4
	bhi _0809D256
	movs r6, #0
	add r7, sp, #0xc
	b _0809D23E
_0809D1BA:
	ldr r1, [r5, #0x1c]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	mov r0, sp
	bl sub_08077DB8
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl sub_08077D98
	lsls r4, r4, #0x10
	cmp r4, #0
	beq _0809D23C
	ldr r1, [r5, #0x1c]
	movs r2, #0x92
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r7, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	adds r0, r7, #0
	bl sub_08077DB8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	movs r1, #2
	bl sub_08077D98
	adds r0, r4, #0
	b _0809D258
_0809D23C:
	adds r6, #1
_0809D23E:
	ldr r1, [r5, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0809D1BA
_0809D256:
	mov r0, r8
_0809D258:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
