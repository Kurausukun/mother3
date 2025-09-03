	.syntax unified
sub_0800A240:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0800A2B0
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800A266
	ldr r2, _0800A2B4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x19
	bne _0800A266
	ldr r2, _0800A2B8
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0x1f
	beq _0800A278
	cmp r0, #0x23
	beq _0800A278
_0800A266:
	bl sub_08005BFC
	ldr r0, _0800A2BC
	ldr r1, _0800A2C0
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0800A278:
	ldr r4, _0800A2BC
	ldr r0, _0800A2C4
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	bl sub_0800A9E0
	ldr r1, _0800A2C8
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_0800AB74
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A2B0: .4byte gGame
_0800A2B4: .4byte 0x0000595B
_0800A2B8: .4byte 0x000067AC
_0800A2BC: .4byte gSomeBlend
_0800A2C0: .4byte 0x000121BA
_0800A2C4: .4byte 0x00011D16
_0800A2C8: .4byte 0x00011C94
	.syntax divided
