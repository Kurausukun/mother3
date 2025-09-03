	.syntax unified
	push {lr}
	mov ip, r0
	mov r2, ip
	adds r2, #0xac
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x56
	movs r2, #0
	strh r2, [r0]
	ldr r3, _08039BF8
	ldr r1, _08039BFC
	adds r0, r3, r1
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x58
	strh r1, [r0]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	mov r1, ip
	adds r1, #0x5a
	strh r0, [r1]
	adds r1, #2
	strh r2, [r1]
	mov r3, ip
	adds r3, #0x5e
	ldr r0, _08039C00
	strh r0, [r3]
	strh r2, [r1]
	mov r0, ip
	str r2, [r0, #0x60]
	str r2, [r0, #0x64]
	str r2, [r0, #0x68]
	adds r0, #0x48
	bl sub_080376EC
	pop {r0}
	bx r0
	.align 2, 0
_08039BF8: .4byte gGame
_08039BFC: .4byte 0x000067AC
_08039C00: .4byte 0x0000FFFF
	.syntax divided
