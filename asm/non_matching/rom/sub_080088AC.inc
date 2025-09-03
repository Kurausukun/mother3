	.syntax unified
sub_080088AC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_08009C4C
	ldr r2, _0800890C
	adds r1, r2, #0
	ands r4, r1
	ldrh r2, [r0]
	ldr r1, _08008910
	ands r1, r2
	orrs r1, r4
	strh r1, [r0]
	lsls r5, r5, #4
	ldrb r2, [r0, #1]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r5
	strb r1, [r0, #1]
	ldrb r2, [r0, #2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #2]
	ldrh r2, [r0, #2]
	ldr r1, _08008914
	ands r1, r2
	strh r1, [r0, #2]
	ldr r1, _08008918
	ldr r0, _0800891C
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800890C: .4byte 0x00000FFF
_08008910: .4byte 0xFFFFF000
_08008914: .4byte 0xFFFFFC03
_08008918: .4byte gSomeBlend
_0800891C: .4byte 0x00011C8B
	.syntax divided
