	.syntax unified
sub_080A8FDC:
	push {lr}
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080A8FFE
	cmp r0, #2
	bgt _080A8FF4
	cmp r0, #1
	beq _080A8FFA
	b _080A9006
_080A8FF4:
	cmp r0, #3
	beq _080A9002
	b _080A9006
_080A8FFA:
	movs r0, #1
	b _080A9008
_080A8FFE:
	movs r0, #2
	b _080A9008
_080A9002:
	movs r0, #3
	b _080A9008
_080A9006:
	movs r0, #0
_080A9008:
	pop {r1}
	bx r1
	.syntax divided
