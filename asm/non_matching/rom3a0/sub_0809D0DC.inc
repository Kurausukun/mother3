	.syntax unified
sub_0809D0DC:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D108
	ldr r0, _0809D104
	b _0809D134
	.align 2, 0
_0809D104: .4byte 0x00000556
_0809D108:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x23
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D132
	adds r0, r4, #0
	bl sub_0807BD98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0809D134
_0809D132:
	ldr r0, _0809D13C
_0809D134:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D13C: .4byte 0x00000559
	.syntax divided
