	.syntax unified
sub_080BCDDC:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #7
	bl isMonsterVariant
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BCE08
	movs r4, #0x55
	movs r0, #0xa
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r6, #0
	b _080BCE34
_080BCE08:
	movs r4, #0x3c
	movs r2, #0xf
	mov r8, r2
	movs r3, #0xa
	mov sb, r3
	ldr r1, [r7, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0
	cmp r0, #1
	bne _080BCE34
	movs r6, #0xa
_080BCE34:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r1, r0, #0
	cmp r1, r4
	bge _080BCE5E
	ldr r2, [r7, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #5
	b _080BCEA2
_080BCE5E:
	mov r2, r8
	adds r0, r4, r2
	cmp r1, r0
	bge _080BCE82
	ldr r2, [r7, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #2
	b _080BCEA2
_080BCE82:
	add r0, sb
	cmp r1, r0
	bge _080BCEAA
	ldr r2, [r7, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #4
_080BCEA2:
	movs r3, #0x64
	bl _call_via_r4
	b _080BCF8A
_080BCEAA:
	adds r0, r0, r6
	cmp r1, r0
	bge _080BCF56
	adds r0, r5, #0
	bl dynaCastMonster
	adds r6, r0, #0
	cmp r6, #0
	beq _080BCF8A
	ldr r2, [r6, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r4, [r6, #0x1c]
	movs r3, #0xc2
	lsls r3, r3, #2
	adds r4, r4, r3
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	add r0, sp, #4
	bl __3Msg
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r3, [r7, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x9f
	lsls r2, r2, #1
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r7, r1
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
	b _080BCF8A
_080BCF56:
	ldr r3, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x9c
	lsls r2, r2, #1
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r7, r1
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
_080BCF8A:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
