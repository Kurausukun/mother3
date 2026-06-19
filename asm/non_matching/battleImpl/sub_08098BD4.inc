	.syntax unified
sub_08098BD4:
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	b _08098C34
_08098BFA:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, _08098C30
	cmp r0, r1
	bgt _08098C52
	adds r0, r4, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098C34
	movs r0, #0
	b _08098CBA
	.align 2, 0
_08098C30: .4byte 0x000003E7
_08098C34:
	ldr r1, _08098CC4
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _08098BFA
_08098C52:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	movs r2, #0x96
	lsls r2, r2, #2
	ldr r3, [r1, #4]
	adds r1, r2, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098CC8
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #1
_08098CBA:
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08098CC4: .4byte 0x00000F94
_08098CC8: .4byte 0x0000065A
	.syntax divided
