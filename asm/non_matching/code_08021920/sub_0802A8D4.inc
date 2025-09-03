	.syntax unified
sub_0802A8D4:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r5, #0
	ldr r2, _0802A8FC
	ldr r0, _0802A900
	adds r2, r2, r0
	ldrb r1, [r7]
_0802A8E8:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802A904
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0802A8E8
	b _0802A970
	.align 2, 0
_0802A8FC: .4byte gSave
_0802A900: .4byte 0x0000078A
_0802A904:
	mov r8, r5
	lsls r0, r5, #0x14
	lsrs r6, r0, #0x10
	movs r5, #0
	ldr r1, _0802A97C
	mov sb, r1
_0802A910:
	adds r0, r6, r5
	lsls r0, r0, #1
	mov r3, sb
	adds r4, r0, r3
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802A93A
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_0802A60C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A93A
	ldrh r1, [r4]
	adds r0, r7, #0
	movs r2, #1
	bl sub_0802A454
	movs r0, #0
	strh r0, [r4]
_0802A93A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0802A910
	mov r1, r8
	lsls r0, r1, #0x14
	lsrs r6, r0, #0x10
	movs r5, #0
	ldr r2, _0802A980
	ldr r0, _0802A984
	adds r3, r2, r0
_0802A952:
	adds r0, r6, r5
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r1, #0
	bne _0802A970
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0802A952
	ldr r3, _0802A988
	adds r0, r2, r3
	add r0, r8
	strb r1, [r0]
_0802A970:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A97C: .4byte gUnknown_02004FEE
_0802A980: .4byte gSave
_0802A984: .4byte 0x0000078E
_0802A988: .4byte 0x0000078A
	.syntax divided
