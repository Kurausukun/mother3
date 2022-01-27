.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0808F8EC
sub_0808F8EC: @ 0x0808F8EC
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _0808F900
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_0808F900:
	ldr r3, _0808F948 @ =gUnknown_08119A0C
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _0808F94C @ =gUnknown_08119AC0
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808F948: .4byte gUnknown_08119A0C
_0808F94C: .4byte gUnknown_08119AC0

	thumb_func_start sub_0808F950
sub_0808F950: @ 0x0808F950
	bx lr
	.align 2, 0

	thumb_func_start sub_0808F954
sub_0808F954: @ 0x0808F954
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _0808F96C @ =0x68736D53
	cmp r3, r0
	bne _0808F968
	ldr r0, [r2, #4]
	ldr r1, _0808F970 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0808F968:
	pop {r0}
	bx r0
	.align 2, 0
_0808F96C: .4byte 0x68736D53
_0808F970: .4byte 0x7FFFFFFF

	thumb_func_start sub_0808F974
sub_0808F974: @ 0x0808F974
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0808F994 @ =0x68736D53
	cmp r3, r0
	bne _0808F98E
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_0808F98E:
	pop {r0}
	bx r0
	.align 2, 0
_0808F994: .4byte 0x68736D53

	thumb_func_start sub_0808F998
sub_0808F998: @ 0x0808F998
	push {r4, r5, r6, lr}
	ldr r0, _0808F9EC @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0808F9F0 @ =gUnknown_03000000
	ldr r2, _0808F9F4 @ =0x04000100
	bl CpuSet
	ldr r0, _0808F9F8 @ =gUnknown_03001B20
	bl sub_0808FDC0
	ldr r0, _0808F9FC @ =gUnknown_03002B60
	bl sub_0808FC7C
	ldr r0, _0808FA00 @ =0x0095FC00
	bl sub_0808FF24
	ldr r0, _0808FA04 @ =0x0000000A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0808F9E6
	ldr r5, _0808FA08 @ =gUnknown_08120E1C
	adds r6, r0, #0
_0808F9CA:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08090184
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _0808FA0C @ =gUnknown_03002E60
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _0808F9CA
_0808F9E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808F9EC: .4byte SoundMainRAM
_0808F9F0: .4byte gUnknown_03000000
_0808F9F4: .4byte 0x04000100
_0808F9F8: .4byte gUnknown_03001B20
_0808F9FC: .4byte gUnknown_03002B60
_0808FA00: .4byte 0x0095FC00
_0808FA04: .4byte 0x0000000A
_0808FA08: .4byte gUnknown_08120E1C
_0808FA0C: .4byte gUnknown_03002E60

	thumb_func_start sub_0808FA10
sub_0808FA10: @ 0x0808FA10
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808FA1C
sub_0808FA1C: @ 0x0808FA1C
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FA40 @ =gUnknown_08120E1C
	ldr r1, _0808FA44 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_080901FC
	pop {r0}
	bx r0
	.align 2, 0
_0808FA40: .4byte gUnknown_08120E1C
_0808FA44: .4byte gUnknown_08120E94

	thumb_func_start sub_0808FA48
sub_0808FA48: @ 0x0808FA48
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FA74 @ =gUnknown_08120E1C
	ldr r1, _0808FA78 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _0808FA7C
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_080901FC
	b _0808FA90
	.align 2, 0
_0808FA74: .4byte gUnknown_08120E1C
_0808FA78: .4byte gUnknown_08120E94
_0808FA7C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0808FA88
	cmp r2, #0
	bge _0808FA90
_0808FA88:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_080901FC
_0808FA90:
	pop {r0}
	bx r0

	thumb_func_start sub_0808FA94
sub_0808FA94: @ 0x0808FA94
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FAC0 @ =gUnknown_08120E1C
	ldr r1, _0808FAC4 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _0808FAC8
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_080901FC
	b _0808FAE4
	.align 2, 0
_0808FAC0: .4byte gUnknown_08120E1C
_0808FAC4: .4byte gUnknown_08120E94
_0808FAC8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0808FADA
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_080901FC
	b _0808FAE4
_0808FADA:
	cmp r2, #0
	bge _0808FAE4
	adds r0, r1, #0
	bl sub_0808F954
_0808FAE4:
	pop {r0}
	bx r0

	thumb_func_start sub_0808FAE8
sub_0808FAE8: @ 0x0808FAE8
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FB14 @ =gUnknown_08120E1C
	ldr r1, _0808FB18 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0808FB0E
	adds r0, r2, #0
	bl sub_080902E0
_0808FB0E:
	pop {r0}
	bx r0
	.align 2, 0
_0808FB14: .4byte gUnknown_08120E1C
_0808FB18: .4byte gUnknown_08120E94

	thumb_func_start sub_0808FB1C
sub_0808FB1C: @ 0x0808FB1C
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FB48 @ =gUnknown_08120E1C
	ldr r1, _0808FB4C @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0808FB42

	thumb_func_start sub_0808FB3C
sub_0808FB3C: @ 0x0808FB3C
	adds r0, r2, #0
	bl sub_0808F954
_0808FB42:
	pop {r0}
	bx r0
	.align 2, 0
_0808FB48: .4byte gUnknown_08120E1C
_0808FB4C: .4byte gUnknown_08120E94

	thumb_func_start sub_0808FB50
sub_0808FB50: @ 0x0808FB50
	push {r4, r5, lr}
	ldr r0, _0808FB74 @ =0x0000000A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0808FB6E
	ldr r5, _0808FB78 @ =gUnknown_08120E1C
	adds r4, r0, #0
_0808FB60:
	ldr r0, [r5]
	bl sub_080902E0
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0808FB60
_0808FB6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FB74: .4byte 0x0000000A
_0808FB78: .4byte gUnknown_08120E1C

	thumb_func_start sub_0808FB7C
sub_0808FB7C: @ 0x0808FB7C
	push {lr}
	bl sub_0808F954
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808FB88
sub_0808FB88: @ 0x0808FB88
	push {r4, r5, lr}
	ldr r0, _0808FBAC @ =0x0000000A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0808FBA6
	ldr r5, _0808FBB0 @ =gUnknown_08120E1C
	adds r4, r0, #0
_0808FB98:
	ldr r0, [r5]
	bl sub_0808F954
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0808FB98
_0808FBA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FBAC: .4byte 0x0000000A
_0808FBB0: .4byte gUnknown_08120E1C

	thumb_func_start sub_0808FBB4
sub_0808FBB4: @ 0x0808FBB4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0808F974
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808FBC4
sub_0808FBC4: @ 0x0808FBC4
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0808FBE0 @ =0x68736D53
	cmp r3, r0
	bne _0808FBDC
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _0808FBE4 @ =0x00000101
	strh r0, [r2, #0x28]
_0808FBDC:
	pop {r0}
	bx r0
	.align 2, 0
_0808FBE0: .4byte 0x68736D53
_0808FBE4: .4byte 0x00000101

	thumb_func_start sub_0808FBE8
sub_0808FBE8: @ 0x0808FBE8
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0808FC0C @ =0x68736D53
	cmp r3, r0
	bne _0808FC08
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _0808FC10 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0808FC08:
	pop {r0}
	bx r0
	.align 2, 0
_0808FC0C: .4byte 0x68736D53
_0808FC10: .4byte 0x7FFFFFFF

	thumb_func_start sub_0808FC14
sub_0808FC14: @ 0x0808FC14
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _0808FC78 @ =0x68736D53
	cmp r1, r0
	bne _0808FC6E
	adds r0, r1, #1
	str r0, [r7, #0x34]
	ldrb r5, [r7, #8]
	ldr r4, [r7, #0x2c]
	cmp r5, #0
	ble _0808FC6A
	movs r2, #0x80
_0808FC30:
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0808FC62
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0808FC62
	adds r0, r4, #0
	str r2, [sp]
	bl sub_0808FDAC
	ldr r2, [sp]
	strb r2, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_0808FC62:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0808FC30
_0808FC6A:
	ldr r0, _0808FC78 @ =0x68736D53
	str r0, [r7, #0x34]
_0808FC6E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FC78: .4byte 0x68736D53

	thumb_func_start sub_0808FC7C
sub_0808FC7C: @ 0x0808FC7C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0808FD44 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _0808FD48 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _0808FD4C @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _0808FD50 @ =gUnknown_03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _0808FD54 @ =0x68736D53
	cmp r6, r0
	bne _0808FD3C
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _0808FD58 @ =gUnknown_03002AD0
	ldr r0, _0808FD5C @ =sub_08090CF4
	str r0, [r1, #0x20]
	ldr r0, _0808FD60 @ =ply_lfos
	str r0, [r1, #0x44]
	ldr r0, _0808FD64 @ =ply_mod
	str r0, [r1, #0x4c]
	ldr r0, _0808FD68 @ =sub_08090E4C
	str r0, [r1, #0x70]
	ldr r0, _0808FD6C @ =ply_endtie
	str r0, [r1, #0x74]
	ldr r0, _0808FD70 @ =sub_0808FEB8
	str r0, [r1, #0x78]
	ldr r0, _0808FD74 @ =TrackStop
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _0808FD78 @ =sub_08090320
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _0808FD7C @ =sub_080903E8
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _0808FD80 @ =sub_08090600
	str r0, [r4, #0x28]
	ldr r0, _0808FD84 @ =sub_08090544
	str r0, [r4, #0x2c]
	ldr r0, _0808FD88 @ =sub_0809049C
	str r0, [r4, #0x30]
	ldr r0, _0808FD8C @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _0808FD90 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_0808FD3C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808FD44: .4byte 0x04000084
_0808FD48: .4byte 0x04000080
_0808FD4C: .4byte 0x04000063
_0808FD50: .4byte gUnknown_03007FF0
_0808FD54: .4byte 0x68736D53
_0808FD58: .4byte gUnknown_03002AD0
_0808FD5C: .4byte sub_08090CF4
_0808FD60: .4byte ply_lfos
_0808FD64: .4byte ply_mod
_0808FD68: .4byte sub_08090E4C
_0808FD6C: .4byte ply_endtie
_0808FD70: .4byte sub_0808FEB8
_0808FD74: .4byte TrackStop
_0808FD78: .4byte sub_08090320
_0808FD7C: .4byte sub_080903E8
_0808FD80: .4byte sub_08090600
_0808FD84: .4byte sub_08090544
_0808FD88: .4byte sub_0809049C
_0808FD8C: .4byte 0x00000000
_0808FD90: .4byte 0x05000040

	thumb_func_start sub_0808FD94
sub_0808FD94: @ 0x0808FD94
	svc #0x2a
	bx lr

	thumb_func_start sub_0808FD98
sub_0808FD98: @ 0x0808FD98
	push {lr}
	ldr r1, _0808FDA8 @ =gUnknown_03002B58
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0808FDA8: .4byte gUnknown_03002B58

	thumb_func_start sub_0808FDAC
sub_0808FDAC: @ 0x0808FDAC
	push {lr}
	ldr r1, _0808FDBC @ =gUnknown_03002B5C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0808FDBC: .4byte gUnknown_03002B5C

	thumb_func_start sub_0808FDC0
sub_0808FDC0: @ 0x0808FDC0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _0808FE78 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _0808FDDC
	ldr r0, _0808FE7C @ =0x84400004
	str r0, [r1]
_0808FDDC:
	ldr r1, _0808FE80 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0808FDEA
	ldr r0, _0808FE7C @ =0x84400004
	str r0, [r1]
_0808FDEA:
	ldr r0, _0808FE84 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _0808FE88 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0808FE8C @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0808FE90 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0808FE94 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0808FE98 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0808FE9C @ =0x040000A4
	str r0, [r1]
	ldr r0, _0808FEA0 @ =gUnknown_03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _0808FEA4 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _0808FEA8 @ =ply_note
	str r0, [r5, #0x38]
	ldr r0, _0808FEAC @ =sub_08090F6C
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _0808FEB0 @ =gUnknown_03002AD0
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0808FEB8
	ldr r0, _0808FEB4 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FE78: .4byte 0x040000C4
_0808FE7C: .4byte 0x84400004
_0808FE80: .4byte 0x040000D0
_0808FE84: .4byte 0x040000C6
_0808FE88: .4byte 0x04000084
_0808FE8C: .4byte 0x0000A90E
_0808FE90: .4byte 0x04000089
_0808FE94: .4byte 0x040000BC
_0808FE98: .4byte 0x040000A0
_0808FE9C: .4byte 0x040000A4
_0808FEA0: .4byte gUnknown_03007FF0
_0808FEA4: .4byte 0x050003EC
_0808FEA8: .4byte ply_note
_0808FEAC: .4byte sub_08090F6C
_0808FEB0: .4byte gUnknown_03002AD0
_0808FEB4: .4byte 0x68736D53

	thumb_func_start sub_0808FEB8
sub_0808FEB8: @ 0x0808FEB8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0809000C
	ldr r0, _0808FF10 @ =gUnknown_03007FF0
	ldr r5, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r4
	lsrs r4, r0, #0x10
	strb r4, [r5, #8]
	ldr r1, _0808FF14 @ =gUnknown_08119AF0
	subs r0, r4, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	str r4, [r5, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r4, #0
	bl __divsi3
	strb r0, [r5, #0xb]
	ldr r0, _0808FF18 @ =0x00091D1B
	muls r0, r4, r0
	ldr r1, _0808FF1C @ =0x00001388
	adds r0, r0, r1
	ldr r1, _0808FF20 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r5, #0x18]
	bl sub_0809008C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FF10: .4byte gUnknown_03007FF0
_0808FF14: .4byte gUnknown_08119AF0
_0808FF18: .4byte 0x00091D1B
_0808FF1C: .4byte 0x00001388
_0808FF20: .4byte 0x00002710

	thumb_func_start sub_0808FF24
sub_0808FF24: @ 0x0808FF24
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0808FFAC @ =gUnknown_03007FF0
	ldr r4, [r0]
	ldr r1, [r4]
	ldr r0, _0808FFB0 @ =0x68736D53
	cmp r1, r0
	bne _0808FFA6
	adds r0, r1, #1
	str r0, [r4]
	movs r3, #0xff
	ands r3, r5
	cmp r3, #0
	beq _0808FF46
	movs r0, #0x7f
	ands r3, r0
	strb r3, [r4, #5]
_0808FF46:
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r3, r5
	cmp r3, #0
	beq _0808FF66
	lsrs r0, r3, #8
	strb r0, [r4, #6]
	movs r3, #0xc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
_0808FF5C:
	strb r1, [r0]
	subs r3, #1
	adds r0, #0x40
	cmp r3, #0
	bne _0808FF5C
_0808FF66:
	movs r3, #0xf0
	lsls r3, r3, #8
	ands r3, r5
	cmp r3, #0
	beq _0808FF74
	lsrs r0, r3, #0xc
	strb r0, [r4, #7]
_0808FF74:
	movs r3, #0xb0
	lsls r3, r3, #0x10
	ands r3, r5
	cmp r3, #0
	beq _0808FF92
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r3
	lsrs r3, r0, #0xe
	ldr r2, _0808FFB4 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_0808FF92:
	movs r3, #0xf0
	lsls r3, r3, #0xc
	ands r3, r5
	cmp r3, #0
	beq _0808FFA2
	adds r0, r3, #0
	bl sub_0808FEB8
_0808FFA2:
	ldr r0, _0808FFB0 @ =0x68736D53
	str r0, [r4]
_0808FFA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FFAC: .4byte gUnknown_03007FF0
_0808FFB0: .4byte 0x68736D53
_0808FFB4: .4byte 0x04000089

	thumb_func_start sub_0808FFB8
sub_0808FFB8: @ 0x0808FFB8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08090004 @ =gUnknown_03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08090008 @ =0x68736D53
	cmp r1, r0
	bne _0808FFFE
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_0808FFD2:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _0808FFD2
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _0808FFFA
	movs r5, #1
	movs r7, #0
_0808FFE6:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _0808FFE6
_0808FFFA:
	ldr r0, _08090008 @ =0x68736D53
	str r0, [r6]
_0808FFFE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090004: .4byte gUnknown_03007FF0
_08090008: .4byte 0x68736D53

	thumb_func_start sub_0809000C
sub_0809000C: @ 0x0809000C
	push {lr}
	sub sp, #4
	ldr r0, _08090070 @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08090074 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _0809006A
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08090078 @ =0x04000102
	movs r0, #0
	strh r0, [r1]
	subs r1, #0x3e
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _0809003C
	ldr r0, _0809007C @ =0x84400004
	str r0, [r1]
_0809003C:
	ldr r1, _08090080 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _0809004A
	ldr r0, _0809007C @ =0x84400004
	str r0, [r1]
_0809004A:
	ldr r0, _08090084 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08090088 @ =0x05000318
	mov r0, sp
	bl CpuSet
_0809006A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08090070: .4byte gUnknown_03007FF0
_08090074: .4byte 0x978C92AD
_08090078: .4byte 0x04000102
_0809007C: .4byte 0x84400004
_08090080: .4byte 0x040000D0
_08090084: .4byte 0x040000C6
_08090088: .4byte 0x05000318

	thumb_func_start sub_0809008C
sub_0809008C: @ 0x0809008C
	push {r4, lr}
	ldr r0, _080900E8 @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080900EC @ =0x68736D53
	cmp r3, r0
	beq _080900E0
	ldr r0, _080900F0 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
	ldr r3, _080900F4 @ =0x04000006
	ldrb r0, [r3]
	ldr r1, [r2, #0x10]
	cmp r0, #0x9f
	bne _080900C6
	adds r2, r3, #0
_080900C0:
	ldrb r0, [r2]
	cmp r0, #0x9f
	beq _080900C0
_080900C6:
	ldr r2, _080900F4 @ =0x04000006
_080900C8:
	ldrb r0, [r2]
	cmp r0, #0x9f
	bne _080900C8
	ldr r4, _080900F8 @ =0x04000100
	ldr r0, _080900FC @ =0x00044940
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	ldr r1, _08090100 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
_080900E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080900E8: .4byte gUnknown_03007FF0
_080900EC: .4byte 0x68736D53
_080900F0: .4byte 0x040000C6
_080900F4: .4byte 0x04000006
_080900F8: .4byte 0x04000100
_080900FC: .4byte 0x00044940
_08090100: .4byte 0x04000102

	thumb_func_start sub_08090104
sub_08090104: @ 0x08090104
	push {lr}
	ldr r0, _08090168 @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _0809016C @ =0x978C92AD
	adds r0, r0, r1
	cmp r0, #1
	bhi _08090162
	ldrb r0, [r2, #4]
	subs r0, #1
	ldrb r1, [r2, #4]
	strb r0, [r2, #4]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08090162
	ldrb r0, [r2, #0xb]
	ldrb r1, [r2, #4]
	strb r0, [r2, #4]
	ldr r1, _08090170 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _0809013C
	ldr r0, _08090174 @ =0x84400004
	str r0, [r1]
_0809013C:
	ldr r1, _08090178 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0809014A
	ldr r0, _08090174 @ =0x84400004
	str r0, [r1]
_0809014A:
	ldr r2, _0809017C @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _08090180 @ =0x040000D2
	strh r0, [r1]
	movs r3, #0xb6
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r2]
	strh r0, [r1]
_08090162:
	pop {r0}
	bx r0
	.align 2, 0
_08090168: .4byte gUnknown_03007FF0
_0809016C: .4byte 0x978C92AD
_08090170: .4byte 0x040000C4
_08090174: .4byte 0x84400004
_08090178: .4byte 0x040000D0
_0809017C: .4byte 0x040000C6
_08090180: .4byte 0x040000D2

	thumb_func_start sub_08090184
sub_08090184: @ 0x08090184
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080901E8
	cmp r4, #0x10
	bls _08090198
	movs r4, #0x10
_08090198:
	ldr r0, _080901F0 @ =gUnknown_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080901F4 @ =0x68736D53
	cmp r1, r0
	bne _080901E8
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_0808FDAC
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080901CC
	movs r1, #0
_080901BE:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080901BE
_080901CC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080901DC
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080901DC:
	str r7, [r5, #0x24]
	ldr r0, _080901F8 @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _080901F4 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080901E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080901F0: .4byte gUnknown_03007FF0
_080901F4: .4byte 0x68736D53
_080901F8: .4byte MPlayMain

	thumb_func_start sub_080901FC
sub_080901FC: @ 0x080901FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080902DC @ =0x68736D53
	cmp r1, r0
	bne _080902D0
	adds r0, r1, #1
	str r0, [r5, #0x34]
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08090242
	ldr r0, [r5]
	cmp r0, #0
	beq _0809022C
	ldr r0, [r5, #0x2c]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08090238
_0809022C:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08090242
	cmp r1, #0
	blt _08090242
_08090238:
	ldrb r0, [r7, #2]
	ldrb r1, [r5, #9]
	adds r2, r0, #0
	cmp r1, r2
	bhi _080902CC
_08090242:
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r0, [r7]
	cmp r6, r0
	bge _0809029C
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080902BC
	mov r8, r6
_08090270:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #0xc0
	strb r0, [r4]
	mov r0, r8
	str r0, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _0809029C
	ldrb r0, [r5, #8]
	cmp r6, r0
	blt _08090270
_0809029C:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080902BC
	movs r0, #0
	mov r8, r0
_080902A6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r5, #8]
	cmp r6, r0
	blt _080902A6
_080902BC:
	ldrb r1, [r7, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080902CC
	ldrb r0, [r7, #3]
	bl sub_0808FF24
_080902CC:
	ldr r0, _080902DC @ =0x68736D53
	str r0, [r5, #0x34]
_080902D0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080902DC: .4byte 0x68736D53

	thumb_func_start sub_080902E0
sub_080902E0: @ 0x080902E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _0809031C @ =0x68736D53
	cmp r1, r0
	bne _08090316
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08090312
_08090302:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08090302
_08090312:
	ldr r0, _0809031C @ =0x68736D53
	str r0, [r6, #0x34]
_08090316:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809031C: .4byte 0x68736D53

	thumb_func_start sub_08090320
sub_08090320: @ 0x08090320
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080903E2
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08090360 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080903E2
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08090364
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080903B6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080903B6
	.align 2, 0
_08090360: .4byte 0x0000FFFF
_08090364:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080903B6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08090396
_0809037A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop
	ldrh r0, [r6, #0x28]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0809038E
	strb r1, [r4]
_0809038E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0809037A
_08090396:
	ldrh r1, [r6, #0x28]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080903AA
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080903AE
_080903AA:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080903AE:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080903E2
_080903B6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080903E2
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080903C4:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080903DA
	ldrh r0, [r6, #0x28]
	lsrs r0, r0, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080903DA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080903C4
_080903E2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080903E8
sub_080903E8: @ 0x080903E8
	push {r4, lr}
	adds r2, r1, #0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809044A
	ldrb r0, [r2, #0x12]
	ldrb r1, [r2, #0x13]
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _0809040E
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_0809040E:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08090424
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08090424:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08090430
	adds r1, r0, #0
	b _08090436
_08090430:
	cmp r1, #0x7f
	ble _08090436
	movs r1, #0x7f
_08090436:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_0809044A:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0809048E
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	ldrb r0, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r1, r0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08090488
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08090488:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_0809048E:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809049C
sub_0809049C: @ 0x0809049C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080904D4
	cmp r5, #0x14
	bhi _080904B8
	movs r5, #0
	b _080904C6
_080904B8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080904C6
	movs r5, #0x3b
_080904C6:
	ldr r0, _080904D0 @ =gUnknown_08119BA4
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08090536
	.align 2, 0
_080904D0: .4byte gUnknown_08119BA4
_080904D4:
	cmp r5, #0x23
	bhi _080904E0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080904F2
_080904E0:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080904F2
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080904F2:
	ldr r3, _0809053C @ =gUnknown_08119B08
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08090540 @ =gUnknown_08119B8C
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08090536:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809053C: .4byte gUnknown_08119B08
_08090540: .4byte gUnknown_08119B8C

	thumb_func_start sub_08090544
sub_08090544: @ 0x08090544
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08090570
	cmp r0, #2
	bgt _0809055A
	cmp r0, #1
	beq _08090560
	b _08090584
_0809055A:
	cmp r1, #3
	beq _08090578
	b _08090584
_08090560:
	ldr r1, _0809056C @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _0809058C
	.align 2, 0
_0809056C: .4byte 0x04000063
_08090570:
	ldr r1, _08090574 @ =0x04000069
	b _08090586
	.align 2, 0
_08090574: .4byte 0x04000069
_08090578:
	ldr r1, _08090580 @ =0x04000070
	movs r0, #0
	b _0809058E
	.align 2, 0
_08090580: .4byte 0x04000070
_08090584:
	ldr r1, _08090594 @ =0x04000079
_08090586:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_0809058C:
	movs r0, #0x80
_0809058E:
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08090594: .4byte 0x04000079

	thumb_func_start sub_08090598
sub_08090598: @ 0x08090598
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r3, r0, #0x18
	lsrs r4, r3, #0x18
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r4, r1
	blo _080905B8
	lsrs r0, r3, #0x19
	cmp r0, r1
	blo _080905C4
	movs r0, #0xf
	strb r0, [r2, #0x1b]
	b _080905D2
_080905B8:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080905C4
	movs r0, #0xf0
	strb r0, [r2, #0x1b]
	b _080905D2
_080905C4:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsrs r0, r0, #4
	b _080905E2
_080905D2:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsrs r0, r0, #4
	strb r0, [r2, #0xa]
	cmp r0, #0xf
	bls _080905E4
	movs r0, #0xf
_080905E2:
	strb r0, [r2, #0xa]
_080905E4:
	ldrb r1, [r2, #0xa]
	ldrb r0, [r2, #6]
	muls r0, r1, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r2, #0x19]
	ldrb r1, [r2, #0x1b]
	ldrb r0, [r2, #0x1c]
	ands r0, r1
	strb r0, [r2, #0x1b]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08090600
sub_08090600: @ 0x08090600
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _08090620 @ =gUnknown_03007FF0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08090624
	subs r0, #1
	ldr r1, [sp, #8]
	strb r0, [r1, #0xa]
	b _0809062A
	.align 2, 0
_08090620: .4byte gUnknown_03007FF0
_08090624:
	movs r0, #0xe
	ldr r3, [sp, #8]
	strb r0, [r3, #0xa]
_0809062A:
	movs r6, #1
	ldr r0, [sp, #8]
	ldr r4, [r0, #0x1c]
	mov r1, sp
	str r1, [sp, #0x1c]
_08090634:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _0809064A
	b _08090A66
_0809064A:
	cmp r6, #2
	beq _08090680
	cmp r6, #2
	bgt _08090658
	cmp r6, #1
	beq _0809065E
	b _080906C8
_08090658:
	cmp r6, #3
	beq _080906A4
	b _080906C8
_0809065E:
	ldr r3, _08090674 @ =0x04000060
	str r3, [sp, #0xc]
	adds r3, #2
	ldr r0, _08090678 @ =0x04000063
	str r0, [sp, #0x10]
	ldr r1, _0809067C @ =0x04000064
	str r1, [sp, #0x14]
	adds r0, #2
	str r0, [sp, #0x18]
	movs r0, #0
	b _080906DC
	.align 2, 0
_08090674: .4byte 0x04000060
_08090678: .4byte 0x04000063
_0809067C: .4byte 0x04000064
_08090680:
	ldr r3, _08090698 @ =0x04000061
	str r3, [sp, #0xc]
	adds r3, #7
	ldr r0, _0809069C @ =0x04000069
	str r0, [sp, #0x10]
	ldr r1, _080906A0 @ =0x0400006C
	str r1, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	movs r0, #1
	b _080906DC
	.align 2, 0
_08090698: .4byte 0x04000061
_0809069C: .4byte 0x04000069
_080906A0: .4byte 0x0400006C
_080906A4:
	ldr r3, _080906BC @ =0x04000070
	str r3, [sp, #0xc]
	adds r3, #2
	ldr r0, _080906C0 @ =0x04000073
	str r0, [sp, #0x10]
	ldr r1, _080906C4 @ =0x04000074
	str r1, [sp, #0x14]
	adds r0, #2
	str r0, [sp, #0x18]
	movs r0, #2
	b _080906DC
	.align 2, 0
_080906BC: .4byte 0x04000070
_080906C0: .4byte 0x04000073
_080906C4: .4byte 0x04000074
_080906C8:
	ldr r3, _08090730 @ =0x04000071
	str r3, [sp, #0xc]
	adds r3, #7
	ldr r0, _08090734 @ =0x04000079
	str r0, [sp, #0x10]
	ldr r1, _08090738 @ =0x0400007C
	str r1, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	movs r0, #3
_080906DC:
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xa]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	mov r8, r0
	ldrb r2, [r4]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080907D6
	movs r7, #0x40
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	beq _08090710
	b _0809080C
_08090710:
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x20]
	bl sub_08090598
	ldr r3, [sp, #0x20]
	cmp r6, #2
	beq _08090748
	cmp r6, #2
	bgt _0809073C
	cmp r6, #1
	beq _08090742
	b _0809079C
	.align 2, 0
_08090730: .4byte 0x04000071
_08090734: .4byte 0x04000079
_08090738: .4byte 0x0400007C
_0809073C:
	cmp r6, #3
	beq _08090754
	b _0809079C
_08090742:
	ldrb r0, [r4, #0x1f]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
_08090748:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r0, r1
	strb r0, [r3]
	b _080907A8
_08090754:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _0809077C
	ldr r0, [sp, #0xc]
	strb r7, [r0]
	ldr r1, _08090790 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_0809077C:
	ldr r1, [sp, #0xc]
	strb r5, [r1]
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08090794
	movs r0, #0xc0
	b _080907B6
	.align 2, 0
_08090790: .4byte 0x04000090
_08090794:
	movs r3, #0x80
	rsbs r3, r3, #0
	strb r3, [r4, #0x1a]
	b _080907B8
_0809079C:
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080907A8:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080907B6
	movs r0, #0x40
_080907B6:
	strb r0, [r4, #0x1a]
_080907B8:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080907D2
	b _08090926
_080907D2:
	strb r2, [r4, #9]
	b _08090954
_080907D6:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080907F0
	ldr r0, _0809081C @ =0x04000084
	ldrb r1, [r0]
	ldr r3, [sp, #0x1c]
	ldrb r0, [r3]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08090820
_080907F0:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	ble _0809080C
	b _08090966
_0809080C:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08090544
	movs r0, #0
	strb r0, [r4]
	b _08090A62
	.align 2, 0
_0809081C: .4byte 0x04000084
_08090820:
	movs r0, #0x40
	ands r0, r2
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	beq _08090860
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08090860
	movs r0, #0xfc
	ands r0, r2
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08090892
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08090954
	ldrb r3, [r4, #7]
	mov r8, r3
	b _08090954
_08090860:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08090954
	cmp r6, #3
	bne _08090872
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08090872:
	adds r0, r4, #0
	bl sub_08090598
	ldrb r0, [r4]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080908C4
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080908C0
_08090892:
	ldrb r1, [r4, #0xa]
	ldrb r0, [r4, #0xc]
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809080C
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08090966
	movs r3, #8
	mov r8, r3
	b _08090966
_080908C0:
	ldrb r0, [r4, #7]
	b _08090952
_080908C4:
	cmp r1, #1
	bne _080908D0
_080908C8:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08090952
_080908D0:
	cmp r1, #2
	bne _08090916
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	cmp r0, r1
	bgt _08090912
_080908EA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080908FA
	ldrb r1, [r4]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r4]
	b _08090892
_080908FA:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080908C8
	movs r3, #8
	mov r8, r3
	b _080908C8
_08090912:
	ldrb r0, [r4, #5]
	b _08090952
_08090916:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r3, [r4, #0xa]
	cmp r0, r3
	blo _08090950
_08090926:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080908EA
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08090954
	ldrb r0, [r4, #5]
	mov r8, r0
	b _08090954
_08090950:
	ldrb r0, [r4, #4]
_08090952:
	strb r0, [r4, #0xb]
_08090954:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _08090966
	subs r1, #1
	str r1, [sp, #4]
	b _08090860
_08090966:
	ldrb r1, [r4, #0x1d]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080909E0
	cmp r6, #3
	bgt _080909A6
	ldrb r1, [r4, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080909A6
	ldr r0, _08090990 @ =0x04000089
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0x3f
	bgt _08090998
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08090994 @ =0x000007FC
	b _080909A2
	.align 2, 0
_08090990: .4byte 0x04000089
_08090994: .4byte 0x000007FC
_08090998:
	cmp r1, #0x7f
	bgt _080909A6
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080909B0 @ =0x000007FE
_080909A2:
	ands r0, r1
	str r0, [r4, #0x20]
_080909A6:
	cmp r6, #4
	beq _080909B4
	ldr r0, [r4, #0x20]
	b _080909C0
	.align 2, 0
_080909B0: .4byte 0x000007FE
_080909B4:
	ldr r1, [sp, #0x14]
	ldrb r0, [r1]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
_080909C0:
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	ldrb r0, [r4, #0x1a]
	movs r1, #0xc0
	ands r1, r0
	ldr r0, [r4, #0x20]
	movs r2, #0xfc
	lsls r2, r2, #6
	ands r0, r2
	lsrs r0, r0, #8
	adds r1, r1, r0
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	ands r1, r0
	ldr r3, [sp, #0x18]
	strb r1, [r3]
_080909E0:
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08090A62
	ldr r2, _08090A28 @ =0x04000081
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r2]
	bics r0, r1
	ldrb r1, [r4, #0x1b]
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #3
	bne _08090A30
	ldr r1, _08090A2C @ =gUnknown_08119BE0
	ldrb r0, [r4, #9]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldrb r1, [r4, #0x1a]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08090A62
	ldr r3, [sp, #0xc]
	strb r2, [r3]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	ldrb r1, [r4, #0x1a]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _08090A62
	.align 2, 0
_08090A28: .4byte 0x04000081
_08090A2C: .4byte gUnknown_08119BE0
_08090A30:
	movs r0, #0xf
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r4, #9]
	lsls r0, r0, #4
	add r0, r8
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldrb r0, [r4, #0x1a]
	movs r2, #0x80
	orrs r0, r2
	ldr r3, [sp, #0x18]
	strb r0, [r3]
	cmp r6, #1
	bne _08090A62
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08090A62
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	strb r0, [r3]
_08090A62:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08090A66:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08090A70
	b _08090634
_08090A70:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08090A80
sub_08090A80: @ 0x08090A80
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08090AA0 @ =0x68736D53
	cmp r3, r0
	bne _08090A9C
	strh r1, [r2, #0x1e]
	ldrh r1, [r2, #0x1c]
	ldrh r0, [r2, #0x1e]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08090A9C:
	pop {r0}
	bx r0
	.align 2, 0
_08090AA0: .4byte 0x68736D53

	thumb_func_start sub_08090AA4
sub_08090AA4: @ 0x08090AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08090B08 @ =0x68736D53
	cmp r3, r0
	bne _08090AFC
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08090AF8
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08090AD4:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08090AEE
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08090AEE
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08090AEE:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08090AD4
_08090AF8:
	ldr r0, _08090B08 @ =0x68736D53
	str r0, [r4, #0x34]
_08090AFC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090B08: .4byte 0x68736D53

	thumb_func_start sub_08090B0C
sub_08090B0C: @ 0x08090B0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08090B7C @ =0x68736D53
	cmp r3, r0
	bne _08090B6E
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08090B6A
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08090B44:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08090B60
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08090B60
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08090B60:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08090B44
_08090B6A:
	ldr r0, _08090B7C @ =0x68736D53
	str r0, [r4, #0x34]
_08090B6E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090B7C: .4byte 0x68736D53

	thumb_func_start sub_08090B80
sub_08090B80: @ 0x08090B80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _08090BE4 @ =0x68736D53
	cmp r3, r0
	bne _08090BD8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08090BD4
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08090BB0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08090BCA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08090BCA
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08090BCA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08090BB0
_08090BD4:
	ldr r0, _08090BE4 @ =0x68736D53
	str r0, [r4, #0x34]
_08090BD8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090BE4: .4byte 0x68736D53

	thumb_func_start sub_08090BE8
sub_08090BE8: @ 0x08090BE8
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0
	strb r0, [r2, #0x1a]
	strb r0, [r2, #0x16]
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08090C00
	ldrb r0, [r2]
	movs r1, #0xc
	b _08090C04
_08090C00:
	ldrb r0, [r2]
	movs r1, #3
_08090C04:
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start sub_08090C0C
sub_08090C0C: @ 0x08090C0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08090C7C @ =0x68736D53
	cmp r1, r0
	bne _08090C6C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08090C68
	mov sb, r8
_08090C3C:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08090C5E
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08090C5E
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r0, sb
	cmp r0, #0
	bne _08090C5E
	adds r0, r4, #0
	bl sub_08090BE8
_08090C5E:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08090C3C
_08090C68:
	ldr r0, _08090C7C @ =0x68736D53
	str r0, [r6, #0x34]
_08090C6C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090C7C: .4byte 0x68736D53

	thumb_func_start sub_08090C80
sub_08090C80: @ 0x08090C80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08090CF0 @ =0x68736D53
	cmp r1, r0
	bne _08090CE0
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08090CDC
	mov sb, r8
_08090CB0:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08090CD2
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08090CD2
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r0, sb
	cmp r0, #0
	bne _08090CD2
	adds r0, r4, #0
	bl sub_08090BE8
_08090CD2:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08090CB0
_08090CDC:
	ldr r0, _08090CF0 @ =0x68736D53
	str r0, [r6, #0x34]
_08090CE0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090CF0: .4byte 0x68736D53

	thumb_func_start sub_08090CF4
sub_08090CF4: @ 0x08090CF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r6, #0x40]
	ldrb r5, [r0]
	adds r1, r0, #1
	str r1, [r6, #0x40]
	ldrb r2, [r0, #1]
	ldr r0, [r4, #0x18]
	adds r2, r0, r2
	adds r0, r1, #1
	str r0, [r6, #0x40]
	ldrb r3, [r1, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08090D18
	b _08090E46
_08090D18:
	lsls r0, r5, #2
	ldr r1, _08090D24 @ =_08090D28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08090D24: .4byte _08090D28
_08090D28: @ jump table
	.4byte _08090D70 @ case 0
	.4byte _08090D74 @ case 1
	.4byte _08090D7C @ case 2
	.4byte _08090D84 @ case 3
	.4byte _08090D8E @ case 4
	.4byte _08090D9C @ case 5
	.4byte _08090DAA @ case 6
	.4byte _08090DB2 @ case 7
	.4byte _08090DBA @ case 8
	.4byte _08090DC2 @ case 9
	.4byte _08090DCA @ case 10
	.4byte _08090DD2 @ case 11
	.4byte _08090DDA @ case 12
	.4byte _08090DE8 @ case 13
	.4byte _08090DF6 @ case 14
	.4byte _08090E04 @ case 15
	.4byte _08090E12 @ case 16
	.4byte _08090E20 @ case 17
_08090D70:
	strb r3, [r2]
	b _08090E46
_08090D74:
	ldrb r0, [r2]
	adds r0, r3, r0
	strb r0, [r2]
	b _08090E46
_08090D7C:
	ldrb r0, [r2]
	subs r0, r0, r3
	strb r0, [r2]
	b _08090E46
_08090D84:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b _08090E46
_08090D8E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	b _08090E46
_08090D9C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r2]
	b _08090E46
_08090DAA:
	ldrb r0, [r2]
	cmp r0, r3
	beq _08090E2C
	b _08090E40
_08090DB2:
	ldrb r0, [r2]
	cmp r0, r3
	bne _08090E2C
	b _08090E40
_08090DBA:
	ldrb r0, [r2]
	cmp r0, r3
	bhi _08090E2C
	b _08090E40
_08090DC2:
	ldrb r0, [r2]
	cmp r0, r3
	bhs _08090E2C
	b _08090E40
_08090DCA:
	ldrb r0, [r2]
	cmp r0, r3
	bls _08090E2C
	b _08090E40
_08090DD2:
	ldrb r0, [r2]
	cmp r0, r3
	blo _08090E2C
	b _08090E40
_08090DDA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08090E2C
	b _08090E40
_08090DE8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08090E2C
	b _08090E40
_08090DF6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhi _08090E2C
	b _08090E40
_08090E04:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08090E2C
	b _08090E40
_08090E12:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bls _08090E2C
	b _08090E40
_08090E20:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08090E40
_08090E2C:
	ldr r0, _08090E3C @ =gUnknown_03002AD4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _08090E46
	.align 2, 0
_08090E3C: .4byte gUnknown_03002AD4
_08090E40:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08090E46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08090E4C
sub_08090E4C: @ 0x08090E4C
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08090E68 @ =gUnknown_08119C24
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08090E68: .4byte gUnknown_08119C24

	thumb_func_start sub_08090E6C
sub_08090E6C: @ 0x08090E6C
	push {lr}
	ldr r2, _08090E7C @ =gUnknown_03002AD0
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08090E7C: .4byte gUnknown_03002AD0

	thumb_func_start sub_08090E80
sub_08090E80: @ 0x08090E80
	push {r4, lr}
	ldr r3, [r1, #0x40]
	ldrb r2, [r3]
	ldr r0, _08090EB8 @ =0xFFFFFF00
	ands r4, r0
	orrs r4, r2
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	ldr r2, _08090EBC @ =0xFFFF00FF
	ands r4, r2
	orrs r4, r0
	ldrb r0, [r3, #2]
	lsls r0, r0, #0x10
	ldr r2, _08090EC0 @ =0xFF00FFFF
	ands r4, r2
	orrs r4, r0
	ldrb r0, [r3, #3]
	lsls r0, r0, #0x18
	ldr r2, _08090EC4 @ =0x00FFFFFF
	ands r4, r2
	orrs r4, r0
	str r4, [r1, #0x28]
	adds r3, #4
	str r3, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08090EB8: .4byte 0xFFFFFF00
_08090EBC: .4byte 0xFFFF00FF
_08090EC0: .4byte 0xFF00FFFF
_08090EC4: .4byte 0x00FFFFFF

	thumb_func_start sub_08090EC8
sub_08090EC8: @ 0x08090EC8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090EDC
sub_08090EDC: @ 0x08090EDC
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090EF0
sub_08090EF0: @ 0x08090EF0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F04
sub_08090F04: @ 0x08090F04
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F18
sub_08090F18: @ 0x08090F18
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F2C
sub_08090F2C: @ 0x08090F2C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08090F38
sub_08090F38: @ 0x08090F38
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08090F44
sub_08090F44: @ 0x08090F44
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F58
sub_08090F58: @ 0x08090F58
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F6C
sub_08090F6C: @ 0x08090F6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F70
sub_08090F70: @ 0x08090F70
	svc #0xa
	bx lr

	thumb_func_start sub_08090F74
sub_08090F74: @ 0x08090F74
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x08090F78
	svc #0xb
	bx lr

	thumb_func_start sub_08090F7C
sub_08090F7C: @ 0x08090F7C
	svc #6
	bx lr

	thumb_func_start sub_08090F80
sub_08090F80: @ 0x08090F80
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F88
sub_08090F88: @ 0x08090F88
	svc #0x12
	bx lr

	thumb_func_start sub_08090F8C
sub_08090F8C: @ 0x08090F8C
	svc #0x11
	bx lr

	thumb_func_start sub_08090F90
sub_08090F90: @ 0x08090F90
	ldr r3, _08090FA0 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _08090FA4 @ =gUnknown_03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_08090FA0: .4byte 0x04000208
_08090FA4: .4byte gUnknown_03007F00

	thumb_func_start sub_08090FA8
sub_08090FA8: @ 0x08090FA8
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start sub_08090FB0
sub_08090FB0: @ 0x08090FB0
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start sub_08090FB8
sub_08090FB8: @ 0x08090FB8
	svc #8
	bx lr

	thumb_func_start sub_08090FBC
sub_08090FBC: @ 0x08090FBC
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start sub_08090FC4
sub_08090FC4: @ 0x08090FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08090FE0 @ =0x0E005555
	movs r1, #0xaa
	strb r1, [r3]
	ldr r2, _08090FE4 @ =0x0E002AAA
	movs r1, #0x55
	strb r1, [r2]
	movs r1, #0xb0
	strb r1, [r3]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	strb r0, [r1]
	bx lr
	.align 2, 0
_08090FE0: .4byte 0x0E005555
_08090FE4: .4byte 0x0E002AAA

	thumb_func_start sub_08090FE8
sub_08090FE8: @ 0x08090FE8
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl sub_080911D8
	mov r5, sp
	adds r5, #1
	ldr r2, _08091010 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08091014 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0x90
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _08091018 @ =0x00004E20
	adds r0, r2, #0
	b _08091020
	.align 2, 0
_08091010: .4byte 0x0E005555
_08091014: .4byte 0x0E002AAA
_08091018: .4byte 0x00004E20
_0809101C:
	ldrh r0, [r1]
	subs r0, #1
_08091020:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0809101C
	ldr r0, _0809105C @ =0x0E000001
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r1, _08091060 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r1]
	ldr r2, _08091064 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r2]
	movs r0, #0xf0
	strb r0, [r1]
	strb r0, [r1]
	add r1, sp, #0x40
	ldr r2, _08091068 @ =0x00004E20
	adds r0, r2, #0
	b _08091070
	.align 2, 0
_0809105C: .4byte 0x0E000001
_08091060: .4byte 0x0E005555
_08091064: .4byte 0x0E002AAA
_08091068: .4byte 0x00004E20
_0809106C:
	ldrh r0, [r1]
	subs r0, #1
_08091070:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0809106C
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08091084
sub_08091084: @ 0x08091084
	push {lr}
	ldr r1, _080910A4 @ =gUnknown_02015F22
	ldrh r0, [r1]
	cmp r0, #0
	beq _080910A0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080910A0
	ldr r1, _080910A8 @ =gUnknown_02015E10
	movs r0, #1
	strb r0, [r1]
_080910A0:
	pop {r0}
	bx r0
	.align 2, 0
_080910A4: .4byte gUnknown_02015F22
_080910A8: .4byte gUnknown_02015E10

	thumb_func_start sub_080910AC
sub_080910AC: @ 0x080910AC
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _080910E0
	ldr r0, _080910D0 @ =gUnknown_02015F20
	strb r1, [r0]
	ldr r1, _080910D4 @ =gUnknown_02015F24
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _080910D8 @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _080910DC @ =sub_08091084
	str r0, [r2]
	movs r0, #0
	b _080910E2
	.align 2, 0
_080910D0: .4byte gUnknown_02015F20
_080910D4: .4byte gUnknown_02015F24
_080910D8: .4byte 0x04000100
_080910DC: .4byte sub_08091084
_080910E0:
	movs r0, #1
_080910E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080910E8
sub_080910E8: @ 0x080910E8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0809116C @ =gUnknown_02015E30
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _08091170 @ =gUnknown_02015F28
	ldr r0, _08091174 @ =0x04000208
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _08091178 @ =gUnknown_02015F24
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _0809117C @ =0x04000200
	ldr r1, _08091180 @ =gUnknown_02015F20
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _08091184 @ =gUnknown_02015E10
	strb r3, [r0]
	ldr r1, _08091188 @ =gUnknown_02015F22
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _0809118C @ =0x04000202
	mov r2, sl
	ldrb r0, [r2]
	lsls r5, r0
	strh r5, [r1]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809116C: .4byte gUnknown_02015E30
_08091170: .4byte gUnknown_02015F28
_08091174: .4byte 0x04000208
_08091178: .4byte gUnknown_02015F24
_0809117C: .4byte 0x04000200
_08091180: .4byte gUnknown_02015F20
_08091184: .4byte gUnknown_02015E10
_08091188: .4byte gUnknown_02015F22
_0809118C: .4byte 0x04000202

	thumb_func_start sub_08091190
sub_08091190: @ 0x08091190
	ldr r3, _080911C0 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080911C4 @ =gUnknown_02015F24
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _080911C8 @ =0x04000200
	ldr r0, _080911CC @ =gUnknown_02015F20
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080911D0 @ =gUnknown_02015F28
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_080911C0: .4byte 0x04000208
_080911C4: .4byte gUnknown_02015F24
_080911C8: .4byte 0x04000200
_080911CC: .4byte gUnknown_02015F20
_080911D0: .4byte gUnknown_02015F28

	thumb_func_start sub_080911D4
sub_080911D4: @ 0x080911D4
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_080911D8
sub_080911D8: @ 0x080911D8
	push {lr}
	adds r2, r0, #0
	ldr r1, _080911F4 @ =gUnknown_02015E14
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _080911F8 @ =sub_080911D4
	movs r0, #1
	bics r3, r0
	ldr r0, _080911FC @ =sub_080911D8
	ldr r1, _080911F8 @ =sub_080911D4
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0809120C
	.align 2, 0
_080911F4: .4byte gUnknown_02015E14
_080911F8: .4byte sub_080911D4
_080911FC: .4byte sub_080911D8
_08091200:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_0809120C:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08091200
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08091218
sub_08091218: @ 0x08091218
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _08091234
	movs r2, #1
	rsbs r2, r2, #0
_08091226:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _08091226
_08091234:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809123C
sub_0809123C: @ 0x0809123C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08091288 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0809128C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08091290 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _08091274
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08090FC4
	movs r0, #0xf
	ands r4, r0
_08091274:
	ldr r3, _08091294 @ =sub_08091218
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _08091298 @ =sub_0809123C
	ldr r1, _08091294 @ =sub_08091218
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080912A8
	.align 2, 0
_08091288: .4byte 0x04000204
_0809128C: .4byte 0x0000FFFC
_08091290: .4byte gUnknown_02015E20
_08091294: .4byte sub_08091218
_08091298: .4byte sub_0809123C
_0809129C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080912A8:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0809129C
	mov r3, sp
	adds r3, #1
	ldr r0, _080912D4 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080912D4: .4byte gUnknown_02015E20

	thumb_func_start sub_080912D8
sub_080912D8: @ 0x080912D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _080912FE
	movs r2, #1
	rsbs r2, r2, #0
_080912E8:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _080912F8
	subs r0, r3, #1
	b _08091300
_080912F8:
	subs r4, #1
	cmp r4, r2
	bne _080912E8
_080912FE:
	movs r0, #0
_08091300:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08091308
sub_08091308: @ 0x08091308
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08091350 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08091354 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08091358 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _0809133C
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08090FC4
	movs r0, #0xf
	ands r4, r0
_0809133C:
	ldr r3, _0809135C @ =sub_080912D8
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _08091360 @ =sub_08091308
	ldr r1, _0809135C @ =sub_080912D8
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08091370
	.align 2, 0
_08091350: .4byte 0x04000204
_08091354: .4byte 0x0000FFFC
_08091358: .4byte gUnknown_02015E20
_0809135C: .4byte sub_080912D8
_08091360: .4byte sub_08091308
_08091364:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08091370:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08091364
	mov r3, sp
	adds r3, #1
	ldr r0, _0809139C @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809139C: .4byte gUnknown_02015E20

	thumb_func_start sub_080913A0
sub_080913A0: @ 0x080913A0
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _080913E8 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080913C8
	lsrs r0, r2, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08090FC4
	movs r0, #0xf
	ands r4, r0
_080913C8:
	ldr r2, _080913EC @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080913F0 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080913F4 @ =sub_080912D8
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080913F8 @ =sub_08091308
	ldr r1, _080913F4 @ =sub_080912D8
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08091408
	.align 2, 0
_080913E8: .4byte gUnknown_02015E20
_080913EC: .4byte 0x04000204
_080913F0: .4byte 0x0000FFFC
_080913F4: .4byte sub_080912D8
_080913F8: .4byte sub_08091308
_080913FC:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08091408:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080913FC
	mov r3, sp
	adds r3, #1
	ldr r0, _08091434 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08091434: .4byte gUnknown_02015E20

	thumb_func_start sub_08091438
sub_08091438: @ 0x08091438
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0809144A
_08091444:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0809144A:
	cmp r6, #2
	bhi _08091470
	ldr r0, _08091478 @ =gUnknown_02015E1C
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08091444
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08091308
	adds r2, r0, #0
	cmp r2, #0
	bne _08091444
_08091470:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08091478: .4byte gUnknown_02015E1C

	thumb_func_start sub_0809147C
sub_0809147C: @ 0x0809147C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08091490
_0809148A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08091490:
	cmp r6, #2
	bhi _080914B8
	ldr r0, _080914C0 @ =gUnknown_02015E1C
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0809148A
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080913A0
	adds r3, r0, #0
	cmp r3, #0
	bne _0809148A
_080914B8:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080914C0: .4byte gUnknown_02015E1C

	thumb_func_start sub_080914C4
sub_080914C4: @ 0x080914C4
	push {r4, lr}
	ldr r2, _080914E4 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080914E8 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bl sub_08090FE8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _080914EC @ =gUnknown_08CDB134
	movs r4, #1
	b _080914F2
	.align 2, 0
_080914E4: .4byte 0x04000204
_080914E8: .4byte 0x0000FFFC
_080914EC: .4byte gUnknown_08CDB134
_080914F0:
	adds r2, #4
_080914F2:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08091506
	ldrh r0, [r1, #0x28]
	cmp r3, r0
	bne _080914F0
	movs r4, #0
_08091506:
	ldr r1, _08091540 @ =gUnknown_02015E1C
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08091544 @ =gUnknown_02015E28
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r1, _08091548 @ =gUnknown_02015E2C
	ldr r0, [r2]
	ldr r0, [r0, #8]
	str r0, [r1]
	ldr r1, _0809154C @ =gUnknown_02015E18
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r1]
	ldr r1, _08091550 @ =gUnknown_02015E30
	ldr r0, [r2]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r1, _08091554 @ =gUnknown_02015E20
	ldr r0, [r2]
	adds r0, #0x14
	str r0, [r1]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08091540: .4byte gUnknown_02015E1C
_08091544: .4byte gUnknown_02015E28
_08091548: .4byte gUnknown_02015E2C
_0809154C: .4byte gUnknown_02015E18
_08091550: .4byte gUnknown_02015E30
_08091554: .4byte gUnknown_02015E20

	thumb_func_start sub_08091558
sub_08091558: @ 0x08091558
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl sub_080910E8
	ldr r7, _08091580 @ =gUnknown_02015E14
	movs r0, #0xc0
	lsls r0, r0, #8
	orrs r4, r0
	lsls r4, r4, #0x10
	b _080915A4
	.align 2, 0
_08091580: .4byte gUnknown_02015E14
_08091584:
	ldr r0, _0809159C @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0xc2
	bne _08091594
	ldr r1, _080915A0 @ =0x0E005555
	movs r0, #0xf0
	strb r0, [r1]
_08091594:
	lsrs r4, r4, #0x10
	mov r8, r4
	b _080915CC
	.align 2, 0
_0809159C: .4byte gUnknown_02015E20
_080915A0: .4byte 0x0E005555
_080915A4:
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _080915CC
	ldr r0, _080915DC @ =gUnknown_02015E10
	ldrb r0, [r0]
	cmp r0, #0
	beq _080915A4
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08091584
_080915CC:
	bl sub_08091190
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080915DC: .4byte gUnknown_02015E10

	thumb_func_start sub_080915E0
sub_080915E0: @ 0x080915E0
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _0809163C @ =0x04000204
	ldrh r1, [r5]
	ldr r6, _08091640 @ =0x0000FFFC
	ands r1, r6
	ldr r0, _08091644 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrh r0, [r0, #0x10]
	orrs r1, r0
	strh r1, [r5]
	ldr r1, _08091648 @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _0809164C @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	bl sub_080911D8
	ldr r0, _08091650 @ =gUnknown_02015E18
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809163C: .4byte 0x04000204
_08091640: .4byte 0x0000FFFC
_08091644: .4byte gUnknown_02015E20
_08091648: .4byte 0x0E005555
_0809164C: .4byte 0x0E002AAA
_08091650: .4byte gUnknown_02015E18

	thumb_func_start sub_08091654
sub_08091654: @ 0x08091654
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bhi _080916DC
	ldr r6, _080916C4 @ =0x04000204
	ldrh r1, [r6]
	ldr r0, _080916C8 @ =0x0000FFFC
	mov r8, r0
	ands r1, r0
	ldr r0, _080916CC @ =gUnknown_02015E20
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r6]
	ldrb r4, [r2, #8]
	lsls r3, r4
	adds r4, r3, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r4, r4, r2
	ldr r1, _080916D0 @ =0x0E005555
	movs r5, #0xaa
	strb r5, [r1]
	ldr r3, _080916D4 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	movs r0, #0x30
	strb r0, [r4]
	mov r0, sp
	bl sub_080911D8
	ldr r0, _080916D8 @ =gUnknown_02015E18
	ldr r3, [r0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, r8
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strh r1, [r6]
	b _080916DE
	.align 2, 0
_080916C4: .4byte 0x04000204
_080916C8: .4byte 0x0000FFFC
_080916CC: .4byte gUnknown_02015E20
_080916D0: .4byte 0x0E005555
_080916D4: .4byte 0x0E002AAA
_080916D8: .4byte gUnknown_02015E18
_080916DC:
	ldr r0, _080916EC @ =0x000080FF
_080916DE:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080916EC: .4byte 0x000080FF

	thumb_func_start sub_080916F0
sub_080916F0: @ 0x080916F0
	push {r4, lr}
	ldr r4, _0809171C @ =0x0E005555
	movs r2, #0xaa
	strb r2, [r4]
	ldr r3, _08091720 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r2, #0xa0
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _08091724 @ =gUnknown_02015E18
	ldrb r2, [r0]
	ldr r3, [r3]
	movs r0, #1
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809171C: .4byte 0x0E005555
_08091720: .4byte 0x0E002AAA
_08091724: .4byte gUnknown_02015E18

	thumb_func_start sub_08091728
sub_08091728: @ 0x08091728
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _08091748
	ldr r0, _08091744 @ =0x000080FF
	b _08091836
	.align 2, 0
_08091744: .4byte 0x000080FF
_08091748:
	ldr r0, _08091768 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsls r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r7, r7, r0
	ldr r1, _0809176C @ =sub_0809184C
	movs r0, #1
	adds r3, r1, #0
	bics r3, r0
	mov r2, sp
	ldr r0, _08091770 @ =sub_08091870
	subs r0, r0, r1
	b _0809177E
	.align 2, 0
_08091768: .4byte gUnknown_02015E20
_0809176C: .4byte sub_0809184C
_08091770: .4byte sub_08091870
_08091774:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #2
_0809177E:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08091774
	movs r4, #0
	b _08091794
_0809178A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	beq _08091834
_08091794:
	mov r0, r8
	bl sub_08091654
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0809178A
	adds r0, r7, #0
	mov r1, sp
	adds r1, #1
	bl sub_08091870
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0809178A
	movs r6, #1
	cmp r4, #0
	beq _080917BC
	movs r6, #6
_080917BC:
	movs r4, #1
	cmp r4, r6
	bhi _080917D2
_080917C2:
	mov r0, r8
	bl sub_08091654
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _080917C2
_080917D2:
	mov r0, sp
	bl sub_080911D8
	ldr r3, _080917F4 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _080917F8 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080917FC @ =gUnknown_02015E20
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _08091800 @ =gUnknown_02015E24
	ldr r0, [r2, #4]
	strh r0, [r1]
	adds r4, r1, #0
	b _08091810
	.align 2, 0
_080917F4: .4byte 0x04000204
_080917F8: .4byte 0x0000FFFC
_080917FC: .4byte gUnknown_02015E20
_08091800: .4byte gUnknown_02015E24
_08091804:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r0, #1
	add sb, r0
	adds r7, #1
_08091810:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08091826
	mov r0, sb
	adds r1, r7, #0
	bl sub_080916F0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08091804
_08091826:
	ldr r2, _08091844 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08091848 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08091834:
	adds r0, r5, #0
_08091836:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08091844: .4byte 0x04000204
_08091848: .4byte 0x0000FFFC

	thumb_func_start sub_0809184C
sub_0809184C: @ 0x0809184C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08091858 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldr r1, [r0, #4]
	b _0809185E
	.align 2, 0
_08091858: .4byte gUnknown_02015E20
_0809185C:
	subs r1, #1
_0809185E:
	cmp r1, #0
	beq _0809186A
	ldrb r0, [r2]
	adds r2, #1
	cmp r0, #0xff
	beq _0809185C
_0809186A:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08091870
sub_08091870: @ 0x08091870
	push {lr}
	bl _call_via_r1
	cmp r0, #0
	bne _0809187E
	movs r0, #0
	b _08091880
_0809187E:
	ldr r0, _08091884 @ =0x00008004
_08091880:
	pop {r1}
	bx r1
	.align 2, 0
_08091884: .4byte 0x00008004

	thumb_func_start sub_08091888
sub_08091888: @ 0x08091888
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080918A0 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	blo _080918A8
	ldr r0, _080918A4 @ =0x000080FF
	b _08091924
	.align 2, 0
_080918A0: .4byte gUnknown_02015E20
_080918A4: .4byte 0x000080FF
_080918A8:
	adds r0, r4, #0
	bl sub_08091654
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08091922
	mov r0, sp
	bl sub_080911D8
	ldr r3, _080918E4 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _080918E8 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080918EC @ =gUnknown_02015E20
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _080918F0 @ =gUnknown_02015E24
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _080918FE
	.align 2, 0
_080918E4: .4byte 0x04000204
_080918E8: .4byte 0x0000FFFC
_080918EC: .4byte gUnknown_02015E20
_080918F0: .4byte gUnknown_02015E24
_080918F4:
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r7, #1
	adds r4, #1
_080918FE:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08091914
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080916F0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080918F4
_08091914:
	ldr r2, _0809192C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08091930 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08091922:
	adds r0, r5, #0
_08091924:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809192C: .4byte 0x04000204
_08091930: .4byte 0x0000FFFC

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x08091934
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x08091938
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x0809193C
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x08091940
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x08091944
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x08091948
	bx r5
	nop

	thumb_func_start sub_0809194C
sub_0809194C: @ 0x0809194C
	bx r6
	nop

	thumb_func_start sub_08091950
sub_08091950: @ 0x08091950
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x08091954
	bx r8
	nop

	thumb_func_start sub_08091958
sub_08091958: @ 0x08091958
	bx sb
	nop

	thumb_func_start sub_0809195C
sub_0809195C: @ 0x0809195C
	bx sl
	nop

	thumb_func_start sub_08091960
sub_08091960: @ 0x08091960
	bx fp
	nop

	thumb_func_start sub_08091964
sub_08091964: @ 0x08091964
	bx ip
	nop

	thumb_func_start sub_08091968
sub_08091968: @ 0x08091968
	bx sp
	nop

	thumb_func_start sub_0809196C
sub_0809196C: @ 0x0809196C
	bx lr
	nop

	thumb_func_start __divsi3
__divsi3: @ 0x08091970
	cmp r1, #0
	beq _080919F8
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08091986
	rsbs r1, r1, #0
_08091986:
	cmp r0, #0
	bpl _0809198C
	rsbs r0, r0, #0
_0809198C:
	cmp r0, r1
	blo _080919EA
	movs r4, #1
	lsls r4, r4, #0x1c
_08091994:
	cmp r1, r4
	bhs _080919A2
	cmp r1, r0
	bhs _080919A2
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08091994
_080919A2:
	lsls r4, r4, #3
_080919A4:
	cmp r1, r4
	bhs _080919B2
	cmp r1, r0
	bhs _080919B2
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080919A4
_080919B2:
	cmp r0, r1
	blo _080919BA
	subs r0, r0, r1
	orrs r2, r3
_080919BA:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080919C6
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080919C6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080919D2
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080919D2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080919DE
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080919DE:
	cmp r0, #0
	beq _080919EA
	lsrs r3, r3, #4
	beq _080919EA
	lsrs r1, r1, #4
	b _080919B2
_080919EA:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _080919F4
	rsbs r0, r0, #0
_080919F4:
	pop {r4}
	mov pc, lr
_080919F8:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_14
nullsub_14: @ 0x08091A04
	mov pc, lr
	.align 2, 0

	thumb_func_start __modsi3
__modsi3: @ 0x08091A08
	movs r3, #1
	cmp r1, #0
	beq _08091ACC
	bpl _08091A12
	rsbs r1, r1, #0
_08091A12:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _08091A1C
	rsbs r0, r0, #0
_08091A1C:
	cmp r0, r1
	blo _08091AC0
	movs r4, #1
	lsls r4, r4, #0x1c
_08091A24:
	cmp r1, r4
	bhs _08091A32
	cmp r1, r0
	bhs _08091A32
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08091A24
_08091A32:
	lsls r4, r4, #3
_08091A34:
	cmp r1, r4
	bhs _08091A42
	cmp r1, r0
	bhs _08091A42
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08091A34
_08091A42:
	movs r2, #0
	cmp r0, r1
	blo _08091A4A
	subs r0, r0, r1
_08091A4A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08091A5C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091A5C:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08091A6E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091A6E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08091A80
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091A80:
	mov ip, r3
	cmp r0, #0
	beq _08091A8E
	lsrs r3, r3, #4
	beq _08091A8E
	lsrs r1, r1, #4
	b _08091A42
_08091A8E:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _08091AC0
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08091AA4
	lsrs r4, r1, #3
	adds r0, r0, r4
_08091AA4:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08091AB2
	lsrs r4, r1, #2
	adds r0, r0, r4
_08091AB2:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08091AC0
	lsrs r4, r1, #1
	adds r0, r0, r4
_08091AC0:
	pop {r4}
	cmp r4, #0
	bpl _08091AC8
	rsbs r0, r0, #0
_08091AC8:
	pop {r4}
	mov pc, lr
_08091ACC:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08091AD8
sub_08091AD8: @ 0x08091AD8
	push {lr}
	bl __terminate
	pop {pc}

	thumb_func_start __udivsi3
__udivsi3: @ 0x08091AE0
	cmp r1, #0
	beq _08091B4E
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08091B48
	movs r4, #1
	lsls r4, r4, #0x1c
_08091AF2:
	cmp r1, r4
	bhs _08091B00
	cmp r1, r0
	bhs _08091B00
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08091AF2
_08091B00:
	lsls r4, r4, #3
_08091B02:
	cmp r1, r4
	bhs _08091B10
	cmp r1, r0
	bhs _08091B10
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08091B02
_08091B10:
	cmp r0, r1
	blo _08091B18
	subs r0, r0, r1
	orrs r2, r3
_08091B18:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08091B24
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08091B24:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08091B30
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08091B30:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08091B3C
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08091B3C:
	cmp r0, #0
	beq _08091B48
	lsrs r3, r3, #4
	beq _08091B48
	lsrs r1, r1, #4
	b _08091B10
_08091B48:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08091B4E:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x08091B58
	cmp r1, #0
	beq _08091C0E
	movs r3, #1
	cmp r0, r1
	bhs _08091B64
	mov pc, lr
_08091B64:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08091B6A:
	cmp r1, r4
	bhs _08091B78
	cmp r1, r0
	bhs _08091B78
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08091B6A
_08091B78:
	lsls r4, r4, #3
_08091B7A:
	cmp r1, r4
	bhs _08091B88
	cmp r1, r0
	bhs _08091B88
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08091B7A
_08091B88:
	movs r2, #0
	cmp r0, r1
	blo _08091B90
	subs r0, r0, r1
_08091B90:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08091BA2
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091BA2:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08091BB4
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091BB4:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08091BC6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091BC6:
	mov ip, r3
	cmp r0, #0
	beq _08091BD4
	lsrs r3, r3, #4
	beq _08091BD4
	lsrs r1, r1, #4
	b _08091B88
_08091BD4:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _08091BE0
	pop {r4}
	mov pc, lr
_08091BE0:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08091BEE
	lsrs r4, r1, #3
	adds r0, r0, r4
_08091BEE:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08091BFC
	lsrs r4, r1, #2
	adds r0, r0, r4
_08091BFC:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08091C0A
	lsrs r4, r1, #1
	adds r0, r0, r4
_08091C0A:
	pop {r4}
	mov pc, lr
_08091C0E:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}

	thumb_func_start pack_d
pack_d: @ 0x08091C18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _08091C30
	movs r2, #1
_08091C30:
	cmp r2, #0
	beq _08091C50
	ldr r6, _08091C44 @ =0x000007FF
	ldr r2, _08091C48 @ =0x00000000
	ldr r3, _08091C4C @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _08091D08
	.align 2, 0
_08091C44: .4byte 0x000007FF
_08091C48: .4byte 0x00000000
_08091C4C: .4byte 0x00080000
_08091C50:
	movs r2, #0
	cmp r0, #4
	bne _08091C58
	movs r2, #1
_08091C58:
	cmp r2, #0
	bne _08091CA4
	movs r2, #0
	cmp r0, #2
	bne _08091C64
	movs r2, #1
_08091C64:
	cmp r2, #0
	beq _08091C6E
	movs r4, #0
	movs r5, #0
	b _08091D0C
_08091C6E:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08091D0C
	ldr r2, [r1, #8]
	ldr r0, _08091C8C @ =0xFFFFFC02
	cmp r2, r0
	bge _08091C9E
	subs r2, r0, r2
	cmp r2, #0x38
	ble _08091C90
	movs r4, #0
	movs r5, #0
	b _08091CFE
	.align 2, 0
_08091C8C: .4byte 0xFFFFFC02
_08091C90:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _08091CFE
_08091C9E:
	ldr r0, _08091CAC @ =0x000003FF
	cmp r2, r0
	ble _08091CB4
_08091CA4:
	ldr r6, _08091CB0 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _08091D0C
	.align 2, 0
_08091CAC: .4byte 0x000003FF
_08091CB0: .4byte 0x000007FF
_08091CB4:
	ldr r0, _08091CDC @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08091CE0
	cmp r2, #0
	bne _08091CE0
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _08091CE8
	movs r0, #0x80
	movs r1, #0
	b _08091CE4
	.align 2, 0
_08091CDC: .4byte 0x000003FF
_08091CE0:
	movs r0, #0x7f
	movs r1, #0
_08091CE4:
	adds r4, r4, r0
	adcs r5, r1
_08091CE8:
	ldr r0, _08091D4C @ =0x1FFFFFFF
	cmp r5, r0
	bls _08091CFE
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_08091CFE:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_08091D08:
	adds r5, r1, #0
	adds r4, r0, #0
_08091D0C:
	str r4, [sp]
	ldr r2, _08091D50 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _08091D54 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _08091D58 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _08091D5C @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08091D4C: .4byte 0x1FFFFFFF
_08091D50: .4byte 0x000FFFFF
_08091D54: .4byte 0xFFF00000
_08091D58: .4byte 0x000007FF
_08091D5C: .4byte 0xFFFF800F

	thumb_func_start unpack_d
unpack_d: @ 0x08091D60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _08091DD4
	orrs r1, r5
	cmp r1, #0
	bne _08091D94
	movs r0, #2
	str r0, [r6]
	b _08091E28
_08091D94:
	ldr r0, _08091DCC @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _08091DD0 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08091E04
	adds r7, r0, #0
_08091DB2:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _08091DB2
	b _08091E04
	.align 2, 0
_08091DCC: .4byte 0xFFFFFC02
_08091DD0: .4byte 0x0FFFFFFF
_08091DD4:
	ldr r0, _08091DE8 @ =0x000007FF
	cmp r3, r0
	bne _08091E0A
	orrs r1, r5
	cmp r1, #0
	bne _08091DEC
	movs r0, #4
	str r0, [r6]
	b _08091E28
	.align 2, 0
_08091DE8: .4byte 0x000007FF
_08091DEC:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _08091E02
	movs r0, #1
	str r0, [r6]
	b _08091E04
_08091E02:
	str r1, [r6]
_08091E04:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _08091E28
_08091E0A:
	ldr r1, _08091E2C @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _08091E30 @ =0x00000000
	ldr r3, _08091E34 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_08091E28:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08091E2C: .4byte 0xFFFFFC01
_08091E30: .4byte 0x00000000
_08091E34: .4byte 0x10000000

	thumb_func_start sub_08091E38
sub_08091E38: @ 0x08091E38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _08091E54
	movs r0, #1
_08091E54:
	cmp r0, #0
	beq _08091E5C
_08091E58:
	adds r0, r3, #0
	b _08092094
_08091E5C:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _08091E66
	movs r1, #1
_08091E66:
	cmp r1, #0
	bne _08091EDE
	movs r1, #0
	cmp r2, #4
	bne _08091E72
	movs r1, #1
_08091E72:
	cmp r1, #0
	beq _08091E94
	movs r1, #0
	cmp r0, #4
	bne _08091E7E
	movs r1, #1
_08091E7E:
	cmp r1, #0
	beq _08091E58
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _08091E58
	ldr r0, _08091E90 @ =gUnknown_02015F30
	b _08092094
	.align 2, 0
_08091E90: .4byte gUnknown_02015F30
_08091E94:
	movs r1, #0
	cmp r0, #4
	bne _08091E9C
	movs r1, #1
_08091E9C:
	cmp r1, #0
	bne _08091EDE
	movs r1, #0
	cmp r0, #2
	bne _08091EA8
	movs r1, #1
_08091EA8:
	cmp r1, #0
	beq _08091ED0
	movs r0, #0
	cmp r2, #2
	bne _08091EB4
	movs r0, #1
_08091EB4:
	cmp r0, #0
	beq _08091E58
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _08092092
_08091ED0:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _08091EDA
	movs r1, #1
_08091EDA:
	cmp r1, #0
	beq _08091EE2
_08091EDE:
	adds r0, r4, #0
	b _08092094
_08091EE2:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _08091F02
	rsbs r0, r0, #0
_08091F02:
	cmp r0, #0x3f
	bgt _08091F80
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _08091F4C
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_08091F1A:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _08091F1A
	mov r8, sb
_08091F4C:
	cmp r8, sb
	ble _08091F9C
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_08091F58:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _08091F58
	mov sb, r8
	b _08091F9C
_08091F80:
	cmp sb, r8
	ble _08091F8E
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _08091F94
_08091F8E:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_08091F94:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_08091F9C:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _08092044
	mov r2, ip
	cmp r2, #0
	beq _08091FBE
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_08093680
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _08091FCA
_08091FBE:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_08091FCA:
	cmp r3, #0
	blt _08091FE0
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _08091FF8
_08091FE0:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_08093680
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08091FF8:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_08092004:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _08092040 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _0809205C
	cmp r3, r0
	bne _0809201A
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _0809205C
_0809201A:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _08092004
	.align 2, 0
_08092040: .4byte 0x0FFFFFFF
_08092044:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_0809205C:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _080920A0 @ =0x1FFFFFFF
	cmp r1, r0
	bls _08092092
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_08092092:
	mov r0, sl
_08092094:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080920A0: .4byte 0x1FFFFFFF

	thumb_func_start __adddf3
__adddf3: @ 0x080920A4
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_08091E38
	bl pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __subdf3
__subdf3: @ 0x080920D4
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_08091E38
	bl pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __muldf3
__muldf3: @ 0x0809210C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _08092142
	movs r0, #1
_08092142:
	cmp r0, #0
	bne _080921A6
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08092150
	movs r2, #1
_08092150:
	cmp r2, #0
	beq _08092158
	ldr r0, [sp, #4]
	b _080921C8
_08092158:
	movs r2, #0
	cmp r1, #4
	bne _08092160
	movs r2, #1
_08092160:
	cmp r2, #0
	beq _08092172
	movs r1, #0
	cmp r0, #2
	bne _0809216C
	movs r1, #1
_0809216C:
	cmp r1, #0
	bne _0809218A
	b _080921A6
_08092172:
	movs r2, #0
	cmp r0, #4
	bne _0809217A
	movs r2, #1
_0809217A:
	cmp r2, #0
	beq _0809219A
	movs r0, #0
	cmp r1, #2
	bne _08092186
	movs r0, #1
_08092186:
	cmp r0, #0
	beq _08092194
_0809218A:
	ldr r0, _08092190 @ =gUnknown_02015F30
	b _08092392
	.align 2, 0
_08092190: .4byte gUnknown_02015F30
_08092194:
	mov r1, r8
	ldr r0, [r1, #4]
	b _080921C8
_0809219A:
	movs r2, #0
	cmp r1, #2
	bne _080921A2
	movs r2, #1
_080921A2:
	cmp r2, #0
	beq _080921B8
_080921A6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _08092392
_080921B8:
	movs r1, #0
	cmp r0, #2
	bne _080921C0
	movs r1, #1
_080921C0:
	cmp r1, #0
	beq _080921D8
	mov r2, r8
	ldr r0, [r2, #4]
_080921C8:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _08092392
_080921D8:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08093610
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08093610
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_08093610
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_08093610
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _08092250
	cmp r7, r3
	bne _08092258
	cmp r6, r2
	bls _08092258
_08092250:
	ldr r5, _080923A8 @ =0x00000001
	ldr r4, _080923A4 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08092258:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _08092274
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _08092284
	cmp r0, r6
	bls _08092284
_08092274:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08092284:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _080923AC @ =0x1FFFFFFF
	cmp r5, r0
	bls _08092306
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_080922CA:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _080922F0
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_080922F0:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _080922CA
	mov r0, ip
	str r0, [sp, #0x30]
_08092306:
	ldr r0, _080923B0 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08092358
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_08092318:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _08092342
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_08092342:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _08092318
	mov r1, ip
	str r1, [sp, #0x30]
_08092358:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08092386
	cmp r2, #0
	bne _08092386
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0809237E
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _08092386
_0809237E:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_08092386:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_08092392:
	bl pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080923A4: .4byte 0x00000000
_080923A8: .4byte 0x00000001
_080923AC: .4byte 0x1FFFFFFF
_080923B0: .4byte 0x0FFFFFFF

	thumb_func_start __divdf3
__divdf3: @ 0x080923B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080923DE
	movs r0, #1
_080923DE:
	cmp r0, #0
	beq _080923E6
	mov r1, sp
	b _08092528
_080923E6:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _080923F2
	movs r0, #1
_080923F2:
	cmp r0, #0
	beq _080923FA
	adds r1, r4, #0
	b _08092528
_080923FA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0809240A
	movs r0, #1
_0809240A:
	cmp r0, #0
	bne _0809241A
	movs r4, #0
	cmp r3, #2
	bne _08092416
	movs r4, #1
_08092416:
	cmp r4, #0
	beq _0809242C
_0809241A:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _08092424
	b _08092528
_08092424:
	ldr r1, _08092428 @ =gUnknown_02015F30
	b _08092528
	.align 2, 0
_08092428: .4byte gUnknown_02015F30
_0809242C:
	movs r0, #0
	cmp r2, #4
	bne _08092434
	movs r0, #1
_08092434:
	cmp r0, #0
	beq _08092446
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _08092528
_08092446:
	movs r0, #0
	cmp r2, #2
	bne _0809244E
	movs r0, #1
_0809244E:
	cmp r0, #0
	beq _0809245A
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _08092526
_0809245A:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0809247E
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _08092492
	cmp r0, r4
	bls _08092492
_0809247E:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_08092492:
	ldr r7, _08092538 @ =0x10000000
	ldr r6, _08092534 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0809249E:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080924C2
	cmp r1, r5
	bne _080924AE
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _080924C2
_080924AE:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_080924C2:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _0809249E
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0809251C
	cmp r2, #0
	bne _0809251C
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0809250C
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0809251C
_0809250C:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_0809251C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08092526:
	mov r1, ip
_08092528:
	adds r0, r1, #0
	bl pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08092534: .4byte 0x00000000
_08092538: .4byte 0x10000000

	thumb_func_start sub_0809253C
sub_0809253C: @ 0x0809253C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _0809254C
	movs r0, #1
_0809254C:
	cmp r0, #0
	bne _0809255E
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0809255A
	movs r0, #1
_0809255A:
	cmp r0, #0
	beq _08092562
_0809255E:
	movs r0, #1
	b _08092638
_08092562:
	movs r0, #0
	cmp r1, #4
	bne _0809256A
	movs r0, #1
_0809256A:
	cmp r0, #0
	beq _08092582
	movs r0, #0
	cmp r2, #4
	bne _08092576
	movs r0, #1
_08092576:
	cmp r0, #0
	beq _08092582
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _08092638
_08092582:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _0809258C
	movs r1, #1
_0809258C:
	cmp r1, #0
	bne _080925DA
	movs r1, #0
	cmp r2, #4
	bne _08092598
	movs r1, #1
_08092598:
	cmp r1, #0
	beq _080925AA
_0809259C:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080925E4
	movs r1, #1
	b _080925E4
_080925AA:
	movs r1, #0
	cmp r0, #2
	bne _080925B2
	movs r1, #1
_080925B2:
	cmp r1, #0
	beq _080925C2
	movs r1, #0
	cmp r2, #2
	bne _080925BE
	movs r1, #1
_080925BE:
	cmp r1, #0
	bne _08092636
_080925C2:
	movs r1, #0
	cmp r0, #2
	bne _080925CA
	movs r1, #1
_080925CA:
	cmp r1, #0
	bne _0809259C
	movs r0, #0
	cmp r2, #2
	bne _080925D6
	movs r0, #1
_080925D6:
	cmp r0, #0
	beq _080925E8
_080925DA:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _080925E4
	subs r1, #2
_080925E4:
	adds r0, r1, #0
	b _08092638
_080925E8:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _080925FA
_080925F0:
	movs r0, #1
	cmp r4, #0
	beq _08092638
	subs r0, #2
	b _08092638
_080925FA:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _080925F0
	cmp r1, r0
	bge _08092612
_08092606:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _08092638
	movs r0, #1
	b _08092638
_08092612:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _080925F0
	cmp r3, r2
	bne _08092626
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _080925F0
_08092626:
	cmp r2, r3
	bhi _08092606
	cmp r2, r3
	bne _08092636
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _08092606
_08092636:
	movs r0, #0
_08092638:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809263C
sub_0809263C: @ 0x0809263C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqdf2
__eqdf2: @ 0x08092668
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08092690
	movs r1, #1
_08092690:
	cmp r1, #0
	bne _080926A2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0809269E
	movs r1, #1
_0809269E:
	cmp r1, #0
	beq _080926A6
_080926A2:
	movs r0, #1
	b _080926AE
_080926A6:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_080926AE:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nedf2
__nedf2: @ 0x080926B4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080926DC
	movs r1, #1
_080926DC:
	cmp r1, #0
	bne _080926EE
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080926EA
	movs r1, #1
_080926EA:
	cmp r1, #0
	beq _080926F2
_080926EE:
	movs r0, #1
	b _080926FA
_080926F2:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_080926FA:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtdf2
__gtdf2: @ 0x08092700
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08092728
	movs r1, #1
_08092728:
	cmp r1, #0
	bne _0809273A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08092736
	movs r1, #1
_08092736:
	cmp r1, #0
	beq _08092740
_0809273A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08092748
_08092740:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_08092748:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_0809274C
sub_0809274C: @ 0x0809274C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08092774
	movs r1, #1
_08092774:
	cmp r1, #0
	bne _08092786
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08092782
	movs r1, #1
_08092782:
	cmp r1, #0
	beq _0809278C
_08092786:
	movs r0, #1
	rsbs r0, r0, #0
	b _08092794
_0809278C:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_08092794:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __ltdf2
__ltdf2: @ 0x08092798
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080927C0
	movs r1, #1
_080927C0:
	cmp r1, #0
	bne _080927D2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080927CE
	movs r1, #1
_080927CE:
	cmp r1, #0
	beq _080927D6
_080927D2:
	movs r0, #1
	b _080927DE
_080927D6:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_080927DE:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __ledf2
__ledf2: @ 0x080927E4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0809280C
	movs r1, #1
_0809280C:
	cmp r1, #0
	bne _0809281E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0809281A
	movs r1, #1
_0809281A:
	cmp r1, #0
	beq _08092822
_0809281E:
	movs r0, #1
	b _0809282A
_08092822:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_0809282A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsidf
__floatsidf: @ 0x08092830
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _08092848
	movs r0, #2
	str r0, [sp]
	b _0809289E
_08092848:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0809286E
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _08092868
	ldr r1, _08092864 @ =0x00000000
	ldr r0, _08092860 @ =0xC1E00000
	b _080928A4
	.align 2, 0
_08092860: .4byte 0xC1E00000
_08092864: .4byte 0x00000000
_08092868:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _08092872
_0809286E:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_08092872:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _080928A8 @ =0x0FFFFFFF
	cmp r0, r1
	bhi _0809289E
	adds r5, r1, #0
	ldr r4, [sp, #8]
_08092882:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _08092882
	str r4, [sp, #8]
_0809289E:
	mov r0, sp
	bl pack_d
_080928A4:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_080928A8: .4byte 0x0FFFFFFF

	thumb_func_start __fixdfsi
__fixdfsi: @ 0x080928AC
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080928C6
	movs r1, #1
_080928C6:
	cmp r1, #0
	bne _080928FA
	movs r1, #0
	cmp r0, #1
	bhi _080928D2
	movs r1, #1
_080928D2:
	cmp r1, #0
	bne _080928FA
	movs r1, #0
	cmp r0, #4
	bne _080928DE
	movs r1, #1
_080928DE:
	cmp r1, #0
	beq _080928F4
_080928E2:
	ldr r0, [sp, #4]
	ldr r1, _080928F0 @ =0x7FFFFFFF
	cmp r0, #0
	beq _08092918
	adds r1, #1
	b _08092918
	.align 2, 0
_080928F0: .4byte 0x7FFFFFFF
_080928F4:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _080928FE
_080928FA:
	movs r0, #0
	b _0809291A
_080928FE:
	cmp r0, #0x1e
	bgt _080928E2
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08092918
	rsbs r1, r1, #0
_08092918:
	adds r0, r1, #0
_0809291A:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __negdf2
__negdf2: @ 0x08092920
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0809293A
	movs r1, #1
_0809293A:
	str r1, [sp, #4]
	mov r0, sp
	bl pack_d
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08092948
sub_08092948: @ 0x08092948
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl pack_d
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08092970
sub_08092970: @ 0x08092970
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl unpack_d
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _080929B0 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _080929A0
	movs r0, #1
	orrs r5, r0
_080929A0:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl sub_080932BC
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_080929B0: .4byte 0x3FFFFFFF

	thumb_func_start sub_080929B4
sub_080929B4: @ 0x080929B4
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _080929C6
	movs r1, #1
_080929C6:
	cmp r1, #0
	beq _080929D4
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _08092A3A
_080929D4:
	movs r1, #0
	cmp r3, #4
	bne _080929DC
	movs r1, #1
_080929DC:
	cmp r1, #0
	bne _08092A10
	movs r1, #0
	cmp r3, #2
	bne _080929E8
	movs r1, #1
_080929E8:
	cmp r1, #0
	beq _080929F0
	movs r2, #0
	b _08092A3A
_080929F0:
	cmp r2, #0
	beq _08092A3A
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _08092A0C
	subs r0, r3, r0
	cmp r0, #0x19
	ble _08092A08
	movs r2, #0
	b _08092A38
_08092A08:
	lsrs r2, r0
	b _08092A38
_08092A0C:
	cmp r0, #0x7f
	ble _08092A16
_08092A10:
	movs r5, #0xff
	movs r2, #0
	b _08092A3A
_08092A16:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _08092A2E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08092A30
	adds r2, #0x40
	b _08092A30
_08092A2E:
	adds r2, #0x3f
_08092A30:
	cmp r2, #0
	bge _08092A38
	lsrs r2, r2, #1
	adds r5, #1
_08092A38:
	lsrs r2, r2, #7
_08092A3A:
	ldr r0, _08092A5C @ =0x007FFFFF
	ands r2, r0
	ldr r0, _08092A60 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _08092A64 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _08092A68 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08092A5C: .4byte 0x007FFFFF
_08092A60: .4byte 0xFF800000
_08092A64: .4byte 0x807FFFFF
_08092A68: .4byte 0x7FFFFFFF

	thumb_func_start sub_08092A6C
sub_08092A6C: @ 0x08092A6C
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _08092AB0
	cmp r2, #0
	bne _08092A8C
	movs r0, #2
	str r0, [r3]
	b _08092AE4
_08092A8C:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _08092AAC @ =0x3FFFFFFF
	cmp r2, r1
	bhi _08092ACC
	adds r0, r4, #0
_08092AA0:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _08092AA0
	str r0, [r3, #8]
	b _08092ACC
	.align 2, 0
_08092AAC: .4byte 0x3FFFFFFF
_08092AB0:
	cmp r1, #0xff
	bne _08092AD0
	cmp r2, #0
	bne _08092ABE
	movs r0, #4
	str r0, [r3]
	b _08092AE4
_08092ABE:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08092ACA
	movs r0, #1
_08092ACA:
	str r0, [r3]
_08092ACC:
	str r2, [r3, #0xc]
	b _08092AE4
_08092AD0:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_08092AE4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08092AE8
sub_08092AE8: @ 0x08092AE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08092AFE
	movs r0, #1
_08092AFE:
	cmp r0, #0
	beq _08092B06
_08092B02:
	adds r0, r6, #0
	b _08092C5C
_08092B06:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _08092B10
	movs r1, #1
_08092B10:
	cmp r1, #0
	bne _08092B84
	movs r1, #0
	cmp r2, #4
	bne _08092B1C
	movs r1, #1
_08092B1C:
	cmp r1, #0
	beq _08092B3C
	movs r1, #0
	cmp r0, #4
	bne _08092B28
	movs r1, #1
_08092B28:
	cmp r1, #0
	beq _08092B02
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _08092B02
	ldr r0, _08092B38 @ =gUnknown_02015F48
	b _08092C5C
	.align 2, 0
_08092B38: .4byte gUnknown_02015F48
_08092B3C:
	movs r1, #0
	cmp r0, #4
	bne _08092B44
	movs r1, #1
_08092B44:
	cmp r1, #0
	bne _08092B84
	movs r1, #0
	cmp r0, #2
	bne _08092B50
	movs r1, #1
_08092B50:
	cmp r1, #0
	beq _08092B76
	movs r0, #0
	cmp r2, #2
	bne _08092B5C
	movs r0, #1
_08092B5C:
	cmp r0, #0
	beq _08092B02
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _08092C5A
_08092B76:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _08092B80
	movs r1, #1
_08092B80:
	cmp r1, #0
	beq _08092B88
_08092B84:
	adds r0, r7, #0
	b _08092C5C
_08092B88:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _08092B98
	rsbs r0, r0, #0
_08092B98:
	cmp r0, #0x1f
	bgt _08092BDC
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _08092BBE
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_08092BAC:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _08092BAC
	adds r3, r1, #0
_08092BBE:
	cmp r3, r1
	ble _08092BEE
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_08092BC8:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _08092BC8
	adds r1, r3, #0
	b _08092BEE
_08092BDC:
	cmp r1, r3
	ble _08092BE4
	movs r4, #0
	b _08092BE8
_08092BE4:
	adds r1, r3, #0
	movs r2, #0
_08092BE8:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_08092BEE:
	cmp r6, r8
	beq _08092C38
	cmp r6, #0
	beq _08092BFA
	subs r3, r4, r2
	b _08092BFC
_08092BFA:
	subs r3, r2, r4
_08092BFC:
	cmp r3, #0
	blt _08092C0A
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _08092C14
_08092C0A:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_08092C14:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _08092C34 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _08092C40
_08092C1E:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _08092C1E
	b _08092C40
	.align 2, 0
_08092C34: .4byte 0x3FFFFFFE
_08092C38:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_08092C40:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _08092C5A
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_08092C5A:
	adds r0, r5, #0
_08092C5C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08092C64
sub_08092C64: @ 0x08092C64
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092AE8
	bl sub_080929B4
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_08092C90
sub_08092C90: @ 0x08092C90
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092AE8
	bl sub_080929B4
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_08092CC4
sub_08092CC4: @ 0x08092CC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _08092CF6
	movs r0, #1
_08092CF6:
	cmp r0, #0
	bne _08092D54
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08092D04
	movs r2, #1
_08092D04:
	cmp r2, #0
	beq _08092D0C
	ldr r0, [sp, #4]
	b _08092D74
_08092D0C:
	movs r2, #0
	cmp r1, #4
	bne _08092D14
	movs r2, #1
_08092D14:
	cmp r2, #0
	beq _08092D26
	movs r1, #0
	cmp r0, #2
	bne _08092D20
	movs r1, #1
_08092D20:
	cmp r1, #0
	bne _08092D3E
	b _08092D54
_08092D26:
	movs r2, #0
	cmp r0, #4
	bne _08092D2E
	movs r2, #1
_08092D2E:
	cmp r2, #0
	beq _08092D48
	movs r0, #0
	cmp r1, #2
	bne _08092D3A
	movs r0, #1
_08092D3A:
	cmp r0, #0
	beq _08092D72
_08092D3E:
	ldr r0, _08092D44 @ =gUnknown_02015F48
	b _08092E16
	.align 2, 0
_08092D44: .4byte gUnknown_02015F48
_08092D48:
	movs r2, #0
	cmp r1, #2
	bne _08092D50
	movs r2, #1
_08092D50:
	cmp r2, #0
	beq _08092D66
_08092D54:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _08092E16
_08092D66:
	movs r1, #0
	cmp r0, #2
	bne _08092D6E
	movs r1, #1
_08092D6E:
	cmp r1, #0
	beq _08092D84
_08092D72:
	ldr r0, [r7, #4]
_08092D74:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _08092E16
_08092D84:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl sub_08093610
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _08092DD0
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_08092DBA:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08092DC8
	lsrs r6, r6, #1
	orrs r6, r1
_08092DC8:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _08092DBA
	str r4, [sp, #0x28]
_08092DD0:
	ldr r0, _08092E24 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _08092DF6
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_08092DE0:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _08092DEE
	orrs r5, r3
_08092DEE:
	lsls r6, r6, #1
	cmp r5, r2
	bls _08092DE0
	str r1, [sp, #0x28]
_08092DF6:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _08092E0C
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _08092E0A
	cmp r6, #0
	beq _08092E0C
_08092E0A:
	adds r5, #0x40
_08092E0C:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_08092E16:
	bl sub_080929B4
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08092E24: .4byte 0x3FFFFFFF

	thumb_func_start sub_08092E28
sub_08092E28: @ 0x08092E28
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl sub_08092A6C
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _08092E4E
	movs r0, #1
_08092E4E:
	cmp r0, #0
	beq _08092E56
	mov r1, sp
	b _08092F08
_08092E56:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _08092E62
	movs r0, #1
_08092E62:
	cmp r0, #0
	beq _08092E6A
	adds r1, r5, #0
	b _08092F08
_08092E6A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _08092E7A
	movs r0, #1
_08092E7A:
	cmp r0, #0
	bne _08092E8A
	movs r0, #0
	cmp r3, #2
	bne _08092E86
	movs r0, #1
_08092E86:
	cmp r0, #0
	beq _08092E9C
_08092E8A:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _08092F08
	ldr r1, _08092E98 @ =gUnknown_02015F48
	b _08092F08
	.align 2, 0
_08092E98: .4byte gUnknown_02015F48
_08092E9C:
	movs r1, #0
	cmp r2, #4
	bne _08092EA4
	movs r1, #1
_08092EA4:
	cmp r1, #0
	beq _08092EB0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _08092F08
_08092EB0:
	movs r0, #0
	cmp r2, #2
	bne _08092EB8
	movs r0, #1
_08092EB8:
	cmp r0, #0
	beq _08092EC2
	movs r0, #4
	str r0, [r4]
	b _08092F06
_08092EC2:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _08092ED8
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_08092ED8:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_08092EDE:
	cmp r2, r3
	blo _08092EE6
	orrs r1, r0
	subs r2, r2, r3
_08092EE6:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _08092EDE
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _08092F04
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08092F02
	cmp r2, #0
	beq _08092F04
_08092F02:
	adds r1, #0x40
_08092F04:
	str r1, [r4, #0xc]
_08092F06:
	adds r1, r4, #0
_08092F08:
	adds r0, r1, #0
	bl sub_080929B4
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08092F14
sub_08092F14: @ 0x08092F14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _08092F22
	movs r0, #1
_08092F22:
	cmp r0, #0
	bne _08092F34
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _08092F30
	movs r0, #1
_08092F30:
	cmp r0, #0
	beq _08092F38
_08092F34:
	movs r0, #1
	b _08092FF6
_08092F38:
	movs r0, #0
	cmp r2, #4
	bne _08092F40
	movs r0, #1
_08092F40:
	cmp r0, #0
	beq _08092F58
	movs r0, #0
	cmp r3, #4
	bne _08092F4C
	movs r0, #1
_08092F4C:
	cmp r0, #0
	beq _08092F58
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _08092FF6
_08092F58:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _08092F62
	movs r2, #1
_08092F62:
	cmp r2, #0
	bne _08092FB0
	movs r2, #0
	cmp r3, #4
	bne _08092F6E
	movs r2, #1
_08092F6E:
	cmp r2, #0
	beq _08092F80
_08092F72:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08092FBA
	movs r1, #1
	b _08092FBA
_08092F80:
	movs r2, #0
	cmp r0, #2
	bne _08092F88
	movs r2, #1
_08092F88:
	cmp r2, #0
	beq _08092F98
	movs r2, #0
	cmp r3, #2
	bne _08092F94
	movs r2, #1
_08092F94:
	cmp r2, #0
	bne _08092FF4
_08092F98:
	movs r2, #0
	cmp r0, #2
	bne _08092FA0
	movs r2, #1
_08092FA0:
	cmp r2, #0
	bne _08092F72
	movs r0, #0
	cmp r3, #2
	bne _08092FAC
	movs r0, #1
_08092FAC:
	cmp r0, #0
	beq _08092FBE
_08092FB0:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _08092FBA
	subs r1, #2
_08092FBA:
	adds r0, r1, #0
	b _08092FF6
_08092FBE:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _08092FD0
_08092FC6:
	movs r0, #1
	cmp r3, #0
	beq _08092FF6
	subs r0, #2
	b _08092FF6
_08092FD0:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _08092FC6
	cmp r2, r0
	bge _08092FE8
_08092FDC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _08092FF6
	movs r0, #1
	b _08092FF6
_08092FE8:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _08092FC6
	cmp r0, r1
	blo _08092FDC
_08092FF4:
	movs r0, #0
_08092FF6:
	pop {r4, pc}

	thumb_func_start sub_08092FF8
sub_08092FF8: @ 0x08092FF8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093020
sub_08093020: @ 0x08093020
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08093044
	movs r1, #1
_08093044:
	cmp r1, #0
	bne _08093056
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08093052
	movs r1, #1
_08093052:
	cmp r1, #0
	beq _0809305A
_08093056:
	movs r0, #1
	b _08093062
_0809305A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_08093062:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093068
sub_08093068: @ 0x08093068
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0809308C
	movs r1, #1
_0809308C:
	cmp r1, #0
	bne _0809309E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0809309A
	movs r1, #1
_0809309A:
	cmp r1, #0
	beq _080930A2
_0809309E:
	movs r0, #1
	b _080930AA
_080930A2:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_080930AA:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080930B0
sub_080930B0: @ 0x080930B0
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080930D4
	movs r1, #1
_080930D4:
	cmp r1, #0
	bne _080930E6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080930E2
	movs r1, #1
_080930E2:
	cmp r1, #0
	beq _080930EC
_080930E6:
	movs r0, #1
	rsbs r0, r0, #0
	b _080930F4
_080930EC:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_080930F4:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_080930F8
sub_080930F8: @ 0x080930F8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0809311C
	movs r1, #1
_0809311C:
	cmp r1, #0
	bne _0809312E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0809312A
	movs r1, #1
_0809312A:
	cmp r1, #0
	beq _08093134
_0809312E:
	movs r0, #1
	rsbs r0, r0, #0
	b _0809313C
_08093134:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_0809313C:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_08093140
sub_08093140: @ 0x08093140
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08093164
	movs r1, #1
_08093164:
	cmp r1, #0
	bne _08093176
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08093172
	movs r1, #1
_08093172:
	cmp r1, #0
	beq _0809317A
_08093176:
	movs r0, #1
	b _08093182
_0809317A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_08093182:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093188
sub_08093188: @ 0x08093188
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080931AC
	movs r1, #1
_080931AC:
	cmp r1, #0
	bne _080931BE
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080931BA
	movs r1, #1
_080931BA:
	cmp r1, #0
	beq _080931C2
_080931BE:
	movs r0, #1
	b _080931CA
_080931C2:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_080931CA:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080931D0
sub_080931D0: @ 0x080931D0
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _080931E8
	movs r0, #2
	str r0, [sp]
	b _08093220
_080931E8:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _08093206
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08093200
	ldr r0, _080931FC @ =0xCF000000
	b _08093226
	.align 2, 0
_080931FC: .4byte 0xCF000000
_08093200:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _08093208
_08093206:
	str r1, [sp, #0xc]
_08093208:
	ldr r2, [sp, #0xc]
	ldr r3, _0809322C @ =0x3FFFFFFF
	cmp r2, r3
	bhi _08093220
	ldr r1, [sp, #8]
_08093212:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _08093212
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_08093220:
	mov r0, sp
	bl sub_080929B4
_08093226:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_0809322C: .4byte 0x3FFFFFFF

	thumb_func_start sub_08093230
sub_08093230: @ 0x08093230
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _08093248
	movs r1, #1
_08093248:
	cmp r1, #0
	bne _0809327A
	movs r1, #0
	cmp r0, #1
	bhi _08093254
	movs r1, #1
_08093254:
	cmp r1, #0
	bne _0809327A
	movs r1, #0
	cmp r0, #4
	bne _08093260
	movs r1, #1
_08093260:
	cmp r1, #0
	beq _08093274
_08093264:
	ldr r0, [sp, #4]
	ldr r1, _08093270 @ =0x7FFFFFFF
	cmp r0, #0
	beq _08093292
	adds r1, #1
	b _08093292
	.align 2, 0
_08093270: .4byte 0x7FFFFFFF
_08093274:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _0809327E
_0809327A:
	movs r0, #0
	b _08093294
_0809327E:
	cmp r1, #0x1e
	bgt _08093264
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08093292
	rsbs r1, r1, #0
_08093292:
	adds r0, r1, #0
_08093294:
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_08093298
sub_08093298: @ 0x08093298
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080932B0
	movs r1, #1
_080932B0:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_080929B4
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_080932BC
sub_080932BC: @ 0x080932BC
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl sub_080929B4
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080932D4
sub_080932D4: @ 0x080932D4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl sub_08092A6C
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl sub_08092948
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start __default_terminate
__default_terminate: @ 0x08093300
	push {lr}
	bl abort
	.align 2, 0

	thumb_func_start __terminate
__terminate: @ 0x08093308
	push {lr}
	ldr r0, _08093314 @ =0x09F447B8
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08093314: .4byte 0x09F447B8

	thumb_func_start __throw_type_match
__throw_type_match: @ 0x08093318
	push {r4, lr}
	adds r4, r2, #0
	bl strcmp
	cmp r0, #0
	beq _08093328
	movs r0, #0
	b _0809332A
_08093328:
	adds r0, r4, #0
_0809332A:
	pop {r4, pc}

	thumb_func_start __empty
__empty: @ 0x0809332C
	bx lr
	.align 2, 0

	thumb_func_start new_eh_context
new_eh_context: @ 0x08093330
	push {r4, lr}
	movs r0, #0x18
	bl malloc
	adds r4, r0, #0
	cmp r4, #0
	bne _08093342
	bl __terminate
_08093342:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	bl memset
	adds r0, r4, #0
	adds r0, #0x10
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __get_eh_context
__get_eh_context: @ 0x08093358
	push {lr}
	ldr r0, _08093364 @ =0x09F447BC
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08093364: .4byte 0x09F447BC

	thumb_func_start __get_eh_info
__get_eh_info: @ 0x08093368
	push {lr}
	ldr r0, _08093378 @ =0x09F447BC
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, #8
	pop {pc}
	.align 2, 0
_08093378: .4byte 0x09F447BC

	thumb_func_start eh_context_initialize
eh_context_initialize: @ 0x0809337C
	push {lr}
	ldr r1, _0809338C @ =0x09F447BC
	ldr r0, _08093390 @ =eh_context_static
	str r0, [r1]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0809338C: .4byte 0x09F447BC
_08093390: .4byte eh_context_static

	thumb_func_start eh_context_static
eh_context_static: @ 0x08093394
	push {r4, lr}
	ldr r1, _080933B8 @ =eh_context_s_init
	ldr r0, [r1]
	cmp r0, #0
	bne _080933B2
	movs r0, #1
	str r0, [r1]
	ldr r4, _080933BC @ =eh_context_s_eh
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	bl memset
	ldr r0, _080933C0 @ =eh_context_s_top_elt
	str r0, [r4, #4]
_080933B2:
	ldr r0, _080933BC @ =eh_context_s_eh
	pop {r4, pc}
	.align 2, 0
_080933B8: .4byte eh_context_s_init
_080933BC: .4byte eh_context_s_eh
_080933C0: .4byte eh_context_s_top_elt

	thumb_func_start __get_dynamic_handler_chain
__get_dynamic_handler_chain: @ 0x080933C4
	push {lr}
	ldr r0, _080933D4 @ =0x09F447BC
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, #4
	pop {pc}
	.align 2, 0
_080933D4: .4byte 0x09F447BC
__sjthrow:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08093430 @ =0xFFFFF9B0
	add sp, r4
	mov r7, sp
	ldr r0, _08093434 @ =0x09F447BC
	ldr r0, [r0]
	bl _call_via_r0
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	str r0, [r1]
	adds r0, #4
	ldr r2, _08093438 @ =0x00000644
	adds r2, r2, r7
	str r0, [r2]
	ldr r3, [r1]
	ldr r1, [r3, #4]
	adds r0, r1, #4
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	str r0, [r2]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080934A8
	ldr r3, _0809343C @ =0x0000064C
	adds r3, r3, r7
	str r7, [r3]
	movs r0, #0
	str r0, [r7, #4]
	str r1, [r7]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08093440 @ =_08093444
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08093446
	.align 2, 0
_08093430: .4byte 0xFFFFF9B0
_08093434: .4byte 0x09F447BC
_08093438: .4byte 0x00000644
_0809343C: .4byte 0x0000064C
_08093440: .4byte _08093444
_08093444:
	b _080934A4
_08093446:
	ldr r1, _0809349C @ =0x0000064C
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r2, _080934A0 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	str r1, [r2]
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	cmp r0, #0
	beq _08093488
_08093462:
	movs r3, #0xc9
	lsls r3, r3, #3
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r1, [r3]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	str r1, [r3]
	movs r1, #2
	bl _call_via_r2
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _08093462
_08093488:
	ldr r2, _0809349C @ =0x0000064C
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	ldr r3, _080934A0 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	b _080934A8
	.align 2, 0
_0809349C: .4byte 0x0000064C
_080934A0: .4byte 0x00000644
_080934A4:
	bl __terminate
_080934A8:
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080934C4
	ldr r2, _080934E4 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	ldr r0, [r0]
	cmp r0, #0
	bne _080934C8
_080934C4:
	bl __terminate
_080934C8:
	ldr r3, _080934E4 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r1, [r3]
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r2, #4]
	ldr r7, [r1, #8]
	ldr r2, [r2, #8]
	mov sp, r2
	mov pc, r0
	.align 2, 0
_080934E4: .4byte 0x00000644

	thumb_func_start __sjpopnthrow
__sjpopnthrow: @ 0x080934E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08093538 @ =0xFFFFF9B4
	add sp, r4
	mov r7, sp
	ldr r0, _0809353C @ =0x09F447BC
	ldr r0, [r0]
	bl _call_via_r0
	adds r1, r0, #4
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r2, r2, r7
	str r1, [r2]
	ldr r1, [r0, #4]
	adds r3, r1, #4
	ldr r0, _08093540 @ =0x00000644
	adds r0, r0, r7
	str r3, [r0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080935A4
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	str r7, [r2]
	movs r0, #0
	str r0, [r7, #4]
	str r1, [r7]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08093544 @ =_08093548
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0809354A
	.align 2, 0
_08093538: .4byte 0xFFFFF9B4
_0809353C: .4byte 0x09F447BC
_08093540: .4byte 0x00000644
_08093544: .4byte _08093548
_08093548:
	b _080935A0
_0809354A:
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	b _0809357A
_0809355E:
	ldr r2, _0809359C @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r1, [r2]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	ldr r3, _0809359C @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	str r1, [r3]
	movs r1, #2
	bl _call_via_r2
_0809357A:
	ldr r1, _0809359C @ =0x00000644
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _0809355E
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	b _080935A4
	.align 2, 0
_0809359C: .4byte 0x00000644
_080935A0:
	bl __terminate
_080935A4:
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r0, [r0]
	str r0, [r1]
	bl __sjthrow
	.align 2, 0

	thumb_func_start __eh_rtime_match
__eh_rtime_match: @ 0x080935B8
	push {r4, lr}
	adds r4, r0, #0
	bl __get_eh_info
	ldr r0, [r0]
	ldr r3, [r0]
	cmp r3, #0
	bne _080935CC
	movs r0, #0
	b _080935DA
_080935CC:
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	cmp r0, #0
	beq _080935DA
	movs r0, #1
_080935DA:
	pop {r4, pc}

	thumb_func_start __lshrdi3
__lshrdi3: @ 0x080935DC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0809360C
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _080935F8
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _08093608
_080935F8:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_08093608:
	adds r1, r4, #0
	adds r0, r3, #0
_0809360C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08093610
sub_08093610: @ 0x08093610
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0809367C @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _08093650
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_08093650:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809367C: .4byte 0x0000FFFF

	thumb_func_start sub_08093680
sub_08093680: @ 0x08093680
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0809368E
	subs r1, #1
_0809368E:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093698
sub_08093698: @ 0x08093698
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _080936CC @ =0x09F44AAC
	ldr r1, [r5]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r1, r4
	ldr r3, [r0]
	cmp r3, #0
	bne _080936B4
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r3, r1, r2
	str r3, [r0]
_080936B4:
	ldr r0, [r3, #4]
	cmp r0, #0x1f
	ble _080936DE
	movs r0, #0x88
	bl malloc
	adds r3, r0, #0
	cmp r3, #0
	bne _080936D0
	movs r0, #1
	rsbs r0, r0, #0
	b _080936F0
	.align 2, 0
_080936CC: .4byte 0x09F44AAC
_080936D0:
	movs r0, #0
	str r0, [r3, #4]
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, [r0]
	str r1, [r3]
	str r3, [r0]
_080936DE:
	ldr r0, [r3, #4]
	lsls r2, r0, #2
	adds r1, r3, #0
	adds r1, #8
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	str r0, [r3, #4]
	movs r0, #0
_080936F0:
	pop {r4, r5, r6, pc}
	.align 2, 0
