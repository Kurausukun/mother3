	.syntax unified
sub_080B30D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r7, #0
	b _080B3126
_080B30E6:
	mov r0, r8
	ldr r4, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r4, r4, r2
	movs r0, #0
	ldrsh r5, [r4, r0]
	add r5, r8
	ldr r1, [r6, #0x1c]
	adds r2, #0x18
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B3124
	movs r0, #0
	b _080B3140
_080B3124:
	adds r7, #1
_080B3126:
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _080B30E6
	movs r0, #1
_080B3140:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
