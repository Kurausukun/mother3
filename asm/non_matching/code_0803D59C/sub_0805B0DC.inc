	.syntax unified
	push {lr}
	ldr r3, _0805B120
	ldrh r0, [r3]
	cmp r0, #0
	bne _0805B11C
	ldr r0, _0805B124
	ldr r1, _0805B128
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	ldr r2, _0805B12C
	cmp r0, #0xf0
	bne _0805B104
	ldr r1, _0805B130
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, _0805B134
	ldr r0, [r0]
	str r0, [r2]
_0805B104:
	ldr r1, [r2]
	cmp r1, #0
	beq _0805B11C
	ldr r0, _0805B130
	ldr r0, [r0]
	cmp r0, #0
	beq _0805B11C
	subs r0, r1, r0
	cmp r0, #4
	bhi _0805B11C
	movs r0, #1
	strh r0, [r3]
_0805B11C:
	pop {r0}
	bx r0
	.align 2, 0
_0805B120: .4byte gUnknown_0200105C
_0805B124: .4byte gSomeBlend
_0805B128: .4byte 0x00002CA2
_0805B12C: .4byte gUnknown_02001064
_0805B130: .4byte gUnknown_02001068
_0805B134: .4byte gUnknown_02001060
	.syntax divided
