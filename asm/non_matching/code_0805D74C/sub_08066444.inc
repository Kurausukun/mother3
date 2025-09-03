	.syntax unified
sub_08066444:
	push {r4, r5, r6, lr}
	sub sp, #0x168
	adds r5, r0, #0
	bl sub_0806B070
	movs r1, #1
	movs r2, #0
	bl sub_0806BA38
	bl sub_0806B070
	movs r1, #2
	movs r2, #0
	bl sub_0806BA38
	mov r0, sp
	bl sub_08066584
	mov r0, sp
	bl nullsub_29
	movs r0, #0x1e
	bl setsleep
	add r1, sp, #0x148
	movs r0, #0x6d
	strb r0, [r1]
	movs r0, #0x6f
	strb r0, [r1, #1]
	movs r0, #0x74
	strb r0, [r1, #2]
	movs r0, #0x68
	strb r0, [r1, #3]
	movs r0, #0x65
	strb r0, [r1, #4]
	movs r0, #0x72
	strb r0, [r1, #5]
	movs r0, #0x33
	strb r0, [r1, #6]
	movs r0, #0x20
	strb r0, [r1, #7]
	movs r4, #0
	add r6, sp, #0x154
	b _080664B4
_0806649C:
	ldr r1, [r5, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r6, r4
	strb r0, [r1]
	adds r4, #1
_080664B4:
	ldr r1, [r5, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _0806649C
	ldr r1, [r5, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0x14
	bge _080664EC
	adds r2, r6, #0
	movs r3, #0
_080664E2:
	adds r0, r2, r1
	strb r3, [r0]
	adds r1, #1
	cmp r1, #0x14
	blt _080664E2
_080664EC:
	add r4, sp, #0x148
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0805D260
	strh r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08051840
	movs r0, #0x1e
	bl setsleep
	mov r0, sp
	movs r1, #2
	bl sub_080666F4
	movs r0, #1
	add sp, #0x168
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
