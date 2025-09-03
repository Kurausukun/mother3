	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov sb, r1
	adds r0, #0x85
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xac
	ldrh r0, [r0]
	mov r8, r0
	lsrs r1, r0, #1
	mov r2, sb
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800E8AE
	adds r0, r6, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800E992
	b _0800EA1E
_0800E8AE:
	ldr r2, _0800E978
	ldrb r1, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E992
	ldr r3, _0800E97C
	adds r0, r2, r3
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800E992
	adds r0, r6, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800E992
	adds r0, r6, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800E992
	movs r0, #0
	bl get_obj_direct
	str r0, [sp]
	movs r0, #0
	bl get_obj_direct
	adds r5, r0, #0
	movs r7, #0
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	adds r3, r5, #0
	adds r3, #0xaa
_0800E900:
	ldrb r1, [r3, #0x12]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #1
	bne _0800E984
	ldr r0, [sp]
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800E922
	adds r0, r6, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0800E984
_0800E922:
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #0
	ldrsh r0, [r5, r4]
	subs r1, r1, r0
	cmp r1, #0
	bge _0800E934
	rsbs r1, r1, #0
_0800E934:
	ldrh r0, [r3]
	add r0, sl
	cmp r1, r0
	bge _0800E984
	movs r0, #2
	ldrsh r1, [r5, r0]
	ldrh r0, [r3, #2]
	lsrs r2, r0, #1
	subs r1, r1, r2
	mov r4, ip
	subs r1, r4, r1
	cmp r1, #0
	bge _0800E950
	rsbs r1, r1, #0
_0800E950:
	mov r4, r8
	lsrs r0, r4, #1
	adds r0, r0, r2
	cmp r1, r0
	bge _0800E984
	ldr r4, _0800E978
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800E974
	adds r0, r6, #0
	bl sub_0800F040
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r1, [r0]
	ldr r2, _0800E980
	adds r0, r4, r2
	strh r1, [r0]
_0800E974:
	movs r0, #0
	b _0800EA20
	.align 2, 0
_0800E978: .4byte gGame
_0800E97C: .4byte 0x0000829B
_0800E980: .4byte 0x00008456
_0800E984:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r3, #0xd0
	adds r5, #0xd0
	cmp r7, #4
	bls _0800E900
_0800E992:
	movs r0, #5
	bl get_obj_direct
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _0800EA30
	ldr r3, _0800EA34
	adds r0, r0, r3
	ldrb r1, [r0]
	cmp r7, r1
	bhs _0800EA1E
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r3, r8
	lsrs r6, r3, #1
	adds r5, r1, #0
	adds r2, r4, #0
	adds r2, #0xaa
_0800E9BA:
	adds r0, r7, #5
	adds r3, r4, #0
	adds r3, #0xac
	ldr r1, [sp, #4]
	cmp r1, r0
	beq _0800EA10
	ldrb r1, [r2, #0x12]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800EA10
	lsrs r0, r1, #7
	cmp r0, #0
	beq _0800E9DC
	ldrb r0, [r3, #0x1e]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800EA10
_0800E9DC:
	mov r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	cmp r1, #0
	bge _0800E9EE
	rsbs r1, r1, #0
_0800E9EE:
	ldrh r0, [r2]
	add r0, sl
	cmp r1, r0
	bge _0800EA10
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldrh r0, [r2, #2]
	lsrs r0, r0, #1
	subs r1, r1, r0
	mov r3, ip
	subs r1, r3, r1
	cmp r1, #0
	bge _0800EA0A
	rsbs r1, r1, #0
_0800EA0A:
	adds r0, r6, r0
	cmp r1, r0
	blt _0800E974
_0800EA10:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, #0xd0
	adds r4, #0xd0
	cmp r7, r5
	blo _0800E9BA
_0800EA1E:
	movs r0, #1
_0800EA20:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EA30: .4byte gGame
_0800EA34: .4byte 0x00008370
	.syntax divided
