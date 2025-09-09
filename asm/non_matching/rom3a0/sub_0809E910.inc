	.syntax unified
sub_0809E910:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0809E948
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _0809E94C
	ldr r4, [r5, #0x50]
	subs r4, #1
	movs r0, #0x1e
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	ble _0809E94C
	ldr r1, [r5, #0x50]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x1e
	bl sub_080028F4
	movs r0, #1
	b _0809E94E
	.align 2, 0
_0809E948: .4byte 0x000002F1
_0809E94C:
	movs r0, #0
_0809E94E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
