	.syntax unified
sub_0801AA1C:
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801AA70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801AA68
	cmp r0, #2
	beq _0801AA4E
	cmp r0, #2
	bgt _0801AA3E
	cmp r0, #1
	beq _0801AA48
	b _0801AA68
_0801AA3E:
	cmp r0, #3
	beq _0801AA54
	cmp r0, #4
	beq _0801AA60
	b _0801AA68
_0801AA48:
	movs r1, #2
	ldrsh r0, [r4, r1]
	b _0801AA58
_0801AA4E:
	movs r1, #2
	ldrsh r0, [r4, r1]
	b _0801AA64
_0801AA54:
	movs r1, #0
	ldrsh r0, [r4, r1]
_0801AA58:
	cmp r0, #0
	ble _0801AA68
_0801AA5C:
	movs r0, #1
	b _0801AA6A
_0801AA60:
	movs r1, #0
	ldrsh r0, [r4, r1]
_0801AA64:
	cmp r0, #0
	blt _0801AA5C
_0801AA68:
	movs r0, #0
_0801AA6A:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
