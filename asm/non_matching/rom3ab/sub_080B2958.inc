	.syntax unified
sub_080B2958:
	push {lr}
	adds r1, r0, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #1
	bne _080B296A
	adds r0, r1, #0
	bl tellUseMessage__6Action
_080B296A:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
