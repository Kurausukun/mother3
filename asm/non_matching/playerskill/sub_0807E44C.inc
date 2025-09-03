	.syntax unified
sub_0807E44C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E486
	ldr r0, [r4, #0x40]
	cmp r0, #5
	beq _0807E486
	cmp r0, #1
	bne _0807E486
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E486
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xd0
	bl playSound
_0807E486:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
