	.syntax unified
sub_0804C5B0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0804C610
	mov r8, r0
	ldr r0, _0804C614
	add r0, r8
	strb r4, [r0]
	ldr r7, _0804C618
	add r7, r8
	ldrh r1, [r7]
	ldr r0, _0804C61C
	mov sl, r0
	ands r0, r1
	strh r0, [r7]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0804C620
	adds r6, r0, r1
	lsls r1, r4, #5
	mov sb, r1
	ldr r0, _0804C624
	add r0, r8
	adds r5, r1, r0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_08001B54
	cmp r4, #0xd
	beq _0804C62C
	cmp r4, #0xe
	beq _0804C64C
	ldrh r0, [r6, #2]
	ldrh r1, [r6, #4]
	bl get_misctext_msg
	adds r1, r0, #0
	ldr r0, _0804C628
	add r0, r8
	add r0, sb
	b _0804C63E
	.align 2, 0
_0804C610: .4byte gSomeBlend
_0804C614: .4byte 0x00004A30
_0804C618: .4byte 0x00004ECE
_0804C61C: .4byte 0xFFFFFE1F
_0804C620: .4byte gUnknown_080C69CC
_0804C624: .4byte 0x00004A32
_0804C628: .4byte 0x00004C12
_0804C62C:
	ldr r1, _0804C644
	ldr r4, _0804C648
	add r4, r8
	adds r0, r4, #0
	movs r2, #9
	bl sub_08002420
	adds r0, r5, #0
	adds r1, r4, #0
_0804C63E:
	movs r2, #9
	b _0804C66C
	.align 2, 0
_0804C644: .4byte gUnknown_02004F26
_0804C648: .4byte 0x00004DB2
_0804C64C:
	ldrh r1, [r7]
	mov r0, sl
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strh r0, [r7]
	ldr r1, _0804C684
	ldr r4, _0804C688
	add r4, r8
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_08002420
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
_0804C66C:
	bl sub_08002420
	bl sub_0804C944
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C684: .4byte gUnknown_02004F38
_0804C688: .4byte 0x00004DD2
	.syntax divided
