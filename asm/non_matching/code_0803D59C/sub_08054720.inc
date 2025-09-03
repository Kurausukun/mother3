	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r0, #0
	cmp r0, r7
	bhs _08054766
	adds r5, r3, #0
	adds r5, #0x3c
	movs r6, #0
	adds r4, r3, #0
	adds r4, #0x4c
_0805473E:
	movs r1, #0
	adds r2, r0, #1
_08054742:
	adds r3, r5, r1
	ldrb r0, [r3]
	cmp r0, ip
	bne _08054754
	strb r6, [r3]
	lsls r0, r1, #1
	adds r0, r4, r0
	strh r6, [r0]
	b _0805475E
_08054754:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _08054742
_0805475E:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	blo _0805473E
_08054766:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
