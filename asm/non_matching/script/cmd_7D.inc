	.syntax unified
cmd_7D:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802059C
	ands r5, r1
	orrs r5, r0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	ldr r1, _080205A0
	ands r5, r1
	orrs r5, r0
	mov r4, sp
	mov r0, sp
	bl sub_0801A530
	ldr r2, _080205A4
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r5, r0
	ldr r3, _080205A8
	adds r1, r2, r3
	strh r0, [r1]
	asrs r0, r5, #0x10
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	adds r3, #2
	adds r1, r2, r3
	strh r0, [r1]
	ldr r0, _080205AC
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802059C: .4byte 0xFFFF0000
_080205A0: .4byte 0x0000FFFF
_080205A4: .4byte gGame
_080205A8: .4byte 0x00005964
_080205AC: .4byte 0x0000598C
	.syntax divided
