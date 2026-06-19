	.syntax unified
sub_080B1E14:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	bl onSuccess__6ActionP4Unit
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
	ldr r0, _080B1F00
	bl playSound
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
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
	movs r7, #0
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r1, r4, #0
	movs r3, #0x1e
	bl sub_08072F9C
	adds r3, r0, #0
	cmp r3, #0
	beq _080B1EF0
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	ldr r0, _080B1F04
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
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl print__3MsgRC5Colorb
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_080B1EF0:
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1F00: .4byte 0x000002FB
_080B1F04: .4byte 0x000003A7
	.syntax divided
