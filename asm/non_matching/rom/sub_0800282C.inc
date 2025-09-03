	.syntax unified
sub_0800282C:
	push {r4, lr}
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #1
	beq _0800285C
	cmp r0, #1
	bgt _08002848
	cmp r0, #0
	beq _0800284E
	b _08002890
_08002848:
	cmp r3, #2
	beq _08002874
	b _08002890
_0800284E:
	ldr r0, _08002858
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08002892
	.align 2, 0
_08002858: .4byte gUnknown_08CDB9C8
_0800285C:
	ldr r0, _0800286C
	lsls r1, r1, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, _08002870
	b _08002880
	.align 2, 0
_0800286C: .4byte gUnknown_08CDB9D0
_08002870: .4byte gUnknown_08CDB9D8
_08002874:
	ldr r0, _08002888
	lsls r1, r1, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, _0800288C
_08002880:
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r4]
	b _08002896
	.align 2, 0
_08002888: .4byte gUnknown_08CDB9E0
_0800288C: .4byte gUnknown_08CDB9E8
_08002890:
	movs r0, #0
_08002892:
	strh r0, [r4]
	strh r0, [r2]
_08002896:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
