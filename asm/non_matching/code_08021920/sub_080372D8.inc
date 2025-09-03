	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08037320
	ldr r1, _08037324
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08037328
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0803731A
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0803731A
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r5
	bgt _0803731A
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, r1
	ble _08037328
_0803731A:
	movs r0, #0
	b _0803732A
	.align 2, 0
_08037320: .4byte gGame
_08037324: .4byte 0x00008494
_08037328:
	movs r0, #1
_0803732A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
