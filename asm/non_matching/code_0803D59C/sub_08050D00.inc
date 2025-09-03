	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	adds r7, r1, #0
	ldrh r0, [r2]
	movs r1, #2
	cmp r0, #2
	bhi _08050D14
	adds r1, r0, #0
_08050D14:
	adds r0, r7, #0
	adds r0, #0x61
	strb r1, [r0]
	adds r2, #2
	mov r8, r2
	adds r4, r7, #0
	adds r4, #0x34
	movs r5, #0
	adds r6, r0, #0
	b _08050D52
_08050D28:
	ldr r2, [r7, #0x14]
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	ldm r0!, {r1}
	lsls r0, r1, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	adds r2, r2, r0
	str r2, [r4]
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r4, #4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #8
_08050D52:
	ldrb r0, [r6]
	cmp r5, r0
	blo _08050D28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
