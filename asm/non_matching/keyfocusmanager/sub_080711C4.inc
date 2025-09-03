	.syntax unified
sub_080711C4:
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080711F6
	cmp r0, #1
	bgt _080711EA
	cmp r0, #0
	beq _080711F0
	b _08071258
_080711EA:
	cmp r0, #2
	beq _0807122A
	b _08071258
_080711F0:
	ldr r0, [r5, #0x58]
	str r0, [r6]
	b _0807125E
_080711F6:
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r2, [r5, #0x1c]
	adds r2, #0xb8
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	subs r4, r4, r1
	adds r0, r5, #0
	adds r0, #0x5a
	movs r1, #0
	ldrsh r0, [r0, r1]
	strh r4, [r6]
	b _0807125C
_0807122A:
	adds r0, r5, #0
	adds r0, #0x58
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r2, [r5, #0x1c]
	adds r2, #0xb8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	adds r0, r5, #0
	adds r0, #0x5a
	movs r1, #0
	ldrsh r0, [r0, r1]
	strh r4, [r6]
	b _0807125C
_08071258:
	movs r0, #0
	strh r0, [r6]
_0807125C:
	strh r0, [r6, #2]
_0807125E:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
