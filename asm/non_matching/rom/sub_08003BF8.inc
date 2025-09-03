	.syntax unified
sub_08003BF8:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bgt _08003C16
	cmp r2, #0
	blt _08003C16
	ldr r0, _08003C1C
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl MPlayStop
_08003C16:
	pop {r0}
	bx r0
	.align 2, 0
_08003C1C: .4byte gMPlayTable
	.syntax divided
