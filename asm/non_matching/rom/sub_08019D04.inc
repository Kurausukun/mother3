	.syntax unified
sub_08019D04:
	push {r4, r5, r6, r7, lr}
	ldr r2, _08019D6C
	ldr r0, _08019D70
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08019D74
	adds r1, r2, r0
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08019D78
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #3
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	movs r3, #0
	adds r5, r2, #0
	mov ip, r5
	ldr r6, _08019D7C
	adds r7, r4, #0
	adds r4, r1, #0
_08019D3A:
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #3
	add r1, ip
	adds r1, r1, r6
	ldrb r2, [r1]
	adds r0, r7, #0
	ands r0, r2
	ands r0, r4
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #2
	bls _08019D3A
	ldrb r1, [r5, #3]
	lsls r0, r1, #0x19
	cmp r0, #0
	bge _08019D80
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #3]
	b _08019D8E
	.align 2, 0
_08019D6C: .4byte gGame
_08019D70: .4byte 0x000067B4
_08019D74: .4byte 0x000067B6
_08019D78: .4byte 0x000067C5
_08019D7C: .4byte 0x000058E5
_08019D80:
	ldr r0, _08019D94
	ldr r1, _08019D98
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_08019D8E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019D94: .4byte gSomeBlend
_08019D98: .4byte 0x000121BB
	.syntax divided
