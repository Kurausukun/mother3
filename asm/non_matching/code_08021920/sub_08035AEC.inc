	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	add r5, sp, #4
	adds r1, r5, #0
	bl sub_08036BEC
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x14]
	lsrs r1, r1, #1
	subs r0, r0, r1
	cmp r0, #0
	bge _08035B28
	lsls r0, r1, #4
	strh r0, [r4]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08035B28:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r0, r1
	cmp r0, r6
	ble _08035B42
	subs r0, r6, r1
	lsls r0, r0, #4
	strh r0, [r4]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08035B42:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x16]
	subs r0, r0, r1
	cmp r0, #0
	bge _08035B58
	lsls r0, r1, #4
	strh r0, [r4, #2]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08035B58:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, r2
	ble _08035B6A
	lsls r0, r2, #4
	strh r0, [r4, #2]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08035B6A:
	mov r0, sp
	ldrh r0, [r0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
