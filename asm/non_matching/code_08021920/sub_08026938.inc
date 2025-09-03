	.syntax unified
	push {r4, r5, lr}
	ldr r4, _0802695C
	ldrb r0, [r4]
	cmp r0, #1
	beq _08026958
	cmp r0, #3
	beq _08026958
	ldr r0, _08026960
	ldr r1, _08026964
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08026958
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _08026968
_08026958:
	movs r0, #1
	b _080269A4
	.align 2, 0
_0802695C: .4byte gEncounter
_08026960: .4byte gGame
_08026964: .4byte 0x0000829B
_08026968:
	bl nullsub_13
	movs r1, #0
	ldrb r2, [r4, #5]
	cmp r1, r2
	bhs _080269A2
	adds r3, r4, #0
	adds r3, #0x52
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _080269A2
	adds r5, r3, #0
	subs r3, #0x15
_08026984:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _08026958
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bhs _080269A2
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08026984
_080269A2:
	movs r0, #0
_080269A4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
