	.syntax unified
sub_0804389C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r4, r0, #0
	str r1, [sp, #0x18]
	adds r7, r2, #0
	ldr r0, [sp, #0x48]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldrb r0, [r4]
	bl sub_08054FB8
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	asrs r3, r1, #0x10
	str r3, [sp, #0x24]
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	ldr r3, [sp, #0x20]
	lsls r2, r3, #0x10
	asrs r6, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r3, #9
	bl sub_08047CDC
	ldrb r0, [r4, #0x12]
	ldr r5, [sp, #0x24]
	adds r5, #0x48
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r2, r6, #0
	adds r2, #0x2c
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #1
	str r1, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	mov sl, r3
	str r3, [sp, #4]
	movs r1, #0xb
	mov sb, r1
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r3, #2
	mov r8, r3
	str r3, [sp, #0x14]
	adds r1, r5, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #8]
	adds r6, #0x38
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r2, #1
	str r2, [sp]
	mov r3, sl
	str r3, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r2, r8
	str r2, [sp, #0x14]
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r3, [sp, #0x18]
	ldr r1, [r3, #8]
	ldr r0, [r7, #8]
	cmp r1, r0
	beq _08043A0C
	cmp r1, r0
	bge _08043978
	ldr r0, _08043974
	ldr r1, [sp, #0x24]
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	str r2, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _0804398E
	.align 2, 0
_08043974: .4byte gUnknown_080C65D0
_08043978:
	ldr r0, _080439D0
	ldr r1, [sp, #0x24]
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #1
	str r3, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_0804398E:
	ldr r3, [r7, #8]
	cmp r3, #0x63
	ble _080439D4
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #0x10
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x20]
	lsls r2, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0xe
	adds r2, r2, r0
	asrs r2, r2, #0x10
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
	movs r0, #2
	str r0, [sp, #0x14]
	adds r0, r3, #0
	movs r3, #3
	bl sub_08046BA8
	b _08043A0C
	.align 2, 0
_080439D0: .4byte gUnknown_080C65E4
_080439D4:
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	movs r0, #0xcc
	lsls r0, r0, #0xf
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x20]
	lsls r2, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0xe
	adds r2, r2, r0
	asrs r2, r2, #0x10
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
	movs r0, #2
	str r0, [sp, #0x14]
	adds r0, r3, #0
	movs r3, #2
	bl sub_08046BA8
_08043A0C:
	ldr r1, [sp, #0x18]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x1c]
	lsls r4, r3, #0x10
	asrs r1, r4, #0x10
	mov sl, r1
	movs r2, #0x90
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x20]
	lsls r5, r3, #0x10
	movs r3, #0x88
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r6, r2, #0x10
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r3, [sp, #0x18]
	movs r0, #0x10
	ldrsh r1, [r3, r0]
	movs r2, #0x10
	ldrsh r0, [r7, r2]
	mov sb, r5
	cmp r1, r0
	beq _08043B04
	cmp r1, r0
	bge _08043A80
	ldr r0, _08043A7C
	mov r1, sl
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	str r3, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _08043A96
	.align 2, 0
_08043A7C: .4byte gUnknown_080C65D0
_08043A80:
	ldr r0, _08043AD0
	mov r1, sl
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_08043A96:
	movs r3, #0x10
	ldrsh r0, [r7, r3]
	cmp r0, #0x63
	ble _08043AD4
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r2, #0x88
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r3, #3
	bl sub_08046BA8
	b _08043B04
	.align 2, 0
_08043AD0: .4byte gUnknown_080C65E4
_08043AD4:
	movs r3, #0x10
	ldrsh r0, [r7, r3]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r2, #0x88
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_08043B04:
	ldr r3, [sp, #0x18]
	movs r1, #0x16
	ldrsh r0, [r3, r1]
	asrs r2, r4, #0x10
	mov r8, r2
	movs r3, #0x90
	lsls r3, r3, #0xf
	adds r1, r4, r3
	asrs r1, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xf
	add r2, sb
	asrs r6, r2, #0x10
	movs r5, #1
	str r5, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	movs r3, #0x16
	ldrsh r0, [r7, r3]
	cmp r1, r0
	beq _08043BEC
	cmp r1, r0
	bge _08043B6C
	ldr r0, _08043B68
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _08043B80
	.align 2, 0
_08043B68: .4byte gUnknown_080C65D0
_08043B6C:
	ldr r0, _08043BB8
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_08043B80:
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	cmp r0, #0x63
	ble _08043BBC
	movs r3, #0xcc
	lsls r3, r3, #0xf
	adds r1, r4, r3
	asrs r1, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r3, #3
	bl sub_08046BA8
	b _08043BEC
	.align 2, 0
_08043BB8: .4byte gUnknown_080C65E4
_08043BBC:
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_08043BEC:
	ldr r3, [sp, #0x18]
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	asrs r2, r4, #0x10
	mov r8, r2
	movs r3, #0x90
	lsls r3, r3, #0xf
	adds r1, r4, r3
	asrs r1, r1, #0x10
	movs r2, #0xb8
	lsls r2, r2, #0xf
	add r2, sb
	asrs r6, r2, #0x10
	movs r5, #1
	str r5, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	movs r3, #0x1c
	ldrsh r0, [r7, r3]
	cmp r1, r0
	beq _08043CD4
	cmp r1, r0
	bge _08043C54
	ldr r0, _08043C50
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _08043C68
	.align 2, 0
_08043C50: .4byte gUnknown_080C65D0
_08043C54:
	ldr r0, _08043CA0
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_08043C68:
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	cmp r0, #0x63
	ble _08043CA4
	movs r3, #0xcc
	lsls r3, r3, #0xf
	adds r1, r4, r3
	asrs r1, r1, #0x10
	movs r2, #0xb8
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r3, #3
	bl sub_08046BA8
	b _08043CD4
	.align 2, 0
_08043CA0: .4byte gUnknown_080C65E4
_08043CA4:
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r2, #0xb8
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_08043CD4:
	ldr r3, [sp, #0x18]
	movs r1, #0x22
	ldrsh r0, [r3, r1]
	asrs r2, r4, #0x10
	mov r8, r2
	movs r3, #0x90
	lsls r3, r3, #0xf
	adds r1, r4, r3
	asrs r1, r1, #0x10
	movs r2, #0xd0
	lsls r2, r2, #0xf
	add r2, sb
	asrs r6, r2, #0x10
	movs r5, #1
	str r5, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x22
	ldrsh r1, [r0, r2]
	movs r3, #0x22
	ldrsh r0, [r7, r3]
	cmp r1, r0
	beq _08043DBC
	cmp r1, r0
	bge _08043D3C
	ldr r0, _08043D38
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _08043D50
	.align 2, 0
_08043D38: .4byte gUnknown_080C65D0
_08043D3C:
	ldr r0, _08043D88
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_08043D50:
	movs r1, #0x22
	ldrsh r0, [r7, r1]
	cmp r0, #0x63
	ble _08043D8C
	movs r3, #0xcc
	lsls r3, r3, #0xf
	adds r1, r4, r3
	asrs r1, r1, #0x10
	movs r2, #0xd0
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r3, #3
	bl sub_08046BA8
	b _08043DBC
	.align 2, 0
_08043D88: .4byte gUnknown_080C65E4
_08043D8C:
	movs r1, #0x22
	ldrsh r0, [r7, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r2, #0xd0
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_08043DBC:
	ldr r3, [sp, #0x18]
	movs r1, #0x28
	ldrsh r0, [r3, r1]
	asrs r2, r4, #0x10
	mov r8, r2
	movs r3, #0x90
	lsls r3, r3, #0xf
	adds r1, r4, r3
	asrs r1, r1, #0x10
	movs r2, #0xe8
	lsls r2, r2, #0xf
	add r2, sb
	asrs r6, r2, #0x10
	movs r5, #1
	str r5, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x28
	ldrsh r1, [r0, r2]
	movs r3, #0x28
	ldrsh r0, [r7, r3]
	cmp r1, r0
	beq _08043EA4
	cmp r1, r0
	bge _08043E24
	ldr r0, _08043E20
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _08043E38
	.align 2, 0
_08043E20: .4byte gUnknown_080C65D0
_08043E24:
	ldr r0, _08043E70
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_08043E38:
	movs r1, #0x28
	ldrsh r0, [r7, r1]
	cmp r0, #0x63
	ble _08043E74
	movs r3, #0xcc
	lsls r3, r3, #0xf
	adds r1, r4, r3
	asrs r1, r1, #0x10
	movs r2, #0xe8
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r3, #3
	bl sub_08046BA8
	b _08043EA4
	.align 2, 0
_08043E70: .4byte gUnknown_080C65E4
_08043E74:
	movs r1, #0x28
	ldrsh r0, [r7, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r2, #0xe8
	lsls r2, r2, #0xf
	add r2, sb
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_08043EA4:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
