	.syntax unified
sub_08055D3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08055D98
	movs r1, #0x88
	lsls r1, r1, #2
	adds r2, r0, r1
	subs r1, #0x9d
	strh r1, [r2]
	movs r3, #0
	ldr r2, _08055D9C
	adds r2, r2, r0
	mov r8, r2
	mov ip, r3
	adds r1, #0xa9
	adds r7, r0, r1
	ldr r2, _08055DA0
	adds r6, r0, r2
	adds r5, r0, #0
	movs r4, #0xd0
	lsls r4, r4, #1
_08055D66:
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055D84
	lsls r1, r3, #1
	mov r2, r8
	adds r0, r1, r2
	strh r4, [r0]
	adds r2, r1, r7
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r1, r1, r6
	mov r0, ip
	strh r0, [r1]
_08055D84:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #4
	bls _08055D66
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055D98: .4byte gSave
_08055D9C: .4byte 0x00000222
_08055DA0: .4byte 0x00000236
	.syntax divided
