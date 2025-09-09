	.syntax unified
sub_0809C818:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0807B4B8
	adds r0, r4, #0
	movs r1, #0x31
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _0809C83A
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
_0809C83A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
