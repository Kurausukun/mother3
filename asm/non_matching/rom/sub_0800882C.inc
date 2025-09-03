	.syntax unified
	push {r4, r5, r6, lr}
	movs r0, #0
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08008860
	ldrb r0, [r0]
	cmp r0, #2
	bne _08008868
	movs r6, #1
	cmp r4, #0x64
	bne _08008854
	cmp r5, #0x64
	beq _0800886A
_08008854:
	ldr r0, _08008864
	strb r6, [r0, #2]
	bl sub_08003EA0
	b _0800886A
	.align 2, 0
_08008860: .4byte gUnknown_020051E4
_08008864: .4byte gUnknown_02004100
_08008868:
	movs r6, #2
_0800886A:
	cmp r4, #0x64
	bne _08008878
	movs r0, #0
	adds r1, r6, #0
	bl sub_08003AB8
	b _08008884
_08008878:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_08027B84
_08008884:
	cmp r5, #0x64
	bne _08008892
	movs r0, #1
	adds r1, r6, #0
	bl sub_08003AB8
	b _0800889E
_08008892:
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_08027B84
_0800889E:
	movs r0, #8
	movs r1, #4
	bl sub_08003B30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
