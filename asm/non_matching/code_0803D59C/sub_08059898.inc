	.syntax unified
sub_08059898:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _080598B8
	ldr r0, _080598BC
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080598C0
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080599A8
	b _080598CA
	.align 2, 0
_080598B8: .4byte gSomeBlend
_080598BC: .4byte 0x00002D15
_080598C0: .4byte 0x00002CB0
_080598C4:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
_080598CA:
	adds r0, r4, #0
	bl sub_08059A8C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080598C4
	ldr r1, _08059930
	ldr r0, _08059934
	adds r4, r1, r0
	ldrb r2, [r4]
	movs r3, #1
	movs r5, #2
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r4]
	movs r6, #0
	ldr r0, _08059938
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08059934
	adds r4, r1, r0
	movs r7, #1
_080598FA:
	mov r0, r8
	bl sub_08059A8C
	ldrb r0, [r4]
	ands r0, r5
	orrs r0, r7
	strb r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1d
	bls _080598FA
	ldr r4, _0805993C
	adds r0, r4, #0
	bl sub_08059B04
	adds r4, #0x65
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059930: .4byte gSomeBlend
_08059934: .4byte 0x00004814
_08059938: .4byte 0x00002CB0
_0805993C: .4byte gUnknown_02018CD8
	.syntax divided
