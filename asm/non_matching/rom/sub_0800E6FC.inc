	.syntax unified
sub_0800E6FC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sl, r1
	ldr r6, _0800E7F4
	ldrb r1, [r6, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800E71A
	b _0800E838
_0800E71A:
	mov r0, r8
	adds r0, #0xbc
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800E728
	b _0800E838
_0800E728:
	mov r0, r8
	adds r0, #0xaa
	ldrh r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0xac
	ldrh r0, [r0]
	mov sb, r0
	lsrs r1, r0, #1
	mov r2, sl
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #5
	bl get_obj_direct
	adds r4, r0, #0
	movs r7, #0
	ldr r3, _0800E7F8
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r7, r0
	bhs _0800E828
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r5, r4, #0
	adds r5, #0xac
_0800E762:
	ldrb r1, [r5, #0x10]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #1
	bne _0800E812
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800E812
	mov r0, r8
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800E788
	ldrb r0, [r5, #0x1f]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0800E812
_0800E788:
	ldrb r0, [r5, #0x1c]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800E812
	mov r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	cmp r1, #0
	bge _0800E7A2
	rsbs r1, r1, #0
_0800E7A2:
	adds r0, r4, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	ldr r2, [sp]
	adds r0, r2, r0
	cmp r1, r0
	bge _0800E812
	movs r3, #2
	ldrsh r1, [r4, r3]
	ldrh r0, [r5]
	lsrs r2, r0, #1
	subs r1, r1, r2
	ldr r0, [sp, #4]
	subs r1, r0, r1
	cmp r1, #0
	bge _0800E7C4
	rsbs r1, r1, #0
_0800E7C4:
	mov r3, sb
	lsrs r0, r3, #1
	adds r0, r0, r2
	cmp r1, r0
	bge _0800E812
	ldr r6, _0800E7F4
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800E848
	ldr r0, _0800E7FC
	ldr r1, _0800E800
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0800E80C
	adds r0, r4, #0
	bl sub_0800F040
	ldr r2, _0800E804
	adds r1, r6, r2
	ldr r0, _0800E808
	strh r0, [r1]
	b _0800E848
	.align 2, 0
_0800E7F4: .4byte gGame
_0800E7F8: .4byte 0x00008370
_0800E7FC: .4byte gSomeBlend
_0800E800: .4byte 0x0001ED10
_0800E804: .4byte 0x00008456
_0800E808: .4byte 0x0000FFFF
_0800E80C:
	adds r0, r4, #0
	bl sub_0800EE50
_0800E812:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0xd0
	adds r4, #0xd0
	ldr r0, _0800E83C
	ldr r3, _0800E840
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r7, r0
	blo _0800E762
_0800E828:
	bl sub_0800EED0
	ldr r0, _0800E83C
	ldr r1, _0800E844
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800E848
_0800E838:
	movs r0, #1
	b _0800E84A
	.align 2, 0
_0800E83C: .4byte gGame
_0800E840: .4byte 0x00008370
_0800E844: .4byte 0x0000844E
_0800E848:
	movs r0, #0
_0800E84A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
