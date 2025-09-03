	.syntax unified
sub_08031FCC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	adds r6, r1, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	ldrh r0, [r1]
	cmp r0, #4
	bls _08032002
	movs r0, #4
_08032002:
	mov sl, r0
	mov r2, sb
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r4, r1, #2
	movs r7, #0
	mov r8, r7
	cmp r8, sl
	blo _08032018
	b _08032110
_08032018:
	ldr r0, _08032020
	ldr r2, _08032024
	adds r1, r0, r2
	b _0803210A
	.align 2, 0
_08032020: .4byte gSomeBlend
_08032024: .4byte 0x000121B0
_08032028:
	movs r7, #0
	ldrsh r1, [r6, r7]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08035940
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080320E4
	ldr r1, _0803205C
	ldrh r0, [r1]
	lsls r0, r0, #3
	ldr r1, _08032060
	adds r5, r0, r1
	ldr r0, _08032064
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r2, [r4]
	cmp r1, r0
	blt _08032068
	ldr r7, [sp, #0x30]
	ldrb r3, [r7, #1]
	b _0803206C
	.align 2, 0
_0803205C: .4byte gSceneObjCount
_08032060: .4byte gUnknown_030038F0
_08032064: .4byte gUnknown_02001008
_08032068:
	ldr r0, [sp, #0x30]
	ldrb r3, [r0]
_0803206C:
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	movs r1, #2
	ldrsh r0, [r6, r1]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r7, #0
	ldrsh r1, [r6, r7]
	adds r0, r0, r1
	ldr r1, _080320BC
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r7, #0xf0
	lsls r7, r7, #6
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5]
	lsls r0, r3, #0xa
	ldr r1, [sp, #0xc]
	orrs r0, r1
	mov r2, sb
	orrs r0, r2
	strh r0, [r5, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080320C0
	movs r0, #0
	b _080320DA
	.align 2, 0
_080320BC: .4byte 0x000001FF
_080320C0:
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	ldr r1, [sp, #4]
	adds r1, #0xbb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _08032120
	adds r0, r0, r2
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080320DA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_08032DAC
_080320E4:
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	ldr r7, [sp, #0xc]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, sl
	bhs _08032110
	ldr r1, _08032124
_0803210A:
	ldrh r0, [r1]
	cmp r0, #0x7f
	bls _08032028
_08032110:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032120: .4byte 0xFF600000
_08032124: .4byte gSceneObjCount
	.syntax divided
