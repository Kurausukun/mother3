	.syntax unified
sub_080B065C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	bl onSuccess__6ActionP4Unit
	bl getMonsterInfo
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r7, _080B0750
	movs r0, #0
	movs r1, #0xf
	bl randS32
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	add r2, sp, #0xc
	movs r0, #0x20
	rsbs r0, r0, #0
	movs r3, #0x40
	mov sl, r3
	movs r3, #0
	mov r8, r3
	strh r0, [r2]
	mov r0, sl
	strh r0, [r2, #2]
	ldr r2, [sp, #0xc]
	add r0, sp, #0x10
	movs r6, #0x80
	lsls r6, r6, #1
	strh r6, [r0]
	strh r6, [r0, #2]
	ldr r3, [sp, #0x10]
	ldr r4, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r4
	bl getMonsterInfo
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0
	movs r1, #0xf
	bl randS32
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	add r2, sp, #0x14
	movs r0, #0x88
	lsls r0, r0, #1
	strh r0, [r2]
	mov r3, sl
	strh r3, [r2, #2]
	ldr r2, [sp, #0x14]
	add r0, sp, #0x18
	strh r6, [r0]
	strh r6, [r0, #2]
	ldr r3, [sp, #0x18]
	ldr r4, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r4
	bl getMonsterInfo
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	mov r0, sb
	ldr r3, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B0754
	mov r0, sp
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	add r1, sp, #0x1c
	mov r3, r8
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0750: .4byte gUnknown_080F9618
_080B0754: .4byte 0x000004E1
	.syntax divided
