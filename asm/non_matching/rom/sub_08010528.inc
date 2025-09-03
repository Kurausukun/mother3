	.syntax unified
sub_08010528:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r4]
	strh r2, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _08010542
	adds r0, r1, #0
	subs r0, #0x78
	b _0801055A
_08010542:
	ldr r0, _0801056C
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _0801055A
	bl sub_0801A5EC
	ldr r1, _08010570
	adds r0, r0, r1
	ldrh r2, [r4]
	adds r0, r0, r2
_0801055A:
	strh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0x60
	ble _08010574
	adds r0, r1, #0
	subs r0, #0x60
	b _0801058C
	.align 2, 0
_0801056C: .4byte gGame
_08010570: .4byte 0x0000FF88
_08010574:
	ldr r0, _08010594
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _0801058C
	bl sub_0801A604
	ldr r1, _08010598
	adds r0, r0, r1
	ldrh r2, [r4, #2]
	adds r0, r0, r2
_0801058C:
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010594: .4byte gGame
_08010598: .4byte 0x0000FFA0
	.syntax divided
