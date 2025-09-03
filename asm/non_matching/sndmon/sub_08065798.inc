	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #2
	cmp r0, #9
	bgt _0806582C
	mov r6, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r6, #2]
	ldrh r1, [r5, #0x3c]
	ldrh r2, [r5, #0x3e]
	adds r0, r1, r2
	strh r0, [r5, #0x3e]
	ldr r2, [r5, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	str r0, [sp]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	mov r1, sp
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	movs r2, #0x3e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r5, #0x3e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	adds r4, r5, #0
	adds r4, #0x44
	adds r0, r4, #0
	mov r1, sp
	bl sub_080714A4
	adds r5, #0xac
	adds r0, r4, #0
	bl sub_080714CC
	mov r1, sp
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #2
	ldrsh r3, [r6, r1]
	add r1, sp, #8
	adds r2, r2, r0
	strh r2, [r1]
	strh r3, [r1, #2]
	adds r0, r5, #0
	bl sub_0806DB74
_0806582C:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
