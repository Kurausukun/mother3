	.syntax unified
sub_0807DB08:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x54]
	movs r6, #0
	b _0807DC86
_0807DB1E:
	mov r2, r8
	ldr r1, [r2, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, sp
	bl goods_2c0__5Goods
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl _._5Goods
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #1
	bne _0807DC1C
	add r0, sp, #0x50
	strh r6, [r0]
	mov r7, r8
	adds r7, #0x28
	ldr r3, [sp, #0x54]
	mov sb, r3
	adds r3, #1
	str r3, [sp, #0x54]
	ldr r0, [r7, #4]
	adds r4, r0, #1
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r6, #1
	mov sl, r6
	cmp r0, r4
	bge _0807DBDE
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0807DBAC
	adds r1, r0, #0
_0807DBAC:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [r7, #8]
	adds r2, r5, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _0807DBD0
	adds r1, r0, #0
_0807DBC2:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807DBC2
_0807DBD0:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0807DBDA
	bl __builtin_vec_delete
_0807DBDA:
	str r4, [r7]
	str r5, [r7, #8]
_0807DBDE:
	mov r2, sb
	lsls r4, r2, #1
	ldr r3, [r7, #8]
	adds r1, r4, r3
	ldr r2, [r7, #4]
	mov r0, sb
	subs r6, r2, r0
	adds r5, r1, #2
	lsls r0, r6, #1
	subs r0, #2
	adds r1, r1, r0
	adds r5, r5, r0
	mov ip, r2
	cmp r6, #0
	ble _0807DC0C
	adds r2, r6, #0
_0807DBFE:
	ldrh r0, [r1]
	strh r0, [r5]
	subs r1, #2
	subs r5, #2
	subs r2, #1
	cmp r2, #0
	bne _0807DBFE
_0807DC0C:
	adds r0, r4, r3
	add r2, sp, #0x50
	ldrh r1, [r2]
	strh r1, [r0]
	mov r0, ip
	adds r0, #1
	str r0, [r7, #4]
	b _0807DC84
_0807DC1C:
	mov r0, sp
	adds r0, #0x52
	strh r6, [r0]
	mov r4, r8
	adds r4, #0x28
	adds r7, r0, #0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r3, r8
	ldr r0, [r3, #0x28]
	adds r6, #1
	mov sl, r6
	cmp r0, r5
	bge _0807DC74
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0807DC42
	adds r1, r0, #0
_0807DC42:
	adds r5, r1, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807DC66
	adds r1, r0, #0
_0807DC58:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807DC58
_0807DC66:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807DC70
	bl __builtin_vec_delete
_0807DC70:
	str r5, [r4]
	str r6, [r4, #8]
_0807DC74:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0807DC84:
	mov r6, sl
_0807DC86:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r6, r0
	bge _0807DCB2
	b _0807DB1E
_0807DCB2:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
