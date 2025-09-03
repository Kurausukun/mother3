	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	adds r7, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r6, r4, #0
	adds r1, r4, #0
	bl sub_08054670
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08044F3C
	ldr r0, _08044F34
	ldr r1, _08044F38
	adds r0, r0, r1
	strh r4, [r0]
	movs r0, #0xb7
	bl sub_080486A0
	movs r1, #0x10
	movs r2, #0x87
	bl sub_08047F28
	b _08045382
	.align 2, 0
_08044F34: .4byte gSomeBlend
_08044F38: .4byte 0x000044EE
_08044F3C:
	ldr r0, _08044FB8
	add r4, sp, #0x50
	adds r1, r4, #0
	movs r2, #0x14
	bl sub_08001B18
	adds r0, r7, #0
	bl sub_080552E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08044FBC
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r1, [r1]
	adds r2, r2, r1
	movs r3, #0
	strh r2, [r4, #2]
	ldr r1, _08044FC0
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #5
	strh r0, [r4, #4]
	strb r3, [r4, #0xc]
	add r1, sp, #0x60
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x88
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08046A64
	movs r1, #0x80
	lsls r1, r1, #9
	ldrb r0, [r7]
	lsls r1, r0
	lsrs r1, r1, #0x10
	ldr r2, _08044FC4
	movs r0, #0x6c
	muls r0, r6, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	ands r1, r0
	cmp r1, #0
	beq _08044FC8
	adds r0, r6, #0
	bl sub_08054EF4
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	add r1, sp, #0x18
	adds r3, r6, #0
	bl sub_08054CDC
	b _08044FD2
	.align 2, 0
_08044FB8: .4byte gUnknown_080C629C
_08044FBC: .4byte gUnknown_080C6994
_08044FC0: .4byte gUnknown_080C69B8
_08044FC4: .4byte gGoodsInfo
_08044FC8:
	add r0, sp, #0x18
	adds r1, r5, #0
	movs r2, #0x38
	bl memcpy
_08044FD2:
	ldr r0, [r7, #0x18]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x24
	movs r2, #0x8c
	movs r3, #3
	bl sub_08046BA8
	ldr r1, [r5, #8]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	bge _08045010
	ldr r0, _0804500C
	str r4, [sp]
	movs r1, #0x24
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
	b _08045022
	.align 2, 0
_0804500C: .4byte gUnknown_080C6594
_08045010:
	cmp r1, r0
	ble _08045022
	ldr r0, _080450A4
	str r4, [sp]
	movs r1, #0x24
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
_08045022:
	ldr r1, [r5, #8]
	ldr r0, [sp, #0x20]
	subs r0, r1, r0
	cmp r0, #0x63
	ble _0804502E
	movs r0, #0x63
_0804502E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08045060
	adds r1, r0, #0
	cmp r1, #0
	bge _0804503E
	rsbs r1, r1, #0
_0804503E:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x2b
	movs r2, #0x94
	movs r3, #2
	bl sub_08046BA8
_08045060:
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x46
	movs r2, #0x8c
	movs r3, #3
	bl sub_08046BA8
	add r0, sp, #0x18
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	movs r3, #0x10
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _080450AC
	ldr r0, _080450A8
	str r4, [sp]
	movs r1, #0x46
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
	b _080450BE
	.align 2, 0
_080450A4: .4byte gUnknown_080C65A8
_080450A8: .4byte gUnknown_080C6594
_080450AC:
	cmp r1, r0
	ble _080450BE
	ldr r0, _08045144
	str r4, [sp]
	movs r1, #0x46
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
_080450BE:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	add r1, sp, #0x18
	movs r2, #0x10
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0x63
	ble _080450D0
	movs r0, #0x63
_080450D0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08045102
	adds r1, r0, #0
	cmp r1, #0
	bge _080450E0
	rsbs r1, r1, #0
_080450E0:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x4d
	movs r2, #0x94
	movs r3, #2
	bl sub_08046BA8
_08045102:
	movs r3, #0x16
	ldrsh r0, [r5, r3]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x68
	movs r2, #0x8c
	movs r3, #3
	bl sub_08046BA8
	add r0, sp, #0x18
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	movs r3, #0x16
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _0804514C
	ldr r0, _08045148
	str r4, [sp]
	movs r1, #0x68
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
	b _0804515E
	.align 2, 0
_08045144: .4byte gUnknown_080C65A8
_08045148: .4byte gUnknown_080C6594
_0804514C:
	cmp r1, r0
	ble _0804515E
	ldr r0, _080451E4
	str r4, [sp]
	movs r1, #0x68
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
_0804515E:
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	add r1, sp, #0x18
	movs r2, #0x16
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0x63
	ble _08045170
	movs r0, #0x63
_08045170:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080451A2
	adds r1, r0, #0
	cmp r1, #0
	bge _08045180
	rsbs r1, r1, #0
_08045180:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x6f
	movs r2, #0x94
	movs r3, #2
	bl sub_08046BA8
_080451A2:
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x8a
	movs r2, #0x8c
	movs r3, #3
	bl sub_08046BA8
	add r0, sp, #0x18
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	movs r3, #0x1c
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _080451EC
	ldr r0, _080451E8
	str r4, [sp]
	movs r1, #0x8a
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
	b _080451FE
	.align 2, 0
_080451E4: .4byte gUnknown_080C65A8
_080451E8: .4byte gUnknown_080C6594
_080451EC:
	cmp r1, r0
	ble _080451FE
	ldr r0, _08045284
	str r4, [sp]
	movs r1, #0x8a
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
_080451FE:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	add r1, sp, #0x18
	movs r2, #0x1c
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0x63
	ble _08045210
	movs r0, #0x63
_08045210:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08045242
	adds r1, r0, #0
	cmp r1, #0
	bge _08045220
	rsbs r1, r1, #0
_08045220:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x91
	movs r2, #0x94
	movs r3, #2
	bl sub_08046BA8
_08045242:
	movs r3, #0x22
	ldrsh r0, [r5, r3]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xac
	movs r2, #0x8c
	movs r3, #3
	bl sub_08046BA8
	add r0, sp, #0x18
	movs r2, #0x22
	ldrsh r1, [r5, r2]
	movs r3, #0x22
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _0804528C
	ldr r0, _08045288
	str r4, [sp]
	movs r1, #0xac
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
	b _0804529E
	.align 2, 0
_08045284: .4byte gUnknown_080C65A8
_08045288: .4byte gUnknown_080C6594
_0804528C:
	cmp r1, r0
	ble _0804529E
	ldr r0, _08045324
	str r4, [sp]
	movs r1, #0xac
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
_0804529E:
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	add r1, sp, #0x18
	movs r2, #0x22
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0x63
	ble _080452B0
	movs r0, #0x63
_080452B0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080452E2
	adds r1, r0, #0
	cmp r1, #0
	bge _080452C0
	rsbs r1, r1, #0
_080452C0:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0xb3
	movs r2, #0x94
	movs r3, #2
	bl sub_08046BA8
_080452E2:
	movs r3, #0x28
	ldrsh r0, [r5, r3]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xce
	movs r2, #0x8c
	movs r3, #3
	bl sub_08046BA8
	add r0, sp, #0x18
	movs r2, #0x28
	ldrsh r1, [r5, r2]
	movs r3, #0x28
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _0804532C
	ldr r0, _08045328
	str r4, [sp]
	movs r1, #0xce
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
	b _0804533E
	.align 2, 0
_08045324: .4byte gUnknown_080C65A8
_08045328: .4byte gUnknown_080C6594
_0804532C:
	cmp r1, r0
	ble _0804533E
	ldr r0, _0804538C
	str r4, [sp]
	movs r1, #0xce
	movs r2, #0x94
	movs r3, #0x20
	bl sub_08046A28
_0804533E:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	add r1, sp, #0x18
	movs r2, #0x28
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0x63
	ble _08045350
	movs r0, #0x63
_08045350:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08045382
	adds r1, r0, #0
	cmp r1, #0
	bge _08045360
	rsbs r1, r1, #0
_08045360:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0xd5
	movs r2, #0x94
	movs r3, #2
	bl sub_08046BA8
_08045382:
	add sp, #0x64
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804538C: .4byte gUnknown_080C65A8
	.syntax divided
