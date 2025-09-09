	.syntax unified
sub_08099F74:
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099FCC
	adds r0, r4, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099FCC
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xc9
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #1
	b _08099FCE
_08099FCC:
	movs r0, #0
_08099FCE:
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
