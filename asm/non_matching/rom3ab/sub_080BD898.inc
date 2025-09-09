	.syntax unified
sub_080BD898:
	push {r4, r5, lr}
	sub sp, #4
	adds r0, r1, #0
	bl dynaCastMonster
	adds r4, r0, #0
	cmp r4, #0
	bne _080BD8AC
	movs r0, #0
	b _080BD91A
_080BD8AC:
	ldr r2, [r4, #0x20]
	adds r2, #0x58
	adds r3, r4, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x50
	cmp r0, #0x3f
	bgt _080BD8D6
	movs r5, #0x3c
	cmp r0, #0x2f
	ble _080BD8D6
	movs r5, #0x46
_080BD8D6:
	ldr r1, [r4, #0x1c]
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #4
	beq _080BD906
	ldr r1, [r4, #0x1c]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bne _080BD908
_080BD906:
	adds r5, #0xa
_080BD908:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, r5
	bge _080BD918
	movs r1, #1
_080BD918:
	adds r0, r1, #0
_080BD91A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
