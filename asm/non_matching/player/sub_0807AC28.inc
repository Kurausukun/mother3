	.syntax unified
sub_0807AC28:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
_0807AC2E:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x34
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807AC54
	ldr r2, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
_0807AC54:
	adds r5, #1
	cmp r5, #3
	ble _0807AC2E
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
