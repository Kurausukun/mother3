	.syntax unified
sub_080B13C4:
	push {lr}
	bl onSuccess__6ActionP4Unit
	movs r0, #0xac
	bl sub_08072F54
	pop {r0}
	bx r0
	.syntax divided
