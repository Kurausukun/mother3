	.syntax unified
sub_0804774C:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r1, _08047790
	movs r3, #0x85
	lsls r3, r3, #7
	adds r0, r1, r3
	ldrh r0, [r0]
	cmp r0, #6
	bls _08047762
	movs r0, #6
_08047762:
	adds r6, r0, #0
	ldrh r0, [r2, #8]
	lsls r0, r0, #2
	ldr r2, _08047794
	adds r1, r1, r2
	adds r4, r0, r1
	movs r5, #0
	cmp r5, r6
	bhs _080477B2
_08047774:
	ldrb r1, [r4]
	movs r0, #2
	bl get_misctext_msg
	adds r1, r0, #0
	adds r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _08047798
	movs r0, #0xf
	b _0804779A
	.align 2, 0
_08047790: .4byte gSomeBlend
_08047794: .4byte 0x00003D44
_08047798:
	movs r0, #1
_0804779A:
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #9
	movs r3, #9
	bl sub_08047B9C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #4
	cmp r5, r6
	blo _08047774
_080477B2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
