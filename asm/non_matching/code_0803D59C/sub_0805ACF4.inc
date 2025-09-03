	.syntax unified
	push {lr}
	bl sub_0805AEEC
	ldr r0, _0805AD08
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805AD0C
	cmp r0, #1
	beq _0805AD1A
	b _0805AD1E
	.align 2, 0
_0805AD08: .4byte gUnknown_020050B0
_0805AD0C:
	bl setup_vectors
	bl sub_0805ADBC
	bl sub_0805AD24
	b _0805AD1E
_0805AD1A:
	bl sub_0805AD48
_0805AD1E:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
