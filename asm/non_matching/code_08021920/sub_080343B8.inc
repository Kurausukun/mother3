	.syntax unified
sub_080343B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, _08034424
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, _08034428
	cmp r0, r1
	bls _0803440A
	movs r0, #0
	str r0, [r2]
	movs r4, #0
	ldr r0, _0803442C
	ldr r1, _08034430
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r4, r2
	bhs _0803440A
	adds r6, r0, #0
	movs r0, #9
	rsbs r0, r0, #0
	adds r5, r0, #0
_080343F0:
	adds r0, r4, #0
	bl get_char_stats
	adds r0, #0x30
	ldrb r1, [r0]
	ands r1, r5
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6]
	cmp r4, r1
	blo _080343F0
_0803440A:
	ldr r2, _0803442C
	ldr r1, _08034434
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _080344AC
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	adds r6, r2, #0
	mov r5, sp
	b _0803443E
	.align 2, 0
_08034424: .4byte gUnknown_0200100C
_08034428: .4byte 0x000001DF
_0803442C: .4byte gGame
_08034430: .4byte 0x00008299
_08034434: .4byte 0x0000829B
_08034438:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0803443E:
	ldr r2, _080344B8
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803445E
	adds r0, r4, #0
	bl get_char_stats
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08034438
	movs r0, #1
	strh r0, [r5]
_0803445E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08034482
	ldr r2, _080344BC
	ldr r1, _080344C0
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	add r0, r8
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r2, r7, #2
	adds r1, r7, #0
	bl sub_080270A0
_08034482:
	ldr r0, _080344C4
	adds r2, r6, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080344C8
	cmp r0, r1
	bls _080344AC
	movs r0, #0
	strh r0, [r2]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #2
	bl sub_08002FD4
	ldr r2, _080344C0
	adds r1, r6, r2
	strh r0, [r1]
_080344AC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080344B8: .4byte 0x00008299
_080344BC: .4byte gUnknown_08D2E070
_080344C0: .4byte 0x000082B2
_080344C4: .4byte 0x000082B0
_080344C8: .4byte 0x02570000
	.syntax divided
