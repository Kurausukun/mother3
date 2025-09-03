	.syntax unified
sub_08059358:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #0
	str r2, [r4, #0x5c]
	str r2, [r4, #0x60]
	adds r3, r4, #0
	adds r3, #0x64
	strb r2, [r3]
	movs r0, #0x65
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r4]
	strh r2, [r4, #2]
	ldr r2, _080593AC
	ldr r5, _080593B0
	adds r4, r2, r5
	ldrb r1, [r4]
	movs r0, #2
	orrs r1, r0
	ldrb r3, [r3]
	adds r5, #4
	adds r0, r2, r5
	strb r3, [r0]
	movs r0, #4
	orrs r1, r0
	strb r1, [r4]
	ldr r0, _080593B4
	adds r2, r2, r0
	strb r3, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080593AC: .4byte gSomeBlend
_080593B0: .4byte 0x0000328C
_080593B4: .4byte 0x00003291
	.syntax divided
