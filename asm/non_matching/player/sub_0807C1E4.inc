	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r7, r0, #0
	movs r4, #0
	movs r6, #0
	ldr r0, _0807C22C
	mov r8, r0
_0807C1FE:
	ldr r1, [r5, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	adds r0, r4, r0
	add r0, r8
	ldrb r0, [r0]
	adds r6, r6, r0
	cmp r7, r6
	bge _0807C234
	ldr r1, _0807C230
	adds r0, r5, r1
	strh r4, [r0]
	b _0807C23A
	.align 2, 0
_0807C22C: .4byte gUnknown_08112EA8
_0807C230: .4byte 0x0000020A
_0807C234:
	adds r4, #1
	cmp r4, #5
	ble _0807C1FE
_0807C23A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
