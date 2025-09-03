	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r4, r3, #0
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08018944
	adds r6, r1, r0
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	bne _08018978
	cmp r3, #0
	bne _08018948
	strh r3, [r6, #0x18]
	strh r3, [r6, #0x1c]
	strh r3, [r6, #0x1e]
	b _08018978
	.align 2, 0
_08018944: .4byte gUnknown_0200B4B0
_08018948:
	ldr r0, _08018980
	adds r0, r2, r0
	ldrb r5, [r0]
	ldr r0, _08018984
	adds r0, r2, r0
	ldrb r0, [r0]
	muls r0, r4, r0
	strh r0, [r6, #0x18]
	mov r4, sp
	mov r2, sp
	adds r2, #2
	adds r0, r7, #0
	mov r1, sp
	bl sub_080270A0
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r5, r0
	strh r0, [r6, #0x1c]
	movs r1, #2
	ldrsh r0, [r4, r1]
	muls r0, r5, r0
	strh r0, [r6, #0x1e]
_08018978:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018980: .4byte gUnknown_08D2D628
_08018984: .4byte gUnknown_08D2D62E
	.syntax divided
