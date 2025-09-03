	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806B244
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x28]
	strh r0, [r7, #0x2a]
	adds r5, r7, #0
	adds r5, #0x2c
	movs r2, #3
	add r3, sp, #0x74
	add r0, sp, #8
	mov r8, r0
	add r6, sp, #0x1c
	mov r1, sp
	adds r1, #0x2c
	str r1, [sp, #0x90]
	add r0, sp, #0x30
	mov sl, r0
	adds r1, #0x4c
	str r1, [sp, #0x88]
	mov r0, sp
	adds r0, #0x7c
	str r0, [sp, #0x8c]
	add r1, sp, #0x3c
	mov sb, r1
	movs r1, #0
	movs r4, #1
	rsbs r4, r4, #0
	adds r0, r7, #0
	adds r0, #0x34
_0806B110:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	strh r1, [r0, #0x2a]
	adds r0, #0x38
	subs r2, #1
	cmp r2, r4
	bne _0806B110
	movs r0, #0
	str r0, [r5]
	add r1, sp, #0x74
	strb r0, [r1]
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	ldr r1, [sp, #0x74]
	str r1, [r7, #0x20]
	str r0, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x2c
	str r0, [sp, #0x84]
	movs r4, #0
	add r5, sp, #4
	movs r1, #3
	str r1, [sp, #0x80]
_0806B14C:
	str r4, [sp, #8]
	mov r0, r8
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [sp, #0x1c]
	str r4, [r6, #4]
	str r4, [r6, #8]
	ldr r1, [sp, #0x90]
	strh r4, [r1]
	strh r4, [r1, #2]
	mov r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r5]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	strh r4, [r5, #0x14]
	strh r4, [r5, #0x16]
	str r4, [sp, #0x28]
	add r0, sp, #0x78
	strh r4, [r0]
	ldr r1, [sp, #0x88]
	strh r4, [r1, #2]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x2c]
	add r0, sp, #0x7c
	strh r4, [r0]
	ldr r0, [sp, #0x8c]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x30]
	movs r0, #7
	str r0, [sp, #0x34]
	movs r0, #2
	strh r0, [r5, #0x34]
	mov r0, sb
	add r1, sp, #4
	bl sub_080C0E54
	ldr r1, [r7, #0x2c]
	adds r2, r1, #1
	cmp r2, #4
	bgt _0806B1B6
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	ldr r1, [sp, #0x84]
	adds r0, r1, r0
	str r2, [r7, #0x2c]
	mov r1, sb
	bl sub_080C0D50
_0806B1B6:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _0806B1C0
	bl __builtin_vec_delete
_0806B1C0:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0806B1CA
	bl __builtin_vec_delete
_0806B1CA:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806B1D4
	bl __builtin_vec_delete
_0806B1D4:
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0806B1E0
	bl __builtin_vec_delete
_0806B1E0:
	ldr r0, [sp, #0x80]
	subs r0, #1
	str r0, [sp, #0x80]
	cmp r0, #0
	bge _0806B14C
	bl sub_0806A974
	adds r4, r0, #0
	bl sub_0806AFF0
	lsls r0, r0, #0x10
	ldr r1, _0806B248
	ands r1, r0
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0806AF2C
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806B24C
	ldr r0, _0806B250
	str r0, [sp, #0x20]
	ldr r0, _0806B254
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B244: .4byte vt_09F7EFB0
_0806B248: .4byte 0xFFF80000
_0806B24C: .4byte _vt.3Unk
_0806B250: .4byte _vt.8SysClock
_0806B254: .4byte gUnknown_080FF2CC
	.syntax divided
