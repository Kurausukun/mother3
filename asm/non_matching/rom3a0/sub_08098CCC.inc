	.syntax unified
sub_08098CCC:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
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
	ldr r0, _08098CF8
	adds r6, r5, r0
	b _08098D34
	.align 2, 0
_08098CF8: .4byte 0x00000F94
_08098CFC:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
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
	ldr r1, _08098D30
	cmp r0, r1
	bgt _08098D74
	adds r0, r5, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098D34
	movs r0, #0
	b _08098E3C
	.align 2, 0
_08098D30: .4byte 0x000001F3
_08098D34:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	cmp r4, r0
	bgt _08098CFC
_08098D74:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	movs r4, #0x96
	lsls r4, r4, #2
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r5, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098E44
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r5, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc6
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r1, [r5, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
_08098E3C:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08098E44: .4byte 0x00000659
	.syntax divided
