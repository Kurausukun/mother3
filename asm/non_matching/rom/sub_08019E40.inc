	.syntax unified
sub_08019E40:
	push {r4, r5, r6, lr}
	ldr r5, _08019EBC
	ldr r1, _08019EC0
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08019EB4
	ldr r2, _08019EC4
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08019EB4
	ldrb r0, [r5]
	cmp r0, #0xc
	bgt _08019E66
	cmp r0, #2
	bge _08019EB4
_08019E66:
	ldr r3, _08019EC8
	adds r6, r5, r3
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019EB4
	ldr r1, _08019ECC
	ldrh r2, [r1, #8]
	ldr r0, _08019ED0
	ands r0, r2
	ldrh r2, [r1, #8]
	strh r0, [r1, #8]
	ldr r2, _08019ED4
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r2, #0x1f
	strb r2, [r0]
	ldr r3, _08019ED8
	adds r0, r1, r3
	ldrb r3, [r0]
	strb r2, [r0]
	ldr r0, _08019EDC
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r2, [r1]
	bl sub_080030A4
	ldr r1, _08019EE0
	adds r4, r5, r1
	ldr r2, _08019EE4
	adds r1, r5, r2
	ldrh r1, [r1]
	bl __umodsi3
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r6]
_08019EB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019EBC: .4byte gGame
_08019EC0: .4byte 0x00009D14
_08019EC4: .4byte 0x000067C4
_08019EC8: .4byte 0x000067BA
_08019ECC: .4byte gSomeBlend
_08019ED0: .4byte 0x0000E1FF
_08019ED4: .4byte 0x00002C9C
_08019ED8: .4byte 0x00002C9D
_08019EDC: .4byte 0x00002C9E
_08019EE0: .4byte 0x000067BC
_08019EE4: .4byte 0x000067BE
	.syntax divided
