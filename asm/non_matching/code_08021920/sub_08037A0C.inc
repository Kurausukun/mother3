	.syntax unified
	push {r4, r5, lr}
	sub sp, #8
	mov r5, sp
	movs r0, #0
	mov r1, sp
	bl sub_08036C00
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_0801A530
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x60
	ble _08037A50
	ldr r2, _08037A48
	ldr r0, _08037A4C
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x1a]
	movs r0, #0xa0
	strh r0, [r2, #0x1a]
	b _08037A66
	.align 2, 0
_08037A48: .4byte gSomeBlend
_08037A4C: .4byte 0x000035BA
_08037A50:
	ldr r1, _08037A70
	ldr r2, _08037A74
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldrh r0, [r1, #0x1a]
	ldr r0, _08037A78
	strh r0, [r1, #0x1a]
_08037A66:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037A70: .4byte gSomeBlend
_08037A74: .4byte 0x000035BA
_08037A78: .4byte 0x0000FFE0
	.syntax divided
