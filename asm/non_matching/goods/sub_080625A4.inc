	.syntax unified
sub_080625A4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	str r1, [sp]
	ldr r0, _080625C4
	mov r1, r8
	str r0, [r1, #0x1c]
	adds r1, #0x60
	str r1, [sp, #8]
	adds r4, r1, #0
	b _080625FC
	.align 2, 0
_080625C4: .4byte vt_09F4E320
_080625C8:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_080638BC
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _080625FC
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _080625F6
	adds r1, r2, #0
_080625EC:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080625EC
_080625F6:
	subs r0, r6, #1
	mov r3, ip
	str r0, [r3, #4]
_080625FC:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062606
	movs r1, #1
_08062606:
	cmp r1, #0
	beq _080625C8
	movs r5, #0
	mov r0, r8
	adds r0, #0x70
	ldr r1, [r0, #4]
	adds r6, r0, #0
	mov r7, r8
	adds r7, #0x80
	movs r0, #0x54
	add r0, r8
	mov sb, r0
	movs r3, #0x48
	add r3, r8
	mov sl, r3
	mov r0, r8
	adds r0, #0x3c
	str r0, [sp, #4]
	mov r3, r8
	adds r3, #0x30
	str r3, [sp, #0x10]
	subs r0, #0x18
	str r0, [sp, #0xc]
	cmp r5, r1
	bge _0806265E
	adds r4, r6, #0
_0806263A:
	lsls r1, r5, #2
	ldr r0, [r4, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08062656
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08062656:
	adds r5, #1
	ldr r0, [r4, #4]
	cmp r5, r0
	blt _0806263A
_0806265E:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08062668
	bl __builtin_vec_delete
_08062668:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08062672
	bl __builtin_vec_delete
_08062672:
	ldr r1, [sp, #8]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0806267E
	bl __builtin_vec_delete
_0806267E:
	mov r3, sb
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0806268A
	bl __builtin_vec_delete
_0806268A:
	mov r1, sl
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08062696
	bl __builtin_vec_delete
_08062696:
	ldr r3, [sp, #4]
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080626A2
	bl __builtin_vec_delete
_080626A2:
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080626AE
	bl __builtin_vec_delete
_080626AE:
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080626BA
	bl __builtin_vec_delete
_080626BA:
	mov r0, r8
	ldr r1, [sp]
	bl _._4Base
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
