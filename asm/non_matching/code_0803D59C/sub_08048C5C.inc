	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, _08048CA8
	adds r0, r3, r1
	str r3, [r0]
	ldr r4, _08048CAC
	adds r2, r3, r4
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08048CB0
	adds r0, r3, r1
	ldrb r0, [r0]
	lsrs r1, r0, #2
	movs r2, #3
	ands r2, r0
	adds r5, r2, #0
	subs r4, #0xa
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	ldr r0, _08048CB4
	adds r4, r3, r0
	strb r1, [r4]
	cmp r2, #2
	beq _08048CC0
	cmp r2, #2
	bgt _08048CB8
	cmp r2, #1
	beq _08048CCA
	b _08048CD4
	.align 2, 0
_08048CA8: .4byte 0x000025F4
_08048CAC: .4byte 0x000076DC
_08048CB0: .4byte 0x000076D8
_08048CB4: .4byte 0x000076D5
_08048CB8:
	cmp r5, #3
	bne _08048CD4
	adds r0, r1, #1
	strb r0, [r4]
_08048CC0:
	ldr r4, _08048CDC
	adds r1, r3, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08048CCA:
	ldr r0, _08048CE0
	adds r1, r3, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08048CD4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048CDC: .4byte 0x000076D4
_08048CE0: .4byte 0x000076D3
	.syntax divided
