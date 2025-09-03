	.syntax unified
sub_0804C51C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0804C594
	ldr r0, _0804C598
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0804C59C
	adds r3, r2, r1
	ldrh r1, [r3]
	ldr r0, _0804C5A0
	ands r0, r1
	strh r0, [r3]
	ldr r5, _0804C5A4
	movs r6, #0
	ldr r0, _0804C5A8
	adds r0, r0, r2
	mov sb, r0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r1, _0804C5AC
	adds r1, r1, r2
	mov r8, r1
_0804C54E:
	lsls r4, r6, #5
	mov r2, sb
	adds r0, r4, r2
	movs r1, #0x20
	adds r2, r7, #0
	bl sub_08001B54
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, r7
	beq _0804C578
	ldrh r0, [r5, #2]
	ldrh r1, [r5, #4]
	bl get_misctext_msg
	adds r1, r0, #0
	mov r2, r8
	adds r0, r4, r2
	movs r2, #9
	bl sub_08002420
_0804C578:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0xc
	cmp r6, #0xe
	bls _0804C54E
	bl sub_0804C944
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C594: .4byte gSomeBlend
_0804C598: .4byte 0x00004A30
_0804C59C: .4byte 0x00004ECE
_0804C5A0: .4byte 0xFFFFFE1F
_0804C5A4: .4byte gUnknown_080C69CC
_0804C5A8: .4byte 0x00004A32
_0804C5AC: .4byte 0x00004C12
	.syntax divided
