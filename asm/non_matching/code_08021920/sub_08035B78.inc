	.syntax unified
sub_08035B78:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x88
	ldrh r1, [r0]
	movs r0, #0xe6
	lsls r0, r0, #1
	cmp r1, r0
	bne _08035BCC
	adds r0, r5, #0
	adds r0, #0xc4
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	cmp r0, #0x22
	bne _08035BCC
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08035C04
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08035C04
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r6
	bgt _08035C04
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, r3
	bgt _08035C04
	b _08035C00
_08035BCC:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08035C04
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08035C04
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldrh r0, [r5, #0x14]
	lsrs r1, r0, #1
	subs r0, r2, r1
	cmp r0, #0
	blt _08035C04
	adds r0, r2, r1
	cmp r0, r6
	bgt _08035C04
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldrh r0, [r5, #0x16]
	subs r0, r1, r0
	cmp r0, #0
	blt _08035C04
	cmp r1, r3
	bgt _08035C04
_08035C00:
	movs r0, #1
	b _08035C06
_08035C04:
	movs r0, #0
_08035C06:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
