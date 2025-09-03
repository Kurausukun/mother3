	.syntax unified
sub_080590E4:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, sp
	movs r5, #1
	adds r0, r4, #0
	ands r0, r5
	strh r0, [r1]
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08059128
	cmp r4, #0xb
	bne _0805910E
	mov r0, sp
	ldrh r0, [r0]
	bl sub_080591BC
_0805910E:
	ldr r0, _08059120
	ldr r1, _08059124
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059120: .4byte gSomeBlend
_08059124: .4byte 0x00002C90
	.syntax divided
