	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r3, _08018F64
	ldr r4, _08018F68
	ldr r0, _08018F6C
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08018F70
	ldr r5, _08018F74
	ldr r2, _08018F78
	adds r2, r2, r5
	mov sb, r2
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _08018F7C
	ldr r2, _08018F80
	adds r0, r5, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08018F84
	ldr r0, _08018F88
	adds r5, r5, r0
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08018F8C
	adds r6, r4, r1
	ldr r2, _08018F90
	adds r2, r2, r4
	mov sl, r2
	adds r0, r6, #0
	mov r1, sl
	bl _call_via_r3
	ldr r0, _08018F94
	adds r1, r4, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	mov r8, r2
	adds r0, r6, #0
	bl sub_08001B18
	ldr r0, _08018F98
	adds r4, r4, r0
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	bl sub_08001B18
	ldrh r0, [r5]
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018F64: .4byte gUnknown_03004E15
_08018F68: .4byte gSomeBlend
_08018F6C: .4byte 0x0001ED11
_08018F70: .4byte gUnknown_03004B0C
_08018F74: .4byte gGame
_08018F78: .4byte 0x000067B2
_08018F7C: .4byte gUnknown_03004B0E
_08018F80: .4byte 0x000067B4
_08018F84: .4byte gUnknown_03004B10
_08018F88: .4byte 0x000067B6
_08018F8C: .4byte 0x00014810
_08018F90: .4byte 0x00014950
_08018F94: .4byte 0x00014BD0
_08018F98: .4byte 0x00014D10
	.syntax divided
