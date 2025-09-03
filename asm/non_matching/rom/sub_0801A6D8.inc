	.syntax unified
sub_0801A6D8:
	push {lr}
	adds r2, r0, #0
	ldr r0, _0801A704
	ldr r1, _0801A708
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0801A70C
	cmp r1, r0
	bgt _0801A718
	subs r0, #1
	cmp r1, r0
	bge _0801A738
	subs r0, #0x64
	cmp r1, r0
	bgt _0801A710
	subs r0, #3
	cmp r1, r0
	bge _0801A738
	cmp r1, #0xe8
	beq _0801A72E
	b _0801A75C
	.align 2, 0
_0801A704: .4byte gGame
_0801A708: .4byte 0x000067AC
_0801A70C: .4byte 0x0000032A
_0801A710:
	ldr r0, _0801A714
	b _0801A728
	.align 2, 0
_0801A714: .4byte 0x00000322
_0801A718:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	blt _0801A75C
	adds r0, #1
	cmp r1, r0
	ble _0801A738
	adds r0, #2
_0801A728:
	cmp r1, r0
	beq _0801A738
	b _0801A75C
_0801A72E:
	ldr r0, _0801A734
	b _0801A75E
	.align 2, 0
_0801A734: .4byte 0x0000064D
_0801A738:
	ldr r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	blt _0801A75C
	lsls r0, r1, #1
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _0801A75C
	cmp r0, #0xd
	bne _0801A754
	ldr r0, _0801A750
	b _0801A75E
	.align 2, 0
_0801A750: .4byte 0x0000061F
_0801A754:
	ldr r0, _0801A758
	b _0801A75E
	.align 2, 0
_0801A758: .4byte 0x000005DB
_0801A75C:
	movs r0, #0
_0801A75E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
