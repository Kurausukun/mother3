	.syntax unified
sub_080B21FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl onSuccess__6ActionP4Unit
	ldr r0, _080B2300
	bl playSound
	add r0, sp, #0xc
	mov r8, r0
	movs r7, #0xb0
	lsls r7, r7, #1
	movs r5, #2
_080B221A:
	ldr r1, [r6, #0x1c]
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, r1, r7
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0xba
	adds r1, r4, #0
	bl PlayAnimation
	movs r0, #0xa
	bl setsleep
	subs r5, #1
	cmp r5, #0
	bge _080B221A
	ldr r1, [r6, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x81
	adds r1, r5, #0
	bl sub_08073198
	movs r0, #0x2d
	bl setsleep
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl dynaCastMonster
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0x2d
	bl setsleep
	bl sub_08073270
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B2304
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	mov r3, r8
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	mov r0, sp
	mov r1, r8
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2300: .4byte 0x00000611
_080B2304: .4byte 0x000003EA
	.syntax divided
