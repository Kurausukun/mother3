	.syntax unified
sub_080B0894:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl onSuccess__6ActionP4Unit
	movs r4, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bne _080B08BC
	movs r0, #1
	movs r1, #2
	bl randS32
	adds r4, r0, #0
	b _080B08C6
_080B08BC:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bne _080B08C6
	movs r4, #1
_080B08C6:
	add r5, sp, #0xc
	cmp r4, #0
	ble _080B0908
	movs r0, #0xaa
	mov sl, r0
	movs r0, #0x84
	mov sb, r0
	movs r0, #0x20
	mov r8, r0
	movs r7, #0xa7
_080B08DA:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xab
	cmp r0, #0x14
	blt _080B08FC
	mov r1, sl
	cmp r0, #0x28
	blt _080B08FC
	mov r1, sb
	cmp r0, #0x3c
	blt _080B08FC
	adds r1, r7, #0
	cmp r0, #0x50
	bge _080B08FC
	mov r1, r8
_080B08FC:
	adds r0, r1, #0
	bl sub_08072F54
	subs r4, #1
	cmp r4, #0
	bne _080B08DA
_080B0908:
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B094C
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, sp
	adds r1, r5, #0
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B094C: .4byte 0x0000032A
	.syntax divided
