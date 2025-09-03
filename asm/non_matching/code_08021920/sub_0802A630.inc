	.syntax unified
sub_0802A630:
	push {lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
_0802A63A:
	mov r0, ip
	adds r0, #0x3c
	adds r0, r0, r3
	ldrb r2, [r0]
	cmp r2, #0
	bne _0802A660
	strb r1, [r0]
	lsls r1, r3, #1
	mov r0, ip
	adds r0, #0x4c
	adds r0, r0, r1
	strh r2, [r0]
	mov r0, ip
	adds r1, r3, #0
	movs r2, #0
	bl sub_0802BA78
	movs r0, #1
	b _0802A66C
_0802A660:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _0802A63A
	movs r0, #0
_0802A66C:
	pop {r1}
	bx r1
	.syntax divided
