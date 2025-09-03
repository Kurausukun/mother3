	.syntax unified
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r2, _08056A04
	ldrh r1, [r2, #0xa]
	ldr r0, _08056A08
	ands r0, r1
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xa]
	ldr r0, _08056A0C
	ands r0, r1
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xa]
	ldr r1, _08056A10
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080569FC
	ldr r0, _08056A14
	ldr r1, _08056A18
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0x13
	str r0, [r2, #4]
	ldr r0, _08056A1C
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080569FC:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08056A04: .4byte 0x040000B0
_08056A08: .4byte 0x0000C5FF
_08056A0C: .4byte 0x00007FFF
_08056A10: .4byte 0x040000BA
_08056A14: .4byte gSomeBlend
_08056A18: .4byte 0x000030FC
_08056A1C: .4byte 0xA2600001
	.syntax divided
