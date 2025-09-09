	.syntax unified
sub_080BBCD4:
	push {lr}
	ldr r2, _080BBCE4
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BBCE4: .4byte vt_09F772F8
	.syntax divided
