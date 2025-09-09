	.syntax unified
sub_0809A4AC:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A56C
	movs r0, #0x78
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A568
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	b _0809A56E
	.align 2, 0
_0809A568: .4byte 0x00000641
_0809A56C:
	movs r0, #0
_0809A56E:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
