	.syntax unified
sub_08027FD8:
	push {lr}
	ldr r1, _08027FF4
	ldr r2, _08027FF8
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08028000
	ldr r2, _08027FFC
	adds r0, r1, r2
	bl sub_08028C0C
	b _08028008
	.align 2, 0
_08027FF4: .4byte gGame
_08027FF8: .4byte 0x000082B6
_08027FFC: .4byte 0x00007C18
_08028000:
	ldr r2, _08028018
	adds r0, r1, r2
	bl sub_08028780
_08028008:
	ldr r0, _0802801C
	bl sub_080293BC
	bl sub_08029D10
	pop {r0}
	bx r0
	.align 2, 0
_08028018: .4byte 0x00007C18
_0802801C: .4byte gUnknown_0200D818
	.syntax divided
