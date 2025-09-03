	.syntax unified
sub_080052D0:
	push {lr}
	bl draw_sprites
	bl draw_message
	bl update_oam
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
