	.syntax unified
sub_0809EC44:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r6, r1, #0
	mov sb, r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xd0
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, r8
	ldr r3, [r0, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	adds r7, r0, #0
	ldr r5, [r6, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r6, r6, r0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	movs r1, #0
	cmp r1, r0
	bge _0809ECB4
	adds r1, r0, #0
_0809ECB4:
	muls r7, r1, r7
	adds r0, r7, #0
	movs r1, #0x64
	bl sub_0807066C
	adds r7, r0, #0
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #1
	asrs r0, r0, #4
	lsls r1, r7, #4
	adds r1, r1, r7
	asrs r1, r1, #4
	bl randS32
	adds r7, r0, #0
	ldr r1, _0809ED00
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	muls r0, r7, r0
	movs r1, #0x64
	bl sub_0807066C
	adds r7, r0, #0
	movs r0, #1
	cmp r0, r7
	bge _0809ECF2
	adds r0, r7, #0
_0809ECF2:
	adds r7, r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809ED00: .4byte gUnknown_080F6004
	.syntax divided
