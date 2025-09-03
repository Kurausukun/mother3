	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov ip, r0
	ldr r0, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsrs r2, r2, #0xb
	adds r6, r1, r2
	adds r3, r3, r5
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r2, r5, #0
	cmp r2, r4
	bhi _080035A0
_0800357C:
	cmp r3, r4
	bls _08003582
	adds r3, r5, #0
_08003582:
	lsls r0, r2, #1
	mov r7, sp
	adds r1, r7, r0
	lsls r0, r3, #1
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	bls _0800357C
_080035A0:
	adds r2, r5, #0
	cmp r2, r4
	bhi _080035BA
_080035A6:
	lsls r0, r2, #1
	adds r1, r0, r6
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	bls _080035A6
_080035BA:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
