	.syntax unified
sub_080B0A8C:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	bl onSuccess__6ActionP4Unit
	ldr r0, _080B0B28
	bl playSound
	movs r5, #2
_080B0AA0:
	movs r0, #0xba
	adds r1, r4, #0
	adds r2, r4, #0
	bl PlayAnimation
	movs r0, #0xa
	bl setsleep
	subs r5, #1
	cmp r5, #0
	bge _080B0AA0
	movs r0, #0x81
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08073198
	movs r0, #0x1e
	bl setsleep
	adds r0, r4, #0
	bl dynaCastMonster
	adds r2, r0, #0
	cmp r2, #0
	beq _080B0B1E
	ldr r1, [r2, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	bl sub_08073270
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B0B2C
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_080B0B1E:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0B28: .4byte 0x000003E5
_080B0B2C: .4byte 0x000004EA
	.syntax divided
