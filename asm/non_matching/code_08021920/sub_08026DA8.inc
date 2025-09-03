	.syntax unified
	push {lr}
	ldr r2, _08026DDC
	ldrb r0, [r2]
	cmp r0, #0
	bne _08026DD6
	ldrb r0, [r2, #5]
	cmp r0, #1
	bne _08026DD6
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	movs r0, #0xac
	lsls r0, r0, #1
	cmp r1, r0
	bne _08026DD6
	movs r0, #3
	strb r0, [r2, #5]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
_08026DD6:
	pop {r0}
	bx r0
	.align 2, 0
_08026DDC: .4byte gEncounter
	.syntax divided
