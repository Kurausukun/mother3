	.syntax unified
sub_0806673C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	mov sl, r0
	bl sub_080872C8
	ldr r0, _08066B1C
	mov r1, sl
	str r0, [r1, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	add r0, sl
	bl __11Unk0806D64C
	ldr r5, _08066B20
	add r5, sl
	ldr r0, _08066B24
	movs r1, #1
	rsbs r1, r1, #0
	ldr r4, _08066B28
	str r4, [sp, #0xc]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r2, sp, #0x34
	movs r0, #0xa
	movs r6, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_08071108
	str r4, [sp, #0xc]
	ldr r0, _08066B2C
	str r0, [r5, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #3
	add r0, sl
	bl sub_0806D8EC
	movs r0, #0xb8
	lsls r0, r0, #3
	add r0, sl
	bl sub_080871E4
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, sl
	bl sub_08071F8C
	ldr r1, _08066B30
	add r1, sl
	movs r0, #2
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #3
	add r0, sl
	str r6, [r0]
	mov r0, sl
	bl sub_08087944
	movs r4, #1
	add r7, sp, #0x10
	mov r2, sp
	adds r2, #0x1c
	str r2, [sp, #0x70]
	mov r3, sp
	adds r3, #0x28
	str r3, [sp, #0x74]
	add r0, sp, #0x38
	mov sb, r0
	mov r1, sp
	adds r1, #0x3c
	str r1, [sp, #0x78]
	adds r2, #0x24
	str r2, [sp, #0x7c]
	adds r3, #0x1c
	str r3, [sp, #0x80]
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0x84]
	adds r1, #0x10
	str r1, [sp, #0x88]
	adds r2, #0x10
	str r2, [sp, #0x8c]
	adds r3, #0x10
	str r3, [sp, #0x90]
	adds r0, #0x10
	str r0, [sp, #0x94]
	adds r1, #0x10
	str r1, [sp, #0x98]
	adds r2, #0x10
	str r2, [sp, #0x9c]
	adds r3, #0x10
	str r3, [sp, #0xa0]
	adds r0, #0x10
	str r0, [sp, #0xa4]
	adds r1, #0x10
	str r1, [sp, #0xa8]
_08066808:
	movs r0, #0x44
	bl __builtin_new
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_08086D38
	adds r1, r0, #0
	mov r0, sl
	bl sub_0808735C
	adds r4, #1
	cmp r4, #0xfa
	ble _08066808
	ldr r1, _08066B34
	mov r8, r7
	mov r0, r8
	bl sub_080706A0
	ldr r6, [sp, #0x70]
	adds r0, r6, #0
	movs r1, #6
	bl sub_080706A0
	ldr r1, _08066B38
	ldr r4, [sp, #0x74]
	adds r0, r4, #0
	bl sub_080706A0
	movs r5, #0x89
	lsls r5, r5, #3
	add r5, sl
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	mov r2, r8
	adds r3, r6, #0
	bl sub_0806D744__11Unk0806D64C
	ldr r2, _08066B28
	mov r8, r2
	str r2, [sp, #0x30]
	str r2, [sp, #0x24]
	str r2, [sp, #0x18]
	movs r1, #0
	add r0, sp, #0x38
	strh r1, [r0]
	mov r3, sb
	strh r1, [r3, #2]
	adds r0, r5, #0
	mov r1, sb
	bl sub_0806D814__11Unk0806D64C
	movs r1, #0xf0
	movs r2, #0xa0
	add r0, sp, #0x3c
	strh r1, [r0]
	ldr r0, [sp, #0x78]
	strh r2, [r0, #2]
	adds r0, r5, #0
	ldr r1, [sp, #0x78]
	bl sub_0806D828__11Unk0806D64C
	ldr r4, _08066B3C
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080668A0
	adds r1, r0, #0
	adds r1, #0x20
_080668A0:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xc
	movs r5, #0x60
	add r1, sp, #0x40
	strh r2, [r1]
	ldr r1, [sp, #0x7c]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x7c]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r4, #0x97
	lsls r4, r4, #3
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #4
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080668EC
	adds r1, r0, #0
	adds r1, #0x20
_080668EC:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x1c
	add r1, sp, #0x44
	strh r2, [r1]
	ldr r1, [sp, #0x80]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x80]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r4, _08066B40
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #8
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _08066934
	adds r1, r0, #0
	adds r1, #0x20
_08066934:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x2c
	add r1, sp, #0x48
	strh r2, [r1]
	ldr r1, [sp, #0x84]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x84]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r4, #0x98
	lsls r4, r4, #3
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0xc
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806697E
	adds r1, r0, #0
	adds r1, #0x20
_0806697E:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x3c
	add r1, sp, #0x4c
	strh r2, [r1]
	ldr r1, [sp, #0x88]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x88]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r4, _08066B44
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0x10
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080669C6
	adds r1, r0, #0
	adds r1, #0x20
_080669C6:
	str r1, [r4]
	ldr r2, [r1]
	movs r3, #0x20
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	movs r1, #0xc8
	mov sb, r1
	add r1, sp, #0x50
	mov r3, sb
	strh r3, [r1]
	ldr r1, [sp, #0x8c]
	strh r5, [r1, #2]
	ldr r2, [r2, #0x24]
	ldr r1, [sp, #0x8c]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r4, #0x99
	lsls r4, r4, #3
	add r4, sl
	movs r0, #0xbc
	bl __builtin_new
	movs r1, #0x14
	bl sub_08086FD8
	movs r1, #0
	cmp r0, #0
	beq _08066A14
	adds r1, r0, #0
	adds r1, #0x20
_08066A14:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xd8
	add r1, sp, #0x54
	strh r2, [r1]
	ldr r1, [sp, #0x90]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x90]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r5, _08066B48
	add r5, sl
	movs r0, #0x9c
	bl __builtin_new
	adds r4, r0, #0
	bl sub_08071BF8
	ldr r0, _08066B4C
	str r0, [r4, #0x1c]
	adds r0, r7, #0
	ldr r1, _08066B50
	bl sub_080706A0
	ldr r0, [sp, #0x70]
	movs r1, #7
	bl sub_080706A0
	ldr r0, [sp, #0x74]
	ldr r1, _08066B54
	bl sub_080706A0
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	bl sub_0806D9F4
	mov r0, r8
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	adds r0, r4, #0
	movs r1, #0x51
	bl sub_0806DB60
	str r4, [r5]
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	movs r2, #0xe8
	movs r3, #0x90
	add r0, sp, #0x58
	strh r2, [r0]
	ldr r0, [sp, #0x94]
	strh r3, [r0, #2]
	ldr r2, [r1, #4]
	adds r0, r4, #0
	ldr r1, [sp, #0x94]
	bl _call_via_r2
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	movs r5, #0x9a
	lsls r5, r5, #3
	add r5, sl
	movs r0, #0xe4
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, _08066B58
	adds r0, r7, #0
	bl sub_080706A0
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08071714
	str r0, [r5]
	mov r1, r8
	str r1, [sp, #0x18]
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #7
	movs r6, #0x78
	add r1, sp, #0x5c
	strh r3, [r1]
	ldr r1, [sp, #0x98]
	strh r6, [r1, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0x98]
	bl _call_via_r2
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	ldr r0, [r5]
	b _08066B5C
	.align 2, 0
_08066B1C: .4byte vt_09F7E538
_08066B20: .4byte 0x000004D4
_08066B24: .4byte gUnknown_08CE39F8
_08066B28: .4byte _vt.6ResPtr
_08066B2C: .4byte vt_09F7E458
_08066B30: .4byte 0x0000043C
_08066B34: .4byte 0x0000028E
_08066B38: .4byte 0x00000286
_08066B3C: .4byte 0x000004B4
_08066B40: .4byte 0x000004BC
_08066B44: .4byte 0x000004C4
_08066B48: .4byte 0x000004CC
_08066B4C: .4byte vt_09F7E660
_08066B50: .4byte 0x000003A5
_08066B54: .4byte 0x00000287
_08066B58: .4byte 0x0000027B
_08066B5C:
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r4, _08066E10
	add r4, sl
	add r0, sp, #0x60
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x9c]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x9c]
	bl sub_0806E9C4
	movs r1, #0x32
	add r0, sp, #0x64
	strh r1, [r0]
	ldr r3, [sp, #0xa0]
	strh r6, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xa0]
	bl sub_08071194
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806E9E8
	movs r4, #0xa6
	lsls r4, r4, #3
	add r4, sl
	ldr r1, _08066E14
	adds r0, r7, #0
	bl sub_080706A0
	ldr r0, [sp, #0x70]
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08066E18
	ldr r0, [sp, #0x74]
	bl sub_080706A0
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	bl sub_0806D9F4
	mov r0, r8
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806DB60
	movs r1, #0x71
	add r0, sp, #0x68
	mov r2, sb
	strh r2, [r0]
	ldr r3, [sp, #0xa4]
	strh r1, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xa4]
	bl sub_0806DB74
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806DB7C
	movs r4, #0xb8
	lsls r4, r4, #3
	add r4, sl
	movs r1, #0xd5
	movs r2, #0x72
	add r0, sp, #0x6c
	strh r1, [r0]
	ldr r0, [sp, #0xa8]
	strh r2, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xa8]
	bl sub_0806DF48
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806DF50
	adds r0, r7, #0
	bl __4Base
	ldr r1, _08066E1C
	mov r8, r1
	ldr r0, _08066E20
	str r0, [sp, #0x2c]
	movs r6, #0xcd
	lsls r6, r6, #3
	add r6, sl
	ldr r0, _08066E24
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E28
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E2C
	str r0, [sp, #0x2c]
	ldr r0, _08066E30
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E34
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E38
	str r0, [sp, #0x2c]
	ldr r0, _08066E3C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E40
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E44
	str r0, [sp, #0x2c]
	ldr r0, _08066E48
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E4C
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E50
	str r0, [sp, #0x2c]
	ldr r0, _08066E54
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E58
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E5C
	str r0, [sp, #0x2c]
	ldr r0, _08066E60
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E64
	str r0, [sp, #0x2c]
	ldr r0, _08066E68
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl sub_08067304
	mov r0, sl
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066E10: .4byte 0x000004D4
_08066E14: .4byte 0x000003A5
_08066E18: .4byte 0x00000287
_08066E1C: .4byte _vt.3Unk
_08066E20: .4byte _vt.10UpKeyPress
_08066E24: .4byte gUnknown_080FE1E0
_08066E28: .4byte _vt.14UpKeyLongPress
_08066E2C: .4byte _vt.12DownKeyPress
_08066E30: .4byte gUnknown_080FE1E8
_08066E34: .4byte _vt.16DownKeyLongPress
_08066E38: .4byte _vt.12LeftKeyPress
_08066E3C: .4byte gUnknown_080FE1F0
_08066E40: .4byte _vt.16LeftKeyLongPress
_08066E44: .4byte _vt.13RightKeyPress
_08066E48: .4byte gUnknown_080FE1F8
_08066E4C: .4byte _vt.17RightKeyLongPress
_08066E50: .4byte _vt.9AKeyPress
_08066E54: .4byte gUnknown_080FE200
_08066E58: .4byte _vt.13AKeyLongPress
_08066E5C: .4byte _vt.9BKeyPress
_08066E60: .4byte gUnknown_080FE208
_08066E64: .4byte _vt.9RKeyPress
_08066E68: .4byte gUnknown_080FE210
	.syntax divided
