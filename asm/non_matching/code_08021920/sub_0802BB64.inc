	.syntax unified
sub_0802BB64:
	push {lr}
	ldr r0, _0802BB78
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0802BBBE
	lsls r0, r0, #2
	ldr r1, _0802BB7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802BB78: .4byte gUnknown_02005080
_0802BB7C: .4byte _0802BB80
_0802BB80:
	.4byte _0802BB98
	.4byte _0802BBA8
	.4byte _0802BB98
	.4byte _0802BBB8
	.4byte _0802BBB8
	.4byte _0802BBB8
_0802BB98:
	ldr r0, _0802BBA4
	bl sub_0802BBE4
	bl sub_0802D3F8
	b _0802BBBE
	.align 2, 0
_0802BBA4: .4byte gUnknown_0200DEBC
_0802BBA8:
	ldr r0, _0802BBB4
	bl sub_0802C4A0
	bl sub_0802D3F8
	b _0802BBBE
	.align 2, 0
_0802BBB4: .4byte gUnknown_0200DEBC
_0802BBB8:
	ldr r0, _0802BBC4
	bl sub_0802C3F8
_0802BBBE:
	pop {r0}
	bx r0
	.align 2, 0
_0802BBC4: .4byte gUnknown_0200DEBC
	.syntax divided
