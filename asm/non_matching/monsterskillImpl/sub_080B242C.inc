	.syntax unified
sub_080B242C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	bl onSuccess__6ActionP4Unit
	ldr r0, _080B2550
	bl playSound
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r6, #0xb0
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl dynaCastMonster
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	bl sub_08072DFC__Fv
	adds r4, r0, #0
	adds r4, #1
	bl sub_08072DFC__Fv
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08063960
	add r4, sp, #0x20
	adds r0, r4, #0
	mov r1, sp
	bl sub_080639FC
	mov r0, sp
	movs r1, #2
	bl _._15struct_08063998
	ldr r0, _080B2554
	bl playSound
	ldr r1, [r7, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r2, sp, #0x24
	movs r1, #0x19
	movs r3, #0
	mov sl, r3
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r1, r4, #0
	movs r3, #0x1e
	bl sub_08072F9C
	adds r3, r0, #0
	cmp r3, #0
	beq _080B253E
	ldr r4, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	ldr r0, _080B2558
	mov sb, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x14
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	add r6, sp, #8
	adds r0, r6, #0
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, sb
	mov r3, r8
	bl _call_via_r4
	add r1, sp, #0x28
	mov r2, sl
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl print__3MsgRC5Colorb
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_080B253E:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2550: .4byte 0x00000613
_080B2554: .4byte 0x00000634
_080B2558: .4byte 0x000003AA
	.syntax divided
