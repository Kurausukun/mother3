	.syntax unified
sub_080B1158:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r1
	bl onSuccess__6ActionP4Unit
	movs r0, #0x20
	add r0, sb
	mov sl, r0
	mov r8, sp
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x10]
	add r6, sp, #8
	movs r2, #0x27
	str r2, [sp, #0xc]
_080B117E:
	mov r3, sb
	ldr r2, [r3, #0x20]
	adds r5, r2, #0
	adds r5, #0x18
	str r5, [sp, #0x14]
	movs r7, #0x18
	ldrsh r4, [r2, r7]
	add r4, sl
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	add r1, sl
	bl _call_via_r2
	add r0, sp, #4
	movs r1, #4
	rsbs r1, r1, #0
	strh r1, [r0]
	movs r3, #0
	ldr r2, [sp, #0x10]
	strh r3, [r2, #2]
	mov r5, r8
	movs r7, #0
	ldrsh r2, [r5, r7]
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r7, #2
	ldrsh r1, [r5, r7]
	ldr r5, [sp, #0x10]
	movs r7, #2
	ldrsh r0, [r5, r7]
	adds r2, r2, r3
	adds r1, r1, r0
	add r0, sp, #8
	strh r2, [r0]
	strh r1, [r6, #2]
	ldr r0, [sp, #0x14]
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	movs r0, #1
	bl setsleep
	ldr r1, [sp, #0xc]
	subs r1, #1
	str r1, [sp, #0xc]
	cmp r1, #0
	bge _080B117E
	mov r0, sb
	bl dynaCastMonster
	bl sub_08072FE0
	bl getPartyInfo
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xe8
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	movs r0, #0x1e
	movs r1, #0x32
	bl randS32
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
