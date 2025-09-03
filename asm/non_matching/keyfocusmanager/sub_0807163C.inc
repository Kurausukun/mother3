	.syntax unified
sub_0807163C:
	push {lr}
	ldr r0, [r0, #0x40]
	cmp r0, #1
	beq _0807164C
	ldr r0, _08071648
	b _0807164E
	.align 2, 0
_08071648: .4byte gUnknown_081032DC
_0807164C:
	ldr r0, _08071658
_0807164E:
	adds r0, r1, r0
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_08071658: .4byte gUnknown_081032E6
	.syntax divided
