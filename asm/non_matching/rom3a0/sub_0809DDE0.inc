	.syntax unified
sub_0809DDE0:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	adds r0, r7, #0
	bl dynaCastMonster
	adds r6, r0, #0
	cmp r6, #0
	beq _0809DEA2
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x4a
	bgt _0809DE70
	ldr r2, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r7, #0
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809DE6C
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	b _0809DEA2
	.align 2, 0
_0809DE6C: .4byte 0x00000243
_0809DE70:
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809DEAC
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
_0809DEA2:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DEAC: .4byte 0x0000023F
	.syntax divided
