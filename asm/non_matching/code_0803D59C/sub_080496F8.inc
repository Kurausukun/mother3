	.syntax unified
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08049718
	ldr r3, _0804971C
	adds r0, r0, r3
	ldrb r0, [r0]
	lsrs r0, r0, #5
	cmp r0, #1
	beq _0804972E
	cmp r0, #1
	bgt _08049720
	cmp r0, #0
	beq _08049726
	b _0804973C
	.align 2, 0
_08049718: .4byte gSomeBlend
_0804971C: .4byte 0x0000C5AC
_08049720:
	cmp r0, #2
	beq _08049736
	b _0804973C
_08049726:
	adds r0, r2, #0
	bl sub_08049740
	b _0804973C
_0804972E:
	adds r0, r2, #0
	bl sub_080497D0
	b _0804973C
_08049736:
	adds r0, r2, #0
	bl sub_08049838
_0804973C:
	pop {r0}
	bx r0
	.syntax divided
