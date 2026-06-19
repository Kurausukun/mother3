	.syntax unified
sub_080A8E18:
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xac
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, r1
	bne _080A8E32
	cmp r2, #1
	beq _080A8E32
	b _080A8FD4
_080A8E32:
	str r1, [r3]
	cmp r1, #4
	bls _080A8E3A
	b _080A8FB0
_080A8E3A:
	lsls r0, r1, #2
	ldr r1, _080A8E44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8E44: .4byte _080A8E48
_080A8E48:
	.4byte _080A8E5C
	.4byte _080A8EB0
	.4byte _080A8EDA
	.4byte _080A8F1C
	.4byte _080A8F5E
_080A8E5C:
	ldr r3, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #1
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #2
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #3
	bl _call_via_r3
	b _080A8FB0
_080A8EB0:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0x78
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	b _080A8F02
_080A8EDA:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0x78
_080A8F02:
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
	b _080A8FB0
_080A8F1C:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0x78
	bl _call_via_r3
	b _080A8FB0
_080A8F5E:
	ldr r3, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #1
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #2
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #3
	bl _call_via_r3
_080A8FB0:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A8FD6
_080A8FD4:
	movs r0, #0
_080A8FD6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
