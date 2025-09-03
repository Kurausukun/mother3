	.syntax unified
sub_0806625C:
	push {lr}
	bl KeyPadInstance
	bl getNewKeys__6KeyPad
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bne _08066272
	bl DoReset
_08066272:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
