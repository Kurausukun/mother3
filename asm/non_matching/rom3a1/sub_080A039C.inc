	.syntax unified
sub_080A039C:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	bl sub_08072AC4
	adds r4, r0, #0
	cmp r4, #0
	beq _080A03FE
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _080A03FE
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A03F4
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A03FE
_080A03F4:
	movs r0, #0x21
	adds r1, r5, #0
	bl sub_08074124
	b _080A0434
_080A03FE:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A0416
	cmp r0, #1
	beq _080A0420
	adds r0, r5, #0
	bl guest_2c0__5Guest
	b _080A0434
_080A0416:
	ldr r1, [r5, #0x1c]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r1, r1, r2
	b _080A0428
_080A0420:
	ldr r1, [r5, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #2
	adds r1, r1, r0
_080A0428:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A0434:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
