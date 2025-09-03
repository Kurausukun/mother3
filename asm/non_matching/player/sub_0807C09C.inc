	.syntax unified
sub_0807C09C:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r5, #0
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r5, r0
	bge _0807C0FE
	adds r1, r2, #0
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r6, #4
_0807C0BC:
	ldrh r0, [r2, #2]
	cmp r0, r4
	bne _0807C0F2
	adds r4, r1, #0
	ldr r3, [r1]
	cmp r5, r3
	bge _0807C0EE
	adds r2, r5, #0
	adds r0, r2, #1
	cmp r0, r3
	bge _0807C0E4
	adds r3, r6, r1
_0807C0D4:
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	stm r3!, {r0, r1}
	adds r2, #1
	adds r1, r2, #1
	ldr r0, [r4]
	cmp r1, r0
	blt _0807C0D4
_0807C0E4:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	movs r0, #1
	b _0807C100
_0807C0EE:
	movs r0, #0
	b _0807C100
_0807C0F2:
	adds r2, #8
	adds r6, #8
	adds r5, #1
	ldr r0, [r1]
	cmp r5, r0
	blt _0807C0BC
_0807C0FE:
	movs r0, #0
_0807C100:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
