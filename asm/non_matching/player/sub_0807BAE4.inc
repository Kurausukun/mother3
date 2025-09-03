	.syntax unified
sub_0807BAE4:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r4, [r2, #4]
	movs r2, #0
	movs r3, #0
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0807BB0E
	movs r0, #0
	b _0807BB16
_0807BB0E:
	movs r0, #0xf5
	bl playSound
	movs r0, #1
_0807BB16:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
