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
	bl sub_08090F78
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
	bl sub_08090F78
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
	bl sub_08090F78
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
	bl sub_08091970
	strb r0, [r5, #0xb]
	ldr r0, _0808FF18 @ =0x00091D1B
	muls r0, r4, r0
	ldr r1, _0808FF1C @ =0x00001388
	adds r0, r0, r1
	ldr r1, _0808FF20 @ =0x00002710
	bl sub_08091970
	adds r1, r0, #0
	str r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08091970
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
	bl sub_08090F78
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
	bl sub_08091970
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

	thumb_func_start sub_08090F78
sub_08090F78: @ 0x08090F78
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

	thumb_func_start sub_08091954
sub_08091954: @ 0x08091954
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

	thumb_func_start sub_08091970
sub_08091970: @ 0x08091970
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

	thumb_func_start sub_08091A08
sub_08091A08: @ 0x08091A08
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

	thumb_func_start sub_08091AE0
sub_08091AE0: @ 0x08091AE0
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

	thumb_func_start sub_08091B58
sub_08091B58: @ 0x08091B58
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
	bl sub_080935DC
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

	thumb_func_start sub_080920A4
sub_080920A4: @ 0x080920A4
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

	thumb_func_start sub_080920D4
sub_080920D4: @ 0x080920D4
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

	thumb_func_start sub_0809210C
sub_0809210C: @ 0x0809210C
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

	thumb_func_start sub_080923B4
sub_080923B4: @ 0x080923B4
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

	thumb_func_start sub_08092668
sub_08092668: @ 0x08092668
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

	thumb_func_start sub_080926B4
sub_080926B4: @ 0x080926B4
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

	thumb_func_start sub_08092700
sub_08092700: @ 0x08092700
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

	thumb_func_start sub_08092798
sub_08092798: @ 0x08092798
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

	thumb_func_start sub_080927E4
sub_080927E4: @ 0x080927E4
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

	thumb_func_start sub_08092830
sub_08092830: @ 0x08092830
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

	thumb_func_start sub_080928AC
sub_080928AC: @ 0x080928AC
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
	bl sub_080935DC
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

	thumb_func_start sub_08092920
sub_08092920: @ 0x08092920
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
	bl sub_08093D48
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

	thumb_func_start sub_080935DC
sub_080935DC: @ 0x080935DC
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
abort:
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08093710 @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08093710: .4byte 0x00020022

	thumb_func_start isatty
isatty: @ 0x08093714
	movs r0, #1
	bx lr

	thumb_func_start sub_08093718
sub_08093718: @ 0x08093718
	bx lr
	.align 2, 0

	thumb_func_start malloc
malloc: @ 0x0809371C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0809372C @ =0x09F44AAC
	ldr r0, [r0]
	bl mALLOc
	pop {pc}
	.align 2, 0
_0809372C: .4byte 0x09F44AAC

	thumb_func_start free
free: @ 0x08093730
	push {lr}
	adds r1, r0, #0
	ldr r0, _08093740 @ =0x09F44AAC
	ldr r0, [r0]
	bl fREe
	pop {pc}
	.align 2, 0
_08093740: .4byte 0x09F44AAC

	thumb_func_start malloc_extend_top
malloc_extend_top: @ 0x08093744
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080937B8 @ =0x09F44AB0
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _080937BC @ =0x09F44EBC
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _080937C0 @ =0x09F44EC0
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _08093786
	ldr r3, _080937C4 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _080937C8 @ =0xFFFFF000
	ands r6, r0
_08093786:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _08093888
	cmp r5, r4
	bhs _0809379E
	ldr r0, _080937B8 @ =0x09F44AB0
	cmp r8, r0
	bne _08093888
_0809379E:
	ldr r1, _080937CC @ =0x09F44ECC
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _080937D0
	adds r2, r6, r7
	ldr r3, _080937B8 @ =0x09F44AB0
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _08093870
	.align 2, 0
_080937B8: .4byte 0x09F44AB0
_080937BC: .4byte 0x09F44EBC
_080937C0: .4byte 0x09F44EC0
_080937C4: .4byte 0x0000100F
_080937C8: .4byte 0xFFFFF000
_080937CC: .4byte 0x09F44ECC
_080937D0:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _080937DC
	str r5, [r3]
	b _080937E2
_080937DC:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_080937E2:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080937F6
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _080937F8
_080937F6:
	movs r4, #0
_080937F8:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl _sbrk_r
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08093888
	ldr r1, _08093840 @ =0x09F44ECC
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _08093844 @ =0x09F44AB0
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _08093870
	cmp r7, #0xf
	bhi _08093848
	str r3, [r5, #4]
	b _08093888
	.align 2, 0
_08093840: .4byte 0x09F44ECC
_08093844: .4byte 0x09F44AB0
_08093848:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _08093870
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl fREe
_08093870:
	ldr r0, _08093894 @ =0x09F44ECC
	ldr r2, _08093898 @ =0x09F44EC4
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _0809387E
	str r1, [r2]
_0809387E:
	ldr r2, _0809389C @ =0x09F44EC8
	ldr r0, [r2]
	cmp r1, r0
	bls _08093888
	str r1, [r2]
_08093888:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093894: .4byte 0x09F44ECC
_08093898: .4byte 0x09F44EC4
_0809389C: .4byte 0x09F44EC8

	thumb_func_start mALLOc
mALLOc: @ 0x080938A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _080938C2
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _080938C6
_080938C2:
	movs r3, #0x10
	mov r8, r3
_080938C6:
	ldr r0, [sp]
	bl MALLOC_LOCK
	ldr r0, _0809390C @ =0x000001F7
	cmp r8, r0
	bhi _0809391A
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _08093910 @ =0x09F44AB0
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _080938EE
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _08093914
_080938EE:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08093C46
	.align 2, 0
_0809390C: .4byte 0x000001F7
_08093910: .4byte 0x09F44AB0
_08093914:
	movs r0, #2
	add ip, r0
	b _080939C6
_0809391A:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _08093926
	lsrs r2, r2, #3
	b _08093976
_08093926:
	cmp r1, #4
	bhi _08093934
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _08093978
_08093934:
	cmp r1, #0x14
	bhi _0809393E
	adds r1, #0x5b
	mov ip, r1
	b _08093978
_0809393E:
	cmp r1, #0x54
	bhi _0809394C
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _08093978
_0809394C:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0809395E
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _08093978
_0809395E:
	ldr r0, _08093970 @ =0x00000554
	cmp r1, r0
	bhi _08093974
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _08093978
	.align 2, 0
_08093970: .4byte 0x00000554
_08093974:
	movs r2, #0x7e
_08093976:
	mov ip, r2
_08093978:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _0809399C @ =0x09F44AB0
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080939C2
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080939A0
	adds r0, #3
	add ip, r0
	b _080939C2
	.align 2, 0
_0809399C: .4byte 0x09F44AB0
_080939A0:
	cmp r3, #0
	blt _080939A6
	b _08093BE0
_080939A6:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _080939C2
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _080939A0
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_080939C2:
	movs r4, #1
	add ip, r4
_080939C6:
	ldr r0, _08093A04 @ =0x09F44AB8
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _080939D2
	b _08093AD4
_080939D2:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _08093A08
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _08093C46
	.align 2, 0
_08093A04: .4byte 0x09F44AB8
_08093A08:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _08093A1E
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08093C46
_08093A1E:
	ldr r0, _08093A40 @ =0x000001FF
	cmp r1, r0
	bhi _08093A44
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _08093ACC
	.align 2, 0
_08093A40: .4byte 0x000001FF
_08093A44:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _08093A4E
	lsrs r2, r1, #3
	b _08093A92
_08093A4E:
	cmp r2, #4
	bhi _08093A5A
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _08093A92
_08093A5A:
	cmp r2, #0x14
	bhi _08093A62
	adds r2, #0x5b
	b _08093A92
_08093A62:
	cmp r2, #0x54
	bhi _08093A6E
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _08093A92
_08093A6E:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _08093A7E
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _08093A92
_08093A7E:
	ldr r0, _08093A8C @ =0x00000554
	cmp r2, r0
	bhi _08093A90
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _08093A92
	.align 2, 0
_08093A8C: .4byte 0x00000554
_08093A90:
	movs r2, #0x7e
_08093A92:
	lsls r0, r2, #3
	ldr r3, _08093AB0 @ =0x09F44AB0
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _08093AB4
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _08093AB0 @ =0x09F44AB0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _08093ACC
	.align 2, 0
_08093AB0: .4byte 0x09F44AB0
_08093AB4:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _08093AC4
_08093ABC:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _08093ACA
	ldr r0, [r4, #4]
_08093AC4:
	ands r0, r2
	cmp r1, r0
	blo _08093ABC
_08093ACA:
	ldr r6, [r4, #0xc]
_08093ACC:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_08093AD4:
	mov r0, ip
	cmp r0, #0
	bge _08093ADC
	adds r0, #3
_08093ADC:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _08093B00 @ =0x09F44AB0
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _08093B9E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08093B12
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _08093B08
	.align 2, 0
_08093B00: .4byte 0x09F44AB0
_08093B04:
	movs r3, #4
	add ip, r3
_08093B08:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08093B04
_08093B12:
	ldr r4, _08093B90 @ =0x09F44AB0
	mov sb, r4
_08093B16:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_08093B24:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _08093B44
	movs r0, #4
	rsbs r0, r0, #0
_08093B2E:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _08093BF4
	cmp r3, #0
	bge _08093C1C
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _08093B2E
_08093B44:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08093B24
_08093B54:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _08093B94
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _08093B54
_08093B6A:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _08093B9E
	cmp r6, #0
	beq _08093B9E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08093B16
_08093B80:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08093B80
	b _08093B16
	.align 2, 0
_08093B90: .4byte 0x09F44AB0
_08093B94:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _08093B6A
_08093B9E:
	ldr r2, _08093BDC @ =0x09F44AB0
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _08093BB6
	cmp r3, #0xf
	bgt _08093C30
_08093BB6:
	ldr r0, [sp]
	mov r1, r8
	bl malloc_extend_top
	ldr r1, _08093BDC @ =0x09F44AB0
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _08093BD2
	cmp r3, #0xf
	bgt _08093C30
_08093BD2:
	ldr r0, [sp]
	bl MALLOC_UNLOCK
	movs r0, #0
	b _08093C50
	.align 2, 0
_08093BDC: .4byte 0x09F44AB0
_08093BE0:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08093C46
_08093BF4:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _08093C46
_08093C1C:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _08093C46
_08093C30:
	ldr r2, _08093C5C @ =0x09F44AB0
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_08093C46:
	ldr r0, [sp]
	bl MALLOC_UNLOCK
	adds r0, r5, #0
	adds r0, #8
_08093C50:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093C5C: .4byte 0x09F44AB0

	thumb_func_start memcpy
memcpy: @ 0x08093C60
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _08093CA0
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08093CA0
	adds r1, r5, #0
_08093C7A:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08093C7A
	cmp r2, #3
	bls _08093C9E
_08093C94:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _08093C94
_08093C9E:
	adds r4, r1, #0
_08093CA0:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08093CBA
	adds r1, r0, #0
_08093CAC:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08093CAC
_08093CBA:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start memset
memset: @ 0x08093CC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _08093D06
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08093D06
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _08093CFA
_08093CE6:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08093CE6
	b _08093CFA
_08093CF6:
	stm r1!, {r3}
	subs r2, #4
_08093CFA:
	cmp r2, #3
	bhi _08093CF6
	adds r3, r1, #0
	b _08093D06
_08093D02:
	strb r4, [r3]
	adds r3, #1
_08093D06:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _08093D02
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start MALLOC_LOCK
MALLOC_LOCK: @ 0x08093D14
	bx lr
	.align 2, 0

	thumb_func_start MALLOC_UNLOCK
MALLOC_UNLOCK: @ 0x08093D18
	bx lr
	.align 2, 0

	thumb_func_start _sbrk_r
_sbrk_r: @ 0x08093D1C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08093D44 @ =gUnknown_02015E34
	movs r1, #0
	str r1, [r4]
	bl _sbrk
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08093D3E
	ldr r0, [r4]
	cmp r0, #0
	beq _08093D3E
	str r0, [r5]
_08093D3E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08093D44: .4byte gUnknown_02015E34

	thumb_func_start sub_08093D48
sub_08093D48: @ 0x08093D48
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08093D8E
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _08093D8E
	ldr r5, _08093D74 @ =0xFEFEFEFF
	ldr r4, _08093D78 @ =0x80808080
_08093D64:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08093D7C
	movs r0, #0
	b _08093DA0
	.align 2, 0
_08093D74: .4byte 0xFEFEFEFF
_08093D78: .4byte 0x80808080
_08093D7C:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _08093D64
	b _08093D8E
_08093D8A:
	adds r2, #1
	adds r3, #1
_08093D8E:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08093D9A
	ldrb r1, [r3]
	cmp r0, r1
	beq _08093D8A
_08093D9A:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_08093DA0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08093DA4
sub_08093DA4: @ 0x08093DA4
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _08093DAC @ =gUnknown_02015F88
	b _08093DB8
	.align 2, 0
_08093DAC: .4byte gUnknown_02015F88
_08093DB0:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _08093DBE
_08093DB8:
	ldr r0, [r2]
	cmp r0, r3
	bne _08093DB0
_08093DBE:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08093DC4
sub_08093DC4: @ 0x08093DC4
	adds r2, r0, #0
	ldr r0, _08093DD8 @ =0x09F44AAC
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _08093DE0
	ldr r0, _08093DDC @ =gUnknown_02015F7C
	b _08093E06
	.align 2, 0
_08093DD8: .4byte 0x09F44AAC
_08093DDC: .4byte gUnknown_02015F7C
_08093DE0:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _08093DF4
	ldr r0, _08093DF0 @ =gUnknown_02015F80
	b _08093E06
	.align 2, 0
_08093DF0: .4byte gUnknown_02015F80
_08093DF4:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _08093E04
	adds r0, r2, #0
	subs r0, #0x20
	b _08093E08
_08093E04:
	ldr r0, _08093E0C @ =gUnknown_02015F84
_08093E06:
	ldr r0, [r0]
_08093E08:
	bx lr
	.align 2, 0
_08093E0C: .4byte gUnknown_02015F84

	thumb_func_start sub_08093E10
sub_08093E10: @ 0x08093E10
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _08093E6C @ =gUnknown_08CDB298
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _08093E70 @ =gUnknown_02015F7C
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _08093E74 @ =gUnknown_02015F80
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _08093E78 @ =gUnknown_02015F84
	str r2, [r0]
	str r2, [r3]
	ldr r2, _08093E7C @ =gUnknown_02015F88
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_08093E52:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08093E52
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_08093E6C: .4byte gUnknown_08CDB298
_08093E70: .4byte gUnknown_02015F7C
_08093E74: .4byte gUnknown_02015F80
_08093E78: .4byte gUnknown_02015F84
_08093E7C: .4byte gUnknown_02015F88

	thumb_func_start sub_08093E80
sub_08093E80: @ 0x08093E80
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093E94
sub_08093E94: @ 0x08093E94
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0809423C
	adds r4, r0, #0
	bl sub_08093E80
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08093EA8
sub_08093EA8: @ 0x08093EA8
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08093EB8
	adds r0, r1, #0
	b _08093EBE
_08093EB8:
	adds r0, r1, #0
	bl sub_08093E94
_08093EBE:
	pop {pc}

	thumb_func_start sub_08093EC0
sub_08093EC0: @ 0x08093EC0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_08093DC4
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08093EE4
sub_08093EE4: @ 0x08093EE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl sub_08093DC4
	bl sub_08093DA4
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08093EC0
	cmp r0, #0
	bge _08093F0E
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08093E94
	b _08093F24
_08093F0E:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _08093F22
	ldr r0, _08093F28 @ =gUnknown_02015F88
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08093F22:
	adds r0, r2, #0
_08093F24:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093F28: .4byte gUnknown_02015F88

	thumb_func_start sub_08093F2C
sub_08093F2C: @ 0x08093F2C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl sub_08093DC4
	adds r7, r0, #0
	bl sub_08093DA4
	adds r6, r0, #0
	cmp r4, #1
	bne _08093F62
	cmp r6, #0x14
	bne _08093F54
	movs r0, #1
	rsbs r0, r0, #0
	b _08093FA4
_08093F54:
	ldr r0, _08093FAC @ =gUnknown_02015F88
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_08093F62:
	cmp r4, #2
	bne _08093F74
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_08093F74:
	mov r0, r8
	bl sub_08093DC4
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _08093F9A
	cmp r2, #0
	bne _08093F9A
	ldr r0, _08093FAC @ =gUnknown_02015F88
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_08093F9A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _08093FA4
	adds r0, r5, #0
_08093FA4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093FAC: .4byte gUnknown_02015F88

	thumb_func_start sub_08093FB0
sub_08093FB0: @ 0x08093FB0
	push {lr}
	bl sub_08093F2C
	bl sub_08093EA8
	pop {pc}

	thumb_func_start sub_08093FBC
sub_08093FBC: @ 0x08093FBC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_08093DC4
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08093FE0
sub_08093FE0: @ 0x08093FE0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08093DC4
	bl sub_08093DA4
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08093FBC
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08094008
	cmp r0, r6
	bne _08094010
_08094008:
	adds r0, r1, #0
	bl sub_08093E94
	b _08094026
_08094010:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _08094024
	ldr r0, _08094028 @ =gUnknown_02015F88
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08094024:
	adds r0, r2, #0
_08094026:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08094028: .4byte gUnknown_02015F88

	thumb_func_start sub_0809402C
sub_0809402C: @ 0x0809402C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl sub_08093DA4
	mov r8, r0
	cmp r0, #0x14
	bne _0809404E
	adds r0, r6, #0
	b _080940C2
_0809404E:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08094058
	movs r5, #2
_08094058:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08094066
	movs r0, #4
	orrs r5, r0
_08094066:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08094074
	movs r0, #4
	orrs r5, r0
_08094074:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _08094084
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_08094084:
	str r7, [sp]
	adds r0, r7, #0
	bl strlen
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _080940BC
	ldr r0, _080940B8 @ =gUnknown_02015F88
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _080940C2
	.align 2, 0
_080940B8: .4byte gUnknown_02015F88
_080940BC:
	adds r0, r3, #0
	bl sub_08093E94
_080940C2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080940CC
sub_080940CC: @ 0x080940CC
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl sub_0809402C
	bl sub_08093EA8
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start sub_080940E0
sub_080940E0: @ 0x080940E0
	push {lr}
	sub sp, #4
	bl sub_08093DC4
	str r0, [sp]
	bl sub_08093DA4
	adds r1, r0, #0
	cmp r1, #0x14
	beq _08094100
	ldr r0, _08094110 @ =gUnknown_02015F88
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_08094100:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_08094110: .4byte gUnknown_02015F88

	thumb_func_start sub_08094114
sub_08094114: @ 0x08094114
	push {lr}
	bl sub_080940E0
	bl sub_08093EA8
	pop {pc}

	thumb_func_start sub_08094120
sub_08094120: @ 0x08094120
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _0809413C @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_0809413C: .4byte 0x00020026

	thumb_func_start sub_08094140
sub_08094140: @ 0x08094140
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _0809415C @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_0809415C: .4byte 0x00020026

	thumb_func_start sub_08094160
sub_08094160: @ 0x08094160
	movs r0, #1
	bx lr

	thumb_func_start _sbrk
_sbrk: @ 0x08094164
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08094194 @ =gUnknown_02015F78
	ldr r0, [r4]
	cmp r0, #0
	bne _08094174
	ldr r0, _08094198 @ =gUnknown_02036028
	str r0, [r4]
_08094174:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _0809418A
	ldr r1, _0809419C @ =gUnknown_08CDB29C
	movs r0, #1
	movs r2, #0x20
	bl sub_08093FE0
	bl abort
_0809418A:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08094194: .4byte gUnknown_02015F78
_08094198: .4byte gUnknown_02036028
_0809419C: .4byte gUnknown_08CDB29C

	thumb_func_start _fstat
_fstat: @ 0x080941A0
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_080941AC
sub_080941AC: @ 0x080941AC
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_080941B4
sub_080941B4: @ 0x080941B4
	bx lr
	.align 2, 0

	thumb_func_start sub_080941B8
sub_080941B8: @ 0x080941B8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _080941D6
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_080941D6:
	cmp r3, #0
	beq _080941E0
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_080941E0:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start sub_080941E4
sub_080941E4: @ 0x080941E4
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _08094202
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_08094202:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08094208
sub_08094208: @ 0x08094208
	push {r4, r5, lr}
	sub sp, #0x58
	mov r4, sp
	movs r5, #0
	movs r3, #0x82
	lsls r3, r3, #2
	strh r3, [r4, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _08094234 @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _08094238 @ =0x09F44AAC
	ldr r0, [r0]
	str r0, [sp, #0x54]
	mov r0, sp
	bl sub_080945A0
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5, pc}
	.align 2, 0
_08094234: .4byte 0x7FFFFFFF
_08094238: .4byte 0x09F44AAC

	thumb_func_start sub_0809423C
sub_0809423C: @ 0x0809423C
	ldr r0, _08094244 @ =0x09F44AAC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08094244: .4byte 0x09F44AAC

	thumb_func_start fREe
fREe: @ 0x08094248
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _0809425A
	b _080943FE
_0809425A:
	bl MALLOC_LOCK
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _080942BC @ =0x09F44AB0
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _080942C8
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _08094296
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08094296:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _080942C0 @ =0x09F44EB8
	ldr r0, [r0]
	cmp r6, r0
	blo _080942B2
	ldr r0, _080942C4 @ =0x09F44EBC
	ldr r1, [r0]
	mov r0, sb
	bl malloc_trim
_080942B2:
	mov r0, sb
	bl MALLOC_UNLOCK
	b _080943FE
	.align 2, 0
_080942BC: .4byte 0x09F44AB0
_080942C0: .4byte 0x09F44EB8
_080942C4: .4byte 0x09F44EBC
_080942C8:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080942F4
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _080942EC
	movs r2, #1
	mov r8, r2
	b _080942F4
_080942EC:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080942F4:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809432C
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _08094324
	ldr r0, _08094320 @ =0x09F44AB8
	cmp r1, r0
	bne _08094324
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _0809432C
	.align 2, 0
_08094320: .4byte 0x09F44AB8
_08094324:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_0809432C:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _080943F8
	ldr r0, _0809435C @ =0x000001FF
	cmp r6, r0
	bhi _08094364
	lsrs r4, r6, #3
	ldr r2, _08094360 @ =0x09F44AB0
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _080943F0
	.align 2, 0
_0809435C: .4byte 0x000001FF
_08094360: .4byte 0x09F44AB0
_08094364:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _0809436E
	lsrs r4, r6, #3
	b _080943B6
_0809436E:
	cmp r1, #4
	bhi _0809437A
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _080943B6
_0809437A:
	cmp r1, #0x14
	bhi _08094384
	adds r4, r1, #0
	adds r4, #0x5b
	b _080943B6
_08094384:
	cmp r1, #0x54
	bhi _08094390
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _080943B6
_08094390:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080943A0
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _080943B6
_080943A0:
	ldr r0, _080943B0 @ =0x00000554
	cmp r1, r0
	bhi _080943B4
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _080943B6
	.align 2, 0
_080943B0: .4byte 0x00000554
_080943B4:
	movs r4, #0x7e
_080943B6:
	lsls r0, r4, #3
	ldr r7, _080943D4 @ =0x09F44AB0
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _080943D8
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080943F0
	.align 2, 0
_080943D4: .4byte 0x09F44AB0
_080943D8:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _080943E8
_080943E0:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _080943EE
	ldr r0, [r2, #4]
_080943E8:
	ands r0, r1
	cmp r6, r0
	blo _080943E0
_080943EE:
	ldr r3, [r2, #0xc]
_080943F0:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_080943F8:
	mov r0, sb
	bl MALLOC_UNLOCK
_080943FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start malloc_trim
malloc_trim: @ 0x08094408
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl MALLOC_LOCK
	ldr r0, _08094490 @ =0x09F44AB0
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _08094494 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08091AE0
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _08094486
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _08094486
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl _sbrk_r
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080944A0
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _08094486
	ldr r1, _08094498 @ =0x09F44ECC
	ldr r0, _0809449C @ =0x09F44EC0
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_08094486:
	adds r0, r7, #0
	bl MALLOC_UNLOCK
	movs r0, #0
	b _080944BC
	.align 2, 0
_08094490: .4byte 0x09F44AB0
_08094494: .4byte 0x00000FEF
_08094498: .4byte 0x09F44ECC
_0809449C: .4byte 0x09F44EC0
_080944A0:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _080944C4 @ =0x09F44ECC
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl MALLOC_UNLOCK
	movs r0, #1
_080944BC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080944C4: .4byte 0x09F44ECC

	thumb_func_start strlen
strlen: @ 0x080944C8
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08094500
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _080944E4 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _080944E8 @ =0x80808080
	b _080944F4
	.align 2, 0
_080944E4: .4byte 0xFEFEFEFF
_080944E8: .4byte 0x80808080
_080944EC:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080944F4:
	ands r0, r3
	cmp r0, #0
	beq _080944EC
	adds r1, r2, #0
	b _08094500
_080944FE:
	adds r1, #1
_08094500:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080944FE
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sprint
__sprint: @ 0x0809450C
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _08094524
	adds r1, r4, #0
	bl __sfvwrite
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _08094528
_08094524:
	str r1, [r4, #4]
	movs r0, #0
_08094528:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __sbprintf
__sbprintf: @ 0x0809452C
	push {r4, r5, lr}
	ldr r4, _0809459C @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl sub_080945A0
	adds r4, r0, #0
	cmp r4, #0
	blt _0809457C
	mov r0, sp
	bl fflush
	cmp r0, #0
	beq _0809457C
	movs r4, #1
	rsbs r4, r4, #0
_0809457C:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08094590
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_08094590:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_0809459C: .4byte 0xFFFFFBA8

	thumb_func_start sub_080945A0
sub_080945A0: @ 0x080945A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _vprintf_r
	pop {r4, r5, pc}

	thumb_func_start _vprintf_r
_vprintf_r: @ 0x080945B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0809461C @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl sub_08096A30
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080945E6
	ldr r0, _08094620 @ =0x09F44AAC
	ldr r0, [r0]
	str r0, [r1, #0x54]
_080945E6:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080945F6
	adds r0, r1, #0
	bl __sinit
_080945F6:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0809460A
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _08094624
_0809460A:
	ldr r0, [sp, #0x1e0]
	bl __swsetup
	cmp r0, #0
	beq _08094624
	movs r0, #1
	rsbs r0, r0, #0
	bl _08095504
	.align 2, 0
_0809461C: .4byte 0xFFFFFDE0
_08094620: .4byte 0x09F44AAC
_08094624:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _08094648
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08094648
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl __sbprintf
	bl _08095504
_08094648:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_0809466C:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_08094670:
	ldr r0, _0809471C @ =0x09F44AAC
	ldr r0, [r0]
	ldr r1, _08094720 @ =0x09F44EF4
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl _mbtowc_r
	adds r4, r0, #0
	cmp r4, #0
	ble _0809469E
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _08094670
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_0809469E:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _080946D6
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080946D0
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080946CE
	bl _080954F0
_080946CE:
	add r5, sp, #0x28
_080946D0:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_080946D6:
	cmp r4, #0
	bgt _080946DE
	bl _080954D8
_080946DE:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _08094724 @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_080946FA:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_08094706:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _08094710
	b _08094DC2
_08094710:
	lsls r0, r0, #2
	ldr r1, _08094728 @ =_0809472C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809471C: .4byte 0x09F44AAC
_08094720: .4byte 0x09F44EF4
_08094724: .4byte 0x000001C9
_08094728: .4byte _0809472C
_0809472C: @ jump table
	.4byte _08094890 @ case 0
	.4byte _08094DC2 @ case 1
	.4byte _08094DC2 @ case 2
	.4byte _080948A8 @ case 3
	.4byte _08094DC2 @ case 4
	.4byte _08094DC2 @ case 5
	.4byte _08094DC2 @ case 6
	.4byte _08094DC2 @ case 7
	.4byte _08094DC2 @ case 8
	.4byte _08094DC2 @ case 9
	.4byte _080948AC @ case 10
	.4byte _080948C6 @ case 11
	.4byte _08094DC2 @ case 12
	.4byte _080948C2 @ case 13
	.4byte _080948D4 @ case 14
	.4byte _08094DC2 @ case 15
	.4byte _08094934 @ case 16
	.4byte _08094938 @ case 17
	.4byte _08094938 @ case 18
	.4byte _08094938 @ case 19
	.4byte _08094938 @ case 20
	.4byte _08094938 @ case 21
	.4byte _08094938 @ case 22
	.4byte _08094938 @ case 23
	.4byte _08094938 @ case 24
	.4byte _08094938 @ case 25
	.4byte _08094DC2 @ case 26
	.4byte _08094DC2 @ case 27
	.4byte _08094DC2 @ case 28
	.4byte _08094DC2 @ case 29
	.4byte _08094DC2 @ case 30
	.4byte _08094DC2 @ case 31
	.4byte _08094DC2 @ case 32
	.4byte _08094DC2 @ case 33
	.4byte _08094DC2 @ case 34
	.4byte _08094DC2 @ case 35
	.4byte _080949A2 @ case 36
	.4byte _080949F4 @ case 37
	.4byte _08094DC2 @ case 38
	.4byte _080949F4 @ case 39
	.4byte _08094DC2 @ case 40
	.4byte _08094DC2 @ case 41
	.4byte _08094DC2 @ case 42
	.4byte _08094DC2 @ case 43
	.4byte _0809495C @ case 44
	.4byte _08094DC2 @ case 45
	.4byte _08094DC2 @ case 46
	.4byte _08094BAA @ case 47
	.4byte _08094DC2 @ case 48
	.4byte _08094DC2 @ case 49
	.4byte _08094DC2 @ case 50
	.4byte _08094DC2 @ case 51
	.4byte _08094DC2 @ case 52
	.4byte _08094C42 @ case 53
	.4byte _08094DC2 @ case 54
	.4byte _08094DC2 @ case 55
	.4byte _08094C7E @ case 56
	.4byte _08094DC2 @ case 57
	.4byte _08094DC2 @ case 58
	.4byte _08094DC2 @ case 59
	.4byte _08094DC2 @ case 60
	.4byte _08094DC2 @ case 61
	.4byte _08094DC2 @ case 62
	.4byte _08094DC2 @ case 63
	.4byte _08094DC2 @ case 64
	.4byte _08094DC2 @ case 65
	.4byte _08094DC2 @ case 66
	.4byte _08094990 @ case 67
	.4byte _080949AA @ case 68
	.4byte _080949F4 @ case 69
	.4byte _080949F4 @ case 70
	.4byte _080949F4 @ case 71
	.4byte _08094960 @ case 72
	.4byte _080949AA @ case 73
	.4byte _08094DC2 @ case 74
	.4byte _08094DC2 @ case 75
	.4byte _08094964 @ case 76
	.4byte _08094DC2 @ case 77
	.4byte _08094B64 @ case 78
	.4byte _08094BB2 @ case 79
	.4byte _08094BE0 @ case 80
	.4byte _08094986 @ case 81
	.4byte _08094DC2 @ case 82
	.4byte _08094C00 @ case 83
	.4byte _08094DC2 @ case 84
	.4byte _08094C4A @ case 85
	.4byte _08094DC2 @ case 86
	.4byte _08094DC2 @ case 87
	.4byte _08094C88 @ case 88
_08094890:
	ldr r1, _080948A4 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809489C
	b _080946FA
_0809489C:
	movs r0, #0x20
	strb r0, [r1]
	b _080946FA
	.align 2, 0
_080948A4: .4byte 0x000001C9
_080948A8:
	movs r0, #1
	b _08094974
_080948AC:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _080948BE
	b _080946FA
_080948BE:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_080948C2:
	movs r0, #4
	b _08094988
_080948C6:
	ldr r1, _080948D0 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _080946FA
	.align 2, 0
_080948D0: .4byte 0x000001C9
_080948D4:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _080948FE
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080948FA
	b _080946FA
_080948FA:
	adds r6, r0, #0
	b _080946FA
_080948FE:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _0809491E
_08094904:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_0809491E:
	subs r0, #0x30
	cmp r0, #9
	bls _08094904
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _08094930
	b _08094706
_08094930:
	adds r6, r0, #0
	b _08094706
_08094934:
	movs r0, #0x80
	b _08094988
_08094938:
	movs r4, #0
_0809493A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _0809493A
	str r4, [sp, #0x1f4]
	b _08094706
_0809495C:
	movs r0, #8
	b _08094974
_08094960:
	movs r0, #0x40
	b _0809497E
_08094964:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _0809497C
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_08094974:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _080946FA
_0809497C:
	movs r0, #0x10
_0809497E:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _080946FA
_08094986:
	movs r0, #0x20
_08094988:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _080946FA
_08094990:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _08094DD0
_080949A2:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080949AA:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080949BA
	movs r4, #4
	add sl, r4
	b _080949D6
_080949BA:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080949D2
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _080949DC
_080949D2:
	movs r2, #4
	add sl, r2
_080949D6:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080949DC:
	cmp r4, #0
	bge _080949EA
	rsbs r4, r4, #0
	ldr r1, _080949F0 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080949EA:
	movs r2, #1
	b _08094CD6
	.align 2, 0
_080949F0: .4byte 0x000001C9
_080949F4:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08094A00
	movs r6, #6
	b _08094A10
_08094A00:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _08094A0A
	cmp r4, #0x47
	bne _08094A10
_08094A0A:
	cmp r6, #0
	bne _08094A10
	movs r6, #1
_08094A10:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isinf
	cmp r0, #0
	beq _08094A64
	ldr r3, _08094A58 @ =0x00000000
	ldr r2, _08094A54 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08092798
	cmp r0, #0
	bge _08094A4A
	ldr r1, _08094A5C @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_08094A4A:
	ldr r2, _08094A60 @ =gUnknown_08CDB2E0
	mov r8, r2
	movs r3, #3
	b _08094DDA
	.align 2, 0
_08094A54: .4byte 0x00000000
_08094A58: .4byte 0x00000000
_08094A5C: .4byte 0x000001C9
_08094A60: .4byte gUnknown_08CDB2E0
_08094A64:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isnan
	cmp r0, #0
	beq _08094A7C
	ldr r4, _08094A78 @ =gUnknown_08CDB2E4
	mov r8, r4
	movs r3, #3
	b _08094DDA
	.align 2, 0
_08094A78: .4byte gUnknown_08CDB2E4
_08094A7C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl cvt
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _08094AB0
	cmp r4, #0x47
	bne _08094AD2
_08094AB0:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08094AC0
	cmp r1, r6
	ble _08094ACE
_08094AC0:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _08094ACA
	movs r0, #0x65
_08094ACA:
	str r0, [sp, #0x1e8]
	b _08094AD2
_08094ACE:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_08094AD2:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _08094AF8
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl exponent
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _08094B38
	b _08094B2E
_08094AF8:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _08094B20
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _08094B1C
	adds r3, r0, #0
	cmp r6, #0
	bne _08094B16
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094B48
_08094B16:
	adds r0, r3, #1
	adds r3, r0, r6
	b _08094B48
_08094B1C:
	adds r3, r6, #2
	b _08094B48
_08094B20:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _08094B3C
	adds r3, r1, #0
_08094B2E:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08094B48
_08094B38:
	adds r3, #1
	b _08094B48
_08094B3C:
	cmp r1, #0
	bgt _08094B46
	adds r0, #2
	subs r3, r0, r1
	b _08094B48
_08094B46:
	adds r3, r0, #1
_08094B48:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _08094B56
	b _08094DDE
_08094B56:
	ldr r1, _08094B60 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _08094DDE
	.align 2, 0
_08094B60: .4byte 0x000001C9
_08094B64:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _08094B7E
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _0809466C
_08094B7E:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _08094B9A
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _0809466C
_08094B9A:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _0809466C
_08094BAA:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_08094BB2:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _08094BD2
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094BD2
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08094BDC
_08094BD2:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08094BDC:
	movs r2, #0
	b _08094CCE
_08094BE0:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _08094BFC @ =gUnknown_08CDB2E8
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _08094CCE
	.align 2, 0
_08094BFC: .4byte gUnknown_08CDB2E8
_08094C00:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _08094C14
	ldr r4, _08094C34 @ =gUnknown_08CDB2FC
	mov r8, r4
_08094C14:
	cmp r6, #0
	blt _08094C38
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl memchr
	cmp r0, #0
	beq _08094C30
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _08094C30
	b _08094DD2
_08094C30:
	adds r3, r6, #0
	b _08094DD2
	.align 2, 0
_08094C34: .4byte gUnknown_08CDB2FC
_08094C38:
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _08094DD2
_08094C42:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_08094C4A:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _08094C5A
	movs r0, #4
	add sl, r0
	b _08094C74
_08094C5A:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094C70
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08094C7A
_08094C70:
	movs r4, #4
	add sl, r4
_08094C74:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08094C7A:
	movs r2, #1
	b _08094CCE
_08094C7E:
	ldr r0, _08094C84 @ =gUnknown_08CDB304
	str r0, [sp, #0x210]
	b _08094C8C
	.align 2, 0
_08094C84: .4byte gUnknown_08CDB304
_08094C88:
	ldr r1, _08094CAC @ =gUnknown_08CDB2E8
	str r1, [sp, #0x210]
_08094C8C:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _08094CB0
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094CB0
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08094CBA
	.align 2, 0
_08094CAC: .4byte gUnknown_08CDB2E8
_08094CB0:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08094CBA:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094CCE
	cmp r4, #0
	beq _08094CCE
	orrs r1, r2
	str r1, [sp, #0x1ec]
_08094CCE:
	ldr r1, _08094D18 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_08094CD6:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _08094CE6
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_08094CE6:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _08094CFC
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _08094DB4
_08094CFC:
	cmp r2, #1
	beq _08094D5A
	cmp r2, #1
	blo _08094D20
	cmp r2, #2
	beq _08094D94
	ldr r2, _08094D1C @ =gUnknown_08CDB318
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _08094DDA
	.align 2, 0
_08094D18: .4byte 0x000001C9
_08094D1C: .4byte gUnknown_08CDB318
_08094D20:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_08094D26:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _08094D26
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08094DB4
	cmp r1, #0x30
	beq _08094DB4
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _08094DB4
_08094D5A:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _08094D84
_08094D62:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08091B58
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08091AE0
	adds r4, r0, #0
	cmp r4, #9
	bhi _08094D62
_08094D84:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _08094DB4
_08094D94:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_08094D9A:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _08094D9A
_08094DB4:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _08094DDE
_08094DC2:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _08094DCA
	b _080954D8
_08094DCA:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_08094DD0:
	movs r3, #1
_08094DD2:
	ldr r1, _08094DFC @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_08094DDA:
	adds r7, r5, #0
	adds r7, #8
_08094DDE:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _08094DE8
	str r2, [sp, #0x20c]
_08094DE8:
	ldr r0, _08094DFC @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08094E00
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _08094E10
	.align 2, 0
_08094DFC: .4byte 0x000001C9
_08094E00:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094E10
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_08094E10:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _08094E90
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _08094E90
	ldr r1, _08094EBC @ =gUnknown_08CDB2C0
	cmp r4, #0x10
	ble _08094E64
	mov r6, sb
_08094E2C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08094E5A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094E56
	b _080954F0
_08094E56:
	add r5, sp, #0x28
	ldr r1, _08094EBC @ =gUnknown_08CDB2C0
_08094E5A:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _08094E2C
_08094E64:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _08094E90
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094E8E
	b _080954F0
_08094E8E:
	add r5, sp, #0x28
_08094E90:
	ldr r1, _08094EC0 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _08094EC4
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _08094F04
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _08094EF4
	.align 2, 0
_08094EBC: .4byte gUnknown_08CDB2C0
_08094EC0: .4byte 0x000001C9
_08094EC4:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08094F04
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08094F04
	ldr r0, [sp, #0x1e0]
_08094EF4:
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094F02
	b _080954F0
_08094F02:
	add r5, sp, #0x28
_08094F04:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _08094F80
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _08094F80
	ldr r1, _0809501C @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _08094F54
	mov r6, sb
_08094F20:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08094F4E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094F4A
	b _080954F0
_08094F4A:
	add r5, sp, #0x28
	ldr r1, _0809501C @ =gUnknown_08CDB2D0
_08094F4E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08094F20
_08094F54:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _08094F80
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094F7E
	b _080954F0
_08094F7E:
	add r5, sp, #0x28
_08094F80:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _08094FEE
	ldr r1, _0809501C @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _08094FC4
	mov r6, sb
_08094F90:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08094FBE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094FBA
	b _080954F0
_08094FBA:
	add r5, sp, #0x28
	ldr r1, _0809501C @ =gUnknown_08CDB2D0
_08094FBE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08094F90
_08094FC4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08094FEE
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094FEC
	b _080954F0
_08094FEC:
	add r5, sp, #0x28
_08094FEE:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _08095020
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _08095016
	b _08095436
_08095016:
	ldr r0, [sp, #0x1e0]
	b _0809542C
	.align 2, 0
_0809501C: .4byte gUnknown_08CDB2D0
_08095020:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _08095028
	b _0809530C
_08095028:
	ldr r3, _080950F4 @ =0x00000000
	ldr r2, _080950F0 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08092668
	cmp r0, #0
	bne _08095100
	ldr r0, _080950F8 @ =gUnknown_08CDB334
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _08095064
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08095062
	b _080954F0
_08095062:
	add r5, sp, #0x28
_08095064:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _0809507A
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _0809507A
	b _08095436
_0809507A:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080950A2
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080950A0
	b _080954F0
_080950A0:
	add r5, sp, #0x28
_080950A2:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _080950AC
	b _08095436
_080950AC:
	ldr r1, _080950FC @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _080950E4
	mov r6, sb
_080950B4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080950DE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080950DA
	b _080954F0
_080950DA:
	add r5, sp, #0x28
	ldr r1, _080950FC @ =gUnknown_08CDB2D0
_080950DE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080950B4
_080950E4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _0809541A
	.align 2, 0
_080950F0: .4byte 0x00000000
_080950F4: .4byte 0x00000000
_080950F8: .4byte gUnknown_08CDB334
_080950FC: .4byte gUnknown_08CDB2D0
_08095100:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _080951E8
	ldr r0, _080951E0 @ =gUnknown_08CDB334
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08095132
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08095130
	b _080954F0
_08095130:
	add r5, sp, #0x28
_08095132:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0809515C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0809515A
	b _080954F0
_0809515A:
	add r5, sp, #0x28
_0809515C:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _080951C2
	ldr r1, _080951E4 @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _0809519C
	mov r6, sb
_0809516C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08095196
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08095192
	b _080954F0
_08095192:
	add r5, sp, #0x28
	ldr r1, _080951E4 @ =gUnknown_08CDB2D0
_08095196:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0809516C
_0809519C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080951C2
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080951C0
	b _080954F0
_080951C0:
	add r5, sp, #0x28
_080951C2:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _08095424
	.align 2, 0
_080951E0: .4byte gUnknown_08CDB334
_080951E4: .4byte gUnknown_08CDB2D0
_080951E8:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _080952A4
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0809521A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08095218
	b _080954F0
_08095218:
	add r5, sp, #0x28
_0809521A:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _08095282
	ldr r1, _0809529C @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _0809525C
	mov r6, sb
_0809522C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08095256
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08095252
	b _080954F0
_08095252:
	add r5, sp, #0x28
	ldr r1, _0809529C @ =gUnknown_08CDB2D0
_08095256:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0809522C
_0809525C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08095282
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08095280
	b _080954F0
_08095280:
	add r5, sp, #0x28
_08095282:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _0809528E
	b _08095436
_0809528E:
	ldr r0, _080952A0 @ =gUnknown_08CDB338
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _0809541A
	.align 2, 0
_0809529C: .4byte gUnknown_08CDB2D0
_080952A0: .4byte gUnknown_08CDB338
_080952A4:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080952CC
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080952CA
	b _080954F0
_080952CA:
	add r5, sp, #0x28
_080952CC:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _08095308 @ =gUnknown_08CDB338
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080952FC
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080952FA
	b _080954F0
_080952FA:
	add r5, sp, #0x28
_080952FC:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _08095412
	.align 2, 0
_08095308: .4byte gUnknown_08CDB338
_0809530C:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _0809531E
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080953E4
_0809531E:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08095356
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08095354
	b _080954F0
_08095354:
	add r5, sp, #0x28
_08095356:
	ldr r3, _08095380 @ =0x00000000
	ldr r2, _0809537C @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_080926B4
	cmp r0, #0
	beq _08095384
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _080953F0
	.align 2, 0
_0809537C: .4byte 0x00000000
_08095380: .4byte 0x00000000
_08095384:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _0809540C
	ldr r1, _080953E0 @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _080953C4
	mov r6, sb
_08095394:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080953BE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080953BA
	b _080954F0
_080953BA:
	add r5, sp, #0x28
	ldr r1, _080953E0 @ =gUnknown_08CDB2D0
_080953BE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08095394
_080953C4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0809540C
	ldr r0, [sp, #0x1e0]
	b _08095402
	.align 2, 0
_080953E0: .4byte gUnknown_08CDB2D0
_080953E4:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_080953F0:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0809540C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_08095402:
	bl __sprint
	cmp r0, #0
	bne _080954F0
	add r5, sp, #0x28
_0809540C:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_08095412:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_0809541A:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_08095424:
	cmp r0, #7
	ble _08095436
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_0809542C:
	bl __sprint
	cmp r0, #0
	bne _080954F0
	add r5, sp, #0x28
_08095436:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _080954A2
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080954A2
	ldr r1, _080954D4 @ =gUnknown_08CDB2C0
	cmp r4, #0x10
	ble _08095480
	mov r6, sb
_08095452:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0809547A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080954F0
	add r5, sp, #0x28
	ldr r1, _080954D4 @ =gUnknown_08CDB2C0
_0809547A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08095452
_08095480:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080954A2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080954F0
_080954A2:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _080954AC
	adds r0, r4, #0
_080954AC:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080954C6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080954F0
_080954C6:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _0809466C
	.align 2, 0
_080954D4: .4byte gUnknown_08CDB2C0
_080954D8:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080954EA
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	bne _080954F0
_080954EA:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_080954F0:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _08095502
	ldr r1, [sp, #0x1f0]
_08095502:
	adds r0, r1, #0
_08095504:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start cvt
cvt: @ 0x08095514
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _0809553A
	movs r7, #3
	b _0809554A
_0809553A:
	mov r0, sb
	cmp r0, #0x65
	beq _08095544
	cmp r0, #0x45
	bne _08095548
_08095544:
	movs r1, #1
	add r8, r1
_08095548:
	movs r7, #2
_0809554A:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _08095560
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092920
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_08095560:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl _dtoa_r
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _0809558C
	cmp r1, #0x47
	bne _08095594
_0809558C:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _080955E8
_08095594:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _080955C4
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _080955BE
	ldr r3, _08095604 @ =0x00000000
	ldr r2, _08095600 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080926B4
	cmp r0, #0
	beq _080955BE
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_080955BE:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_080955C4:
	ldr r3, _08095604 @ =0x00000000
	ldr r2, _08095600 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092668
	cmp r0, #0
	bne _080955D6
	str r6, [sp, #0x14]
_080955D6:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _080955E8
	movs r1, #0x30
_080955DE:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _080955DE
_080955E8:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08095600: .4byte 0x00000000
_08095604: .4byte 0x00000000

	thumb_func_start exponent
exponent: @ 0x08095608
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _0809561E
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _08095620
_0809561E:
	movs r0, #0x2b
_08095620:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _08095662
_0809562A:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_08091A08
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_08091970
	adds r6, r0, #0
	cmp r6, #9
	bgt _0809562A
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _08095670
	adds r1, r0, #0
_08095654:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _08095654
	b _08095670
_08095662:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_08095670:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __swsetup
__swsetup: @ 0x08095678
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08095688
	ldr r0, _080956B4 @ =0x09F44AAC
	ldr r0, [r0]
	str r0, [r4, #0x54]
_08095688:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _08095696
	adds r0, r1, #0
	bl __sinit
_08095696:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080956F0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080956B8
	movs r0, #1
	rsbs r0, r0, #0
	b _08095722
	.align 2, 0
_080956B4: .4byte 0x09F44AAC
_080956B8:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080956E8
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _080956D6
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _080956D4
	ldr r0, [r4, #0x54]
	bl fREe
_080956D4:
	str r5, [r4, #0x30]
_080956D6:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_080956E8:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080956F0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _080956FC
	adds r0, r4, #0
	bl __smakebuf
_080956FC:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095712
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _08095720
_08095712:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _0809571E
	ldr r1, [r4, #0x14]
_0809571E:
	str r1, [r4, #8]
_08095720:
	movs r0, #0
_08095722:
	pop {r4, r5, pc}

	thumb_func_start sub_08095724
sub_08095724: @ 0x08095724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _08095740
	movs r0, #0
	b _08095874
_08095740:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl sub_08091AE0
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _080957EA
	movs r6, #0
	mov sb, r6
	ldr r0, _080957D4 @ =0x0000FFFF
	mov ip, r0
_08095778:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _08095778
	mov r2, sl
	cmp r2, #0
	bne _080957EA
	ldr r4, [sp, #0x10]
	b _080957DA
	.align 2, 0
_080957D4: .4byte 0x0000FFFF
_080957D8:
	subs r7, #1
_080957DA:
	subs r5, #4
	cmp r5, r4
	bls _080957E6
	ldr r0, [r5]
	cmp r0, #0
	beq _080957D8
_080957E6:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080957EA:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl _mcmp
	cmp r0, #0
	blt _08095872
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _0809585C @ =0x0000FFFF
_0809580C:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _0809580C
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _08095872
	b _08095862
	.align 2, 0
_0809585C: .4byte 0x0000FFFF
_08095860:
	subs r7, #1
_08095862:
	subs r5, #4
	cmp r5, r4
	bls _0809586E
	ldr r0, [r5]
	cmp r0, #0
	beq _08095860
_0809586E:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_08095872:
	ldr r0, [sp, #8]
_08095874:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _dtoa_r
_dtoa_r: @ 0x08095880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _080958B8
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl _Bfree
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_080958B8:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080958D4
	movs r0, #1
	str r0, [r4]
	ldr r0, _080958D0 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _080958D6
	.align 2, 0
_080958D0: .4byte 0x7FFFFFFF
_080958D4:
	str r0, [r4]
_080958D6:
	ldr r1, _08095918 @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _0809592C
	ldr r0, _0809591C @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _08095920 @ =gUnknown_08CDB348
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _080958FE
	ldr r0, _08095924 @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _080958FE
	ldr r2, _08095928 @ =gUnknown_08CDB33C
	mov sb, r2
_080958FE:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _08095950
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _08095910
	adds r1, #5
_08095910:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _08095950
	.align 2, 0
_08095918: .4byte 0x7FF00000
_0809591C: .4byte 0x0000270F
_08095920: .4byte gUnknown_08CDB348
_08095924: .4byte 0x000FFFFF
_08095928: .4byte gUnknown_08CDB33C
_0809592C:
	ldr r3, _0809595C @ =0x00000000
	ldr r2, _08095958 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08092668
	cmp r0, #0
	bne _08095964
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _08095960 @ =gUnknown_08CDB34C
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _08095950
	adds r0, #1
	str r0, [r1]
_08095950:
	mov r0, sb
	bl _0809656A
	.align 2, 0
_08095958: .4byte 0x00000000
_0809595C: .4byte 0x00000000
_08095960: .4byte gUnknown_08CDB34C
_08095964:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl _d2b
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _080959B4
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _080959A8 @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _080959AC @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _080959B0 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _08095A14
	.align 2, 0
_080959A8: .4byte 0x000FFFFF
_080959AC: .4byte 0x3FF00000
_080959B0: .4byte 0xFFFFFC01
_080959B4:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _080959DC @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _080959E4
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _080959E0 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _080959EE
	.align 2, 0
_080959DC: .4byte 0x00000432
_080959E0: .4byte 0x00000412
_080959E4:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_080959EE:
	adds r0, r4, #0
	bl sub_08092830
	cmp r4, #0
	bge _08095A00
	ldr r3, _08095AC4 @ =0x00000000
	ldr r2, _08095AC0 @ =0x41F00000
	bl sub_080920A4
_08095A00:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _08095AC8 @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _08095ACC @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_08095A14:
	ldr r2, _08095AD0 @ =0x3FF80000
	ldr r3, _08095AD4 @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl sub_080920D4
	ldr r2, _08095AD8 @ =0x3FD287A7
	ldr r3, _08095ADC @ =0x636F4361
	bl sub_0809210C
	ldr r2, _08095AE0 @ =0x3FC68A28
	ldr r3, _08095AE4 @ =0x8B60C8B3
	bl sub_080920A4
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl sub_08092830
	ldr r2, _08095AE8 @ =0x3FD34413
	ldr r3, _08095AEC @ =0x509F79FB
	bl sub_0809210C
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080920A4
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl sub_080928AC
	str r0, [sp, #0x24]
	ldr r2, _08095AF0 @ =0x00000000
	ldr r3, _08095AF4 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_08092798
	cmp r0, #0
	bge _08095A84
	ldr r0, [sp, #0x24]
	bl sub_08092830
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_080926B4
	cmp r0, #0
	beq _08095A84
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_08095A84:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _08095AAE
	ldr r1, _08095AF8 @ =gUnknown_08CDB398
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08092798
	cmp r0, #0
	bge _08095AAA
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_08095AAA:
	movs r0, #0
	str r0, [sp, #0x2c]
_08095AAE:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _08095AFC
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _08095B04
	.align 2, 0
_08095AC0: .4byte 0x41F00000
_08095AC4: .4byte 0x00000000
_08095AC8: .4byte 0xFE100000
_08095ACC: .4byte 0xFFFFFBCD
_08095AD0: .4byte 0x3FF80000
_08095AD4: .4byte 0x00000000
_08095AD8: .4byte 0x3FD287A7
_08095ADC: .4byte 0x636F4361
_08095AE0: .4byte 0x3FC68A28
_08095AE4: .4byte 0x8B60C8B3
_08095AE8: .4byte 0x3FD34413
_08095AEC: .4byte 0x509F79FB
_08095AF0: .4byte 0x00000000
_08095AF4: .4byte 0x00000000
_08095AF8: .4byte gUnknown_08CDB398
_08095AFC:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_08095B04:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _08095B18
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _08095B28
_08095B18:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_08095B28:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _08095B32
	movs r0, #0
	str r0, [sp, #0xc]
_08095B32:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _08095B40
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_08095B40:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _08095BBA
	lsls r0, r3, #2
	ldr r1, _08095B54 @ =_08095B58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08095B54: .4byte _08095B58
_08095B58: @ jump table
	.4byte _08095B70 @ case 0
	.4byte _08095B70 @ case 1
	.4byte _08095B82 @ case 2
	.4byte _08095B9E @ case 3
	.4byte _08095B86 @ case 4
	.4byte _08095BA2 @ case 5
_08095B70:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _08095BBA
_08095B82:
	movs r3, #0
	str r3, [sp, #0x30]
_08095B86:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _08095B90
	movs r1, #1
	str r1, [sp, #0xa4]
_08095B90:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _08095BBA
_08095B9E:
	movs r1, #0
	str r1, [sp, #0x30]
_08095BA2:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _08095BBA
	movs r3, #1
	mov r8, r3
_08095BBA:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _08095BDA
	movs r1, #0
_08095BCA:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _08095BCA
	mov r3, sl
	str r1, [r3, #0x44]
_08095BDA:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl _Balloc
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _08095BF2
	b _08095F64
_08095BF2:
	cmp r5, #0
	bne _08095BF8
	b _08095F64
_08095BF8:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _08095C88
	ldr r0, _08095C80 @ =gUnknown_08CDB398
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08095C44
	ands r4, r2
	ldr r0, _08095C84 @ =gUnknown_08CDB460
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_080923B4
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_08095C44:
	cmp r4, #0
	beq _08095C6C
	ldr r5, _08095C84 @ =gUnknown_08CDB460
_08095C4A:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08095C64
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_0809210C
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_08095C64:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _08095C4A
_08095C6C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_080923B4
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _08095CD4
	.align 2, 0
_08095C80: .4byte gUnknown_08CDB398
_08095C84: .4byte gUnknown_08CDB460
_08095C88:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _08095CD4
	ldr r1, _08095D7C @ =gUnknown_08CDB398
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _08095CD4
	ldr r5, _08095D80 @ =gUnknown_08CDB460
_08095CB2:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08095CCC
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08095CCC:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _08095CB2
_08095CD4:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _08095D12
	ldr r2, _08095D84 @ =0x3FF00000
	ldr r3, _08095D88 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08092798
	cmp r0, #0
	bge _08095D12
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _08095D12
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _08095CF8
	b _08095F50
_08095CF8:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _08095D8C @ =0x40240000
	ldr r1, _08095D90 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_08095D12:
	adds r0, r7, #0
	bl sub_08092830
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0809210C
	ldr r2, _08095D94 @ =0x401C0000
	ldr r3, _08095D98 @ =0x00000000
	bl sub_080920A4
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _08095D9C @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _08095DA8
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _08095DA0 @ =0x40140000
	ldr r3, _08095DA4 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080920D4
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08092700
	cmp r0, #0
	ble _08095D60
	b _080962DA
_08095D60:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_08092920
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092798
	cmp r0, #0
	bge _08095D7A
	b _080962D2
_08095D7A:
	b _08095F50
	.align 2, 0
_08095D7C: .4byte gUnknown_08CDB398
_08095D80: .4byte gUnknown_08CDB460
_08095D84: .4byte 0x3FF00000
_08095D88: .4byte 0x00000000
_08095D8C: .4byte 0x40240000
_08095D90: .4byte 0x00000000
_08095D94: .4byte 0x401C0000
_08095D98: .4byte 0x00000000
_08095D9C: .4byte 0xFCC00000
_08095DA0: .4byte 0x40140000
_08095DA4: .4byte 0x00000000
_08095DA8:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _08095E78
	ldr r1, _08095DD8 @ =gUnknown_08CDB398
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _08095DDC @ =0x3FE00000
	ldr r1, _08095DE0 @ =0x00000000
	bl sub_080923B4
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080920D4
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _08095E04
	.align 2, 0
_08095DD8: .4byte gUnknown_08CDB398
_08095DDC: .4byte 0x3FE00000
_08095DE0: .4byte 0x00000000
_08095DE4:
	ldr r1, _08095E6C @ =0x00000000
	ldr r0, _08095E68 @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_0809210C
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _08095E6C @ =0x00000000
	ldr r0, _08095E68 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08095E04:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080928AC
	adds r6, r0, #0
	bl sub_08092830
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080920D4
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08092798
	cmp r0, #0
	bge _08095E40
	b _0809654A
_08095E40:
	ldr r0, _08095E70 @ =0x3FF00000
	ldr r1, _08095E74 @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_080920D4
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08092798
	cmp r0, #0
	bge _08095E5A
	b _08096064
_08095E5A:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _08095DE4
	b _08095F50
	.align 2, 0
_08095E68: .4byte 0x40240000
_08095E6C: .4byte 0x00000000
_08095E70: .4byte 0x3FF00000
_08095E74: .4byte 0x00000000
_08095E78:
	ldr r1, _08095E98 @ =gUnknown_08CDB398
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_0809210C
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _08095EB0
	.align 2, 0
_08095E98: .4byte gUnknown_08CDB398
_08095E9C:
	movs r3, #1
	add r8, r3
	ldr r1, _08095F44 @ =0x00000000
	ldr r0, _08095F40 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08095EB0:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080928AC
	adds r6, r0, #0
	bl sub_08092830
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080920D4
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _08095E9C
	ldr r6, _08095F48 @ =0x3FE00000
	ldr r7, _08095F4C @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080920A4
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092700
	cmp r0, #0
	ble _08095F02
	b _08096064
_08095F02:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080920D4
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092798
	cmp r0, #0
	bge _08095F50
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _08095F2E
	b _0809608A
_08095F2E:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _08095F2E
	b _0809608A
	.align 2, 0
_08095F40: .4byte 0x40240000
_08095F44: .4byte 0x00000000
_08095F48: .4byte 0x3FE00000
_08095F4C: .4byte 0x00000000
_08095F50:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_08095F64:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _08095F6C
	b _080960A0
_08095F6C:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _08095F74
	b _080960A0
_08095F74:
	ldr r1, _08095FC0 @ =gUnknown_08CDB398
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _08095FCC
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _08095FCC
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _08095F9E
	b _080962D2
_08095F9E:
	ldr r2, _08095FC4 @ =0x40140000
	ldr r3, _08095FC8 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_0809210C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080927E4
	cmp r0, #0
	bgt _08095FBC
	b _080962D2
_08095FBC:
	b _080962DA
	.align 2, 0
_08095FC0: .4byte gUnknown_08CDB398
_08095FC4: .4byte 0x40140000
_08095FC8: .4byte 0x00000000
_08095FCC:
	movs r2, #1
	mov r8, r2
	b _08095FF0
_08095FD2:
	ldr r1, _08096094 @ =0x00000000
	ldr r0, _08096090 @ =0x40240000
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _08096098 @ =0x00000000
	ldr r3, _0809609C @ =0x00000000
	bl sub_08092668
	cmp r0, #0
	bne _08095FEC
	b _0809654A
_08095FEC:
	movs r3, #1
	add r8, r3
_08095FF0:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_080923B4
	bl sub_080928AC
	adds r6, r0, #0
	bl sub_08092830
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_0809210C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080920D4
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _08095FD2
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_080920A4
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08092700
	cmp r0, #0
	bgt _08096064
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08092668
	cmp r0, #0
	beq _0809605A
	b _0809654A
_0809605A:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08096064
	b _0809654A
_08096064:
	movs r0, #0x30
_08096066:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _08096082
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _08096066
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_08096082:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0809608A:
	movs r0, #1
	add sb, r0
	b _0809654A
	.align 2, 0
_08096090: .4byte 0x40240000
_08096094: .4byte 0x00000000
_08096098: .4byte 0x00000000
_0809609C: .4byte 0x00000000
_080960A0:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _08096116
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _080960D4
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _080960CC
	ldr r3, _080960C8 @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _08096100
	.align 2, 0
_080960C8: .4byte 0x00000433
_080960CC:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _080960FE
_080960D4:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _080960E2
	subs r6, r0, r4
	b _080960F2
_080960E2:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_080960F2:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _08096100
	subs r5, r5, r3
	movs r0, #0
_080960FE:
	mov r8, r0
_08096100:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x64]
_08096116:
	cmp r5, #0
	ble _08096138
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _08096138
	mov r8, r3
	cmp r8, r5
	ble _08096128
	mov r8, r5
_08096128:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_08096138:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _08096186
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0809617A
	cmp r6, #0
	ble _0809616A
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl _pow5mult
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl _multiply
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	str r4, [sp, #0x5c]
_0809616A:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _08096186
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _08096180
_0809617A:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_08096180:
	bl _pow5mult
	str r0, [sp, #0x5c]
_08096186:
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _080961A0
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _pow5mult
	str r0, [sp, #0x68]
_080961A0:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _080961DC
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _080961D8
	ldr r0, _080961D0 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080961D8
	ldr r0, _080961D4 @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _080961D8
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _080961DC
	.align 2, 0
_080961D0: .4byte 0x000FFFFF
_080961D4: .4byte 0x7FF00000
_080961D8:
	movs r0, #0
	str r0, [sp, #0x3c]
_080961DC:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _08096208
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl _hi0bits
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _08096216
_08096208:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_08096216:
	mov r2, r8
	cmp r2, #0
	beq _08096222
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_08096222:
	mov r3, r8
	cmp r3, #4
	ble _0809622E
	movs r0, #4
	rsbs r0, r0, #0
	b _08096236
_0809622E:
	mov r3, r8
	cmp r3, #3
	bgt _08096246
	movs r0, #0x1c
_08096236:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_08096246:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _08096258
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl _lshift
	str r0, [sp, #0x5c]
_08096258:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _0809626A
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl _lshift
	str r0, [sp, #0x68]
_0809626A:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _080962A8
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl _mcmp
	cmp r0, #0
	bge _080962A8
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080962A4
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_080962A4:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_080962A8:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _080962EC
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _080962EC
	cmp r1, #0
	blt _080962D2
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl _mcmp
	cmp r0, #0
	bgt _080962DA
_080962D2:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _08096522
_080962DA:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _08096522
_080962EC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _080962F4
	b _0809646A
_080962F4:
	cmp r5, #0
	ble _08096304
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl _lshift
	str r0, [sp, #0x64]
_08096304:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _08096336
	ldr r1, [r1, #4]
	mov r0, sl
	bl _Balloc
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x64]
_08096336:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _0809638C
_08096344:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _0809636C
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _08096388
_0809636C:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_08096388:
	movs r1, #1
	add r8, r1
_0809638C:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08095724
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl _mcmp
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl __mdiff
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080963C0
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl _mcmp
	adds r6, r0, #0
	b _080963C2
_080963C0:
	movs r6, #1
_080963C2:
	mov r0, sl
	adds r1, r5, #0
	bl _Bfree
	cmp r6, #0
	bne _080963EE
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080963EE
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080963EE
	cmp r7, #0x39
	beq _08096440
	cmp r4, #0
	ble _080963E4
	adds r7, #1
_080963E4:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _08096522
_080963EE:
	cmp r4, #0
	blt _08096402
	cmp r4, #0
	bne _08096438
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _08096438
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _08096438
_08096402:
	cmp r6, #0
	ble _08096432
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl _mcmp
	adds r6, r0, #0
	cmp r6, #0
	bgt _0809642C
	cmp r6, #0
	bne _08096432
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08096432
_0809642C:
	adds r7, #1
	cmp r7, #0x3a
	beq _08096440
_08096432:
	mov r2, sb
	strb r7, [r2]
	b _080964EA
_08096438:
	cmp r6, #0
	ble _08096458
	cmp r7, #0x39
	bne _0809644C
_08096440:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _080964C0
_0809644C:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _08096522
_08096458:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _08096468
	b _08096344
_08096468:
	b _0809649C
_0809646A:
	movs r0, #1
	mov r8, r0
	b _08096482
_08096470:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_08096482:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08095724
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _08096470
_0809649C:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl _mcmp
	adds r4, r0, #0
	cmp r4, #0
	bgt _080964C0
	cmp r4, #0
	bne _08096502
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _08096502
_080964C0:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _080964E2
_080964CE:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _080964F0
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _080964CE
_080964E2:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080964EA:
	movs r3, #1
	add sb, r3
	b _08096522
_080964F0:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _08096522
_08096502:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _0809651E
_08096510:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _08096510
_0809651E:
	movs r2, #1
	add sb, r2
_08096522:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _Bfree
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _0809654A
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _08096542
	cmp r0, r3
	beq _08096542
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl _Bfree
_08096542:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl _Bfree
_0809654A:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _08096568
	str r1, [r3]
_08096568:
	ldr r0, [sp, #0x74]
_0809656A:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start fflush
fflush: @ 0x08096578
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _08096594
	ldr r0, _0809658C @ =0x09F44AAC
	ldr r0, [r0]
	ldr r1, _08096590 @ =fflush
	bl _fwalk
	b _0809660A
	.align 2, 0
_0809658C: .4byte 0x09F44AAC
_08096590: .4byte fflush
_08096594:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080965A0
	ldr r0, _080965D4 @ =0x09F44AAC
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080965A0:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080965AE
	adds r0, r1, #0
	bl __sinit
_080965AE:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08096608
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _08096608
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080965E6
	ldr r0, [r4, #0x14]
	b _080965E8
	.align 2, 0
_080965D4: .4byte 0x09F44AAC
_080965D8:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _0809660A
_080965E6:
	movs r0, #0
_080965E8:
	str r0, [r4, #8]
	cmp r5, #0
	ble _08096608
_080965EE:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _080965D8
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _080965EE
_08096608:
	movs r0, #0
_0809660A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0809660C
sub_0809660C: @ 0x0809660C
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _08096634 @ =sub_08097564
	str r1, [r0, #0x20]
	ldr r1, _08096638 @ =sub_08097598
	str r1, [r0, #0x24]
	ldr r1, _0809663C @ =sub_080975D8
	str r1, [r0, #0x28]
	ldr r1, _08096640 @ =sub_08097618
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_08096634: .4byte sub_08097564
_08096638: .4byte sub_08097598
_0809663C: .4byte sub_080975D8
_08096640: .4byte sub_08097618

	thumb_func_start sub_08096644
sub_08096644: @ 0x08096644
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl mALLOc
	adds r4, r0, #0
	cmp r4, #0
	beq _08096670
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl memset
	adds r0, r4, #0
	b _08096672
_08096670:
	movs r0, #0
_08096672:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08096674
sub_08096674: @ 0x08096674
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _08096684
	adds r0, r5, #0
	bl __sinit
_08096684:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _0809668E
_0809668C:
	ldr r4, [r4]
_0809668E:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _0809669E
_08096694:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _080966C0
	adds r2, #0x58
_0809669E:
	subs r0, #1
	cmp r0, #0
	bge _08096694
	ldr r0, [r4]
	cmp r0, #0
	bne _0809668C
	adds r0, r5, #0
	movs r1, #4
	bl sub_08096644
	str r0, [r4]
	cmp r0, #0
	bne _0809668C
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _080966E0
_080966C0:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _080966E4 @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_080966E0:
	pop {r4, r5, pc}
	.align 2, 0
_080966E4: .4byte 0x0000FFFF

	thumb_func_start _cleanup_r
_cleanup_r: @ 0x080966E8
	push {lr}
	ldr r1, _080966F4 @ =fflush
	bl _fwalk
	pop {pc}
	.align 2, 0
_080966F4: .4byte fflush

	thumb_func_start sub_080966F8
sub_080966F8: @ 0x080966F8
	push {lr}
	ldr r0, _08096704 @ =0x09F44AAC
	ldr r0, [r0]
	bl _cleanup_r
	pop {pc}
	.align 2, 0
_08096704: .4byte 0x09F44AAC

	thumb_func_start __sinit
__sinit: @ 0x08096708
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08096764 @ =_cleanup_r
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl sub_0809660C
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl sub_0809660C
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl sub_0809660C
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08096764: .4byte _cleanup_r

	thumb_func_start __sfvwrite
__sfvwrite: @ 0x08096768
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _08096780
	b _08096976
_08096780:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08096790
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0809679C
_08096790:
	adds r0, r5, #0
	bl __swsetup
	cmp r0, #0
	beq _0809679C
	b _08096982
_0809679C:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080967F0
_080967AE:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _080967C4
_080967B6:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080967B6
_080967C4:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _080967D0
	adds r2, r1, #0
_080967D0:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _080967DE
	b _0809697A
_080967DE:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080967AE
	b _08096976
_080967F0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080968AA
_080967F8:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _08096810
_08096802:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _08096802
_08096810:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0809683E
	cmp r6, r4
	bhs _08096824
	adds r4, r6, #0
_08096824:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08096BC8
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _08096898
_0809683E:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _08096866
	cmp r6, r4
	bls _08096866
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08096BC8
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	beq _08096864
	b _0809697A
_08096864:
	b _08096898
_08096866:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _08096880
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _0809697A
	b _08096898
_08096880:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08096BC8
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_08096898:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080967F8
	b _08096976
_080968AA:
	movs r2, #0
	str r2, [sp]
_080968AE:
	cmp r6, #0
	bne _080968C4
	movs r0, #0
	str r0, [sp]
_080968B6:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080968B6
_080968C4:
	ldr r0, [sp]
	cmp r0, #0
	bne _080968E8
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl memchr
	adds r1, r0, #0
	cmp r1, #0
	beq _080968E0
	subs r0, r7, #1
	subs r1, r1, r0
	b _080968E2
_080968E0:
	adds r1, r6, #1
_080968E2:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_080968E8:
	mov r2, sb
	cmp sb, r6
	bls _080968F0
	adds r2, r6, #0
_080968F0:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _0809691E
	cmp r2, r4
	ble _0809691E
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08096BC8
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _0809697A
	b _0809694E
_0809691E:
	adds r4, r1, #0
	cmp r2, r4
	blt _08096938
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _0809697A
	b _0809694E
_08096938:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl sub_08096BC8
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_0809694E:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _08096966
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _0809697A
	movs r1, #0
	str r1, [sp]
_08096966:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _080968AE
_08096976:
	movs r0, #0
	b _08096986
_0809697A:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_08096982:
	movs r0, #1
	rsbs r0, r0, #0
_08096986:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _fwalk
_fwalk: @ 0x08096994
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _080969CC
_080969A8:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _080969C0
_080969AE:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080969BE
	adds r0, r5, #0
	bl sub_08091954
	orrs r7, r0
_080969BE:
	adds r5, #0x58
_080969C0:
	subs r4, #1
	cmp r4, #0
	bge _080969AE
	ldr r6, [r6]
	cmp r6, #0
	bne _080969A8
_080969CC:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080969D4
sub_080969D4: @ 0x080969D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _08096A08
	ldr r1, _080969FC @ =gUnknown_08CDB388
	adds r0, r4, #0
	bl sub_08093D48
	cmp r0, #0
	beq _08096A04
	ldr r1, _08096A00 @ =gUnknown_08CDB380
	adds r0, r4, #0
	bl sub_08093D48
	cmp r0, #0
	beq _08096A04
	movs r0, #0
	b _08096A0A
	.align 2, 0
_080969FC: .4byte gUnknown_08CDB388
_08096A00: .4byte gUnknown_08CDB380
_08096A04:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_08096A08:
	ldr r0, _08096A0C @ =gUnknown_08CDB388
_08096A0A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08096A0C: .4byte gUnknown_08CDB388

	thumb_func_start sub_08096A10
sub_08096A10: @ 0x08096A10
	ldr r0, _08096A14 @ =gUnknown_08CDB350
	bx lr
	.align 2, 0
_08096A14: .4byte gUnknown_08CDB350

	thumb_func_start sub_08096A18
sub_08096A18: @ 0x08096A18
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _08096A2C @ =0x09F44AAC
	ldr r0, [r0]
	adds r1, r3, #0
	bl sub_080969D4
	pop {pc}
	.align 2, 0
_08096A2C: .4byte 0x09F44AAC

	thumb_func_start sub_08096A30
sub_08096A30: @ 0x08096A30
	push {lr}
	ldr r0, _08096A3C @ =0x09F44AAC
	ldr r0, [r0]
	bl sub_08096A10
	pop {pc}
	.align 2, 0
_08096A3C: .4byte 0x09F44AAC

	thumb_func_start __smakebuf
__smakebuf: @ 0x08096A40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _08096AD6
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08096A68
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl sub__fstat_r
	cmp r0, #0
	bge _08096A7A
_08096A68:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _08096ABE
_08096A7A:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _08096A8E
	movs r7, #1
_08096A8E:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _08096AB4
	ldr r1, [r4, #0x28]
	ldr r0, _08096AB0 @ =sub_080975D8
	cmp r1, r0
	bne _08096AB4
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _08096AC0
	.align 2, 0
_08096AB0: .4byte sub_080975D8
_08096AB4:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_08096ABE:
	strh r0, [r4, #0xc]
_08096AC0:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl mALLOc
	adds r2, r0, #0
	cmp r2, #0
	bne _08096AE4
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_08096AD6:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _08096B12
_08096AE4:
	ldr r1, [r4, #0x54]
	ldr r0, _08096B18 @ =_cleanup_r
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _08096B12
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl isatty
	cmp r0, #0
	beq _08096B12
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_08096B12:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08096B18: .4byte _cleanup_r

	thumb_func_start _mbtowc_r
_mbtowc_r: @ 0x08096B1C
	sub sp, #4
	cmp r1, #0
	bne _08096B24
	mov r1, sp
_08096B24:
	cmp r2, #0
	beq _08096B40
	cmp r3, #0
	bne _08096B32
	movs r0, #1
	rsbs r0, r0, #0
	b _08096B42
_08096B32:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08096B40
	movs r0, #1
	b _08096B42
_08096B40:
	movs r0, #0
_08096B42:
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start memchr
memchr: @ 0x08096B48
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _08096BBC
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08096BBC
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_08096B64:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _08096B64
	cmp r2, #3
	bls _08096BA2
	ldr r0, _08096BA8 @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _08096BAC @ =0x80808080
_08096B78:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _08096B9A
	adds r1, r4, #0
	movs r3, #0
_08096B8C:
	ldrb r0, [r1]
	cmp r0, r5
	beq _08096BB6
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _08096B8C
_08096B9A:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _08096B78
_08096BA2:
	adds r1, r4, #0
	b _08096BBC
	.align 2, 0
_08096BA8: .4byte 0xFEFEFEFF
_08096BAC: .4byte 0x80808080
_08096BB0:
	ldrb r0, [r1]
	cmp r0, r5
	bne _08096BBA
_08096BB6:
	adds r0, r1, #0
	b _08096BC6
_08096BBA:
	adds r1, #1
_08096BBC:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _08096BB0
	movs r0, #0
_08096BC6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08096BC8
sub_08096BC8: @ 0x08096BC8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _08096BFA
	adds r0, r3, r2
	cmp r5, r0
	bhs _08096BFA
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08096C4C
	adds r1, r0, #0
_08096BEA:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _08096BEA
	b _08096C4C
_08096BFA:
	cmp r2, #0xf
	bls _08096C32
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08096C32
	adds r1, r3, #0
_08096C0C:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08096C0C
	cmp r2, #3
	bls _08096C30
_08096C26:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _08096C26
_08096C30:
	adds r3, r1, #0
_08096C32:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08096C4C
	adds r1, r0, #0
_08096C3E:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08096C3E
_08096C4C:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start _Balloc
_Balloc: @ 0x08096C50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08096C6C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl sub_08097658
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _08096C94
_08096C6C:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _08096C7E
	ldr r0, [r1]
	str r0, [r2]
	b _08096C9C
_08096C7E:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl sub_08097658
	adds r1, r0, #0
	cmp r1, #0
	bne _08096C98
_08096C94:
	movs r0, #0
	b _08096CA4
_08096C98:
	str r6, [r1, #4]
	str r5, [r1, #8]
_08096C9C:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_08096CA4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start _Bfree
_Bfree: @ 0x08096CA8
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _08096CBE
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_08096CBE:
	bx lr

	thumb_func_start _multadd
_multadd: @ 0x08096CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _08096D54 @ =0x0000FFFF
	mov ip, r0
_08096CDC:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _08096CDC
	mov r2, r8
	cmp r2, #0
	beq _08096D4A
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _08096D3A
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl _Balloc
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sb
	adds r1, r5, #0
	bl _Bfree
	adds r5, r4, #0
_08096D3A:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_08096D4A:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08096D54: .4byte 0x0000FFFF

	thumb_func_start _s2b
_s2b: @ 0x08096D58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl sub_08091970
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _08096D80
_08096D78:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _08096D78
_08096D80:
	adds r0, r7, #0
	bl _Balloc
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _08096DB2
	adds r4, #9
_08096D98:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _08096D98
	adds r4, #1
	b _08096DB4
_08096DB2:
	adds r4, #0xa
_08096DB4:
	cmp r5, r8
	bge _08096DD2
	mov r0, r8
	subs r5, r0, r5
_08096DBC:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _08096DBC
_08096DD2:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _hi0bits
_hi0bits: @ 0x08096DDC
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _08096E2C @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _08096DEC
	movs r2, #0x10
	lsls r1, r1, #0x10
_08096DEC:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08096DFA
	adds r2, #8
	lsls r1, r1, #8
_08096DFA:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08096E08
	adds r2, #4
	lsls r1, r1, #4
_08096E08:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08096E16
	adds r2, #2
	lsls r1, r1, #2
_08096E16:
	cmp r1, #0
	blt _08096E30
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _08096E30
	movs r0, #0x20
	b _08096E32
	.align 2, 0
_08096E2C: .4byte 0xFFFF0000
_08096E30:
	adds r0, r2, #0
_08096E32:
	bx lr

	thumb_func_start _lo0bits
_lo0bits: @ 0x08096E34
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08096E64
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08096E4C
	movs r0, #0
	b _08096EB4
_08096E4C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08096E5C
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _08096EB4
_08096E5C:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _08096EB4
_08096E64:
	movs r2, #0
	ldr r0, _08096EAC @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _08096E72
	movs r2, #0x10
	lsrs r1, r1, #0x10
_08096E72:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _08096E7E
	adds r2, #8
	lsrs r1, r1, #8
_08096E7E:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08096E8A
	adds r2, #4
	lsrs r1, r1, #4
_08096E8A:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08096E96
	adds r2, #2
	lsrs r1, r1, #2
_08096E96:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08096EB0
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _08096EB0
	movs r0, #0x20
	b _08096EB4
	.align 2, 0
_08096EAC: .4byte 0x0000FFFF
_08096EB0:
	str r1, [r3]
	adds r0, r2, #0
_08096EB4:
	bx lr
	.align 2, 0

	thumb_func_start _i2b
_i2b: @ 0x08096EB8
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _multiply
_multiply: @ 0x08096ECC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _08096EEC
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_08096EEC:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _08096F02
	adds r1, #1
_08096F02:
	adds r0, r3, #0
	bl _Balloc
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _08096F36
	movs r0, #0
_08096F2E:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _08096F2E
_08096F36:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _08096FFE
_08096F50:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _0809700C @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _08096FA8
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_08096F6E:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08096F6E
	str r0, [r5]
_08096FA8:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _08096FF0
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _0809700C @ =0x0000FFFF
_08096FBC:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08096FBC
	str r2, [r5]
_08096FF0:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _08096F50
_08096FFE:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _08097022
	b _0809701A
	.align 2, 0
_0809700C: .4byte 0x0000FFFF
_08097010:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _08097022
_0809701A:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _08097010
_08097022:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _pow5mult
_pow5mult: @ 0x08097038
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _08097062
	ldr r0, _08097084 @ =gUnknown_08CDB38C
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl _multadd
	adds r7, r0, #0
_08097062:
	asrs r6, r6, #2
	cmp r6, #0
	beq _080970C8
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _080970A4
	ldr r1, _08097088 @ =0x00000271
	bl _i2b
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _080970A4
	.align 2, 0
_08097084: .4byte gUnknown_08CDB38C
_08097088: .4byte 0x00000271
_0809708C:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _080970A2
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl _multiply
	str r0, [r5]
	str r4, [r0]
_080970A2:
	adds r5, r0, #0
_080970A4:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080970C2
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl _multiply
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl _Bfree
	adds r7, r4, #0
_080970C2:
	asrs r6, r6, #1
	cmp r6, #0
	bne _0809708C
_080970C8:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _lshift
_lshift: @ 0x080970D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _080970FA
_080970F2:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _080970F2
_080970FA:
	mov r0, sl
	bl _Balloc
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _0809711A
	movs r1, #0
	adds r2, r6, #0
_08097112:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _08097112
_0809711A:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _0809714C
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_08097132:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _08097132
	str r2, [r4]
	cmp r2, #0
	beq _08097154
	adds r7, #1
	b _08097154
_0809714C:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _0809714C
_08097154:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl _Bfree
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _mcmp
_mcmp: @ 0x08097170
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _080971AC
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_0809718E:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _080971A6
	movs r1, #1
	cmp r0, r2
	bhs _080971A2
	subs r1, #2
_080971A2:
	adds r0, r1, #0
	b _080971AC
_080971A6:
	cmp r3, r4
	bhi _0809718E
	movs r0, #0
_080971AC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __mdiff
__mdiff: @ 0x080971B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl _mcmp
	adds r4, r0, #0
	cmp r4, #0
	bne _080971E2
	adds r0, r6, #0
	movs r1, #0
	bl _Balloc
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _08097292
_080971E2:
	cmp r4, #0
	bge _080971F0
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _080971F2
_080971F0:
	movs r4, #0
_080971F2:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl _Balloc
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _0809727C @ =0x0000FFFF
	mov r8, r0
_08097226:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _08097226
	cmp r6, sl
	bhs _08097286
	ldr r2, _0809727C @ =0x0000FFFF
_08097260:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _08097260
	b _08097286
	.align 2, 0
_0809727C: .4byte 0x0000FFFF
_08097280:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_08097286:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _08097280
	mov r1, sb
	str r1, [r7, #0x10]
_08097292:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _ulp
_ulp: @ 0x080972A0
	push {r4, lr}
	ldr r2, _080972B4 @ =0x7FF00000
	ands r2, r0
	ldr r0, _080972B8 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _080972BC
	adds r3, r2, #0
	movs r4, #0
	b _080972E6
	.align 2, 0
_080972B4: .4byte 0x7FF00000
_080972B8: .4byte 0xFCC00000
_080972BC:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _080972D0
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _080972E6
_080972D0:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _080972E2
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _080972E4
_080972E2:
	movs r1, #1
_080972E4:
	adds r4, r1, #0
_080972E6:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start _b2d
_b2d: @ 0x080972EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl _hi0bits
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _0809734C
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _08097334 @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _08097338
	subs r5, #4
	ldr r1, [r5]
	b _0809733A
	.align 2, 0
_08097334: .4byte 0x3FF00000
_08097338:
	movs r1, #0
_0809733A:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _08097398
_0809734C:
	cmp r5, r8
	bls _08097356
	subs r5, #4
	ldr r4, [r5]
	b _08097358
_08097356:
	movs r4, #0
_08097358:
	subs r3, #0xb
	cmp r3, #0
	beq _08097390
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _0809737C @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _08097380
	subs r5, #4
	ldr r2, [r5]
	b _08097382
	.align 2, 0
_0809737C: .4byte 0x3FF00000
_08097380:
	movs r2, #0
_08097382:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _08097398
_08097390:
	ldr r0, _080973A4 @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_08097398:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080973A4: .4byte 0x3FF00000

	thumb_func_start _d2b
_d2b: @ 0x080973A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _08097410 @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _08097414 @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _080973E6
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_080973E6:
	str r5, [sp]
	cmp r5, #0
	beq _08097430
	mov r0, sp
	bl _lo0bits
	adds r2, r0, #0
	cmp r2, #0
	beq _08097418
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _0809741C
	.align 2, 0
_08097410: .4byte 0x000FFFFF
_08097414: .4byte 0x7FFFFFFF
_08097418:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_0809741C:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _0809742A
	movs r1, #2
_0809742A:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _08097444
_08097430:
	add r0, sp, #4
	bl _lo0bits
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_08097444:
	cmp r7, #0
	beq _08097460
	ldr r3, _0809745C @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _0809747C
	.align 2, 0
_0809745C: .4byte 0xFFFFFBCD
_08097460:
	ldr r1, _0809748C @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl _hi0bits
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_0809747C:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809748C: .4byte 0xFFFFFBCE

	thumb_func_start _ratio
_ratio: @ 0x08097490
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl _b2d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl _b2d
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _080974CC
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _080974D0
_080974CC:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_080974D0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_080923B4
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _mprec_log10
_mprec_log10: @ 0x080974E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080974FC @ =0x00000000
	ldr r0, _080974F8 @ =0x3FF00000
	cmp r4, #0x17
	bgt _08097504
	ldr r0, _08097500 @ =gUnknown_08CDB398
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _08097516
	.align 2, 0
_080974F8: .4byte 0x3FF00000
_080974FC: .4byte 0x00000000
_08097500: .4byte gUnknown_08CDB398
_08097504:
	cmp r4, #0
	ble _08097516
_08097508:
	ldr r3, _0809751C @ =0x00000000
	ldr r2, _08097518 @ =0x40240000
	bl sub_0809210C
	subs r4, #1
	cmp r4, #0
	bgt _08097508
_08097516:
	pop {r4, pc}
	.align 2, 0
_08097518: .4byte 0x40240000
_0809751C: .4byte 0x00000000

	thumb_func_start isinf
isinf: @ 0x08097520
	ldr r3, _0809753C @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _08097540 @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_0809753C: .4byte 0x7FFFFFFF
_08097540: .4byte 0x7FF00000

	thumb_func_start isnan
isnan: @ 0x08097544
	ldr r3, _0809755C @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _08097560 @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_0809755C: .4byte 0x7FFFFFFF
_08097560: .4byte 0x7FF00000

	thumb_func_start sub_08097564
sub_08097564: @ 0x08097564
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_08097738
	adds r1, r0, #0
	cmp r1, #0
	blt _08097586
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _0809758E
_08097586:
	ldr r0, _08097594 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_0809758E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097594: .4byte 0xFFFFEFFF

	thumb_func_start sub_08097598
sub_08097598: @ 0x08097598
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080975BA
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl sub_08097708
_080975BA:
	ldr r0, _080975D4 @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08097628
	pop {r4, r5, r6, pc}
	.align 2, 0
_080975D4: .4byte 0xFFFFEFFF

	thumb_func_start sub_080975D8
sub_080975D8: @ 0x080975D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_08097708
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08097604
	ldr r0, _08097600 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _08097612
	.align 2, 0
_08097600: .4byte 0xFFFFEFFF
_08097604:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_08097612:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08097618
sub_08097618: @ 0x08097618
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_080976B0
	pop {pc}

	thumb_func_start sub_08097628
sub_08097628: @ 0x08097628
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08097654 @ =gUnknown_02015E34
	movs r3, #0
	str r3, [r4]
	bl sub_08093FE0
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0809764E
	ldr r0, [r4]
	cmp r0, #0
	beq _0809764E
	str r0, [r5]
_0809764E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097654: .4byte gUnknown_02015E34

	thumb_func_start sub_08097658
sub_08097658: @ 0x08097658
	push {r4, lr}
	muls r1, r2, r1
	bl mALLOc
	adds r4, r0, #0
	cmp r4, #0
	bne _0809766A
	movs r0, #0
	b _080976AE
_0809766A:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _080976A4
	adds r1, r4, #0
	cmp r2, #0x13
	bls _0809769A
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _0809769A
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _0809769A
	stm r1!, {r0}
	stm r1!, {r0}
_0809769A:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _080976AC
_080976A4:
	adds r0, r4, #0
	movs r1, #0
	bl memset
_080976AC:
	adds r0, r4, #0
_080976AE:
	pop {r4, pc}

	thumb_func_start sub_080976B0
sub_080976B0: @ 0x080976B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080976D8 @ =gUnknown_02015E34
	movs r1, #0
	str r1, [r4]
	bl sub_08094114
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080976D2
	ldr r0, [r4]
	cmp r0, #0
	beq _080976D2
	str r0, [r5]
_080976D2:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080976D8: .4byte gUnknown_02015E34

	thumb_func_start sub__fstat_r
sub__fstat_r: @ 0x_fstat_r
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _08097704 @ =gUnknown_02015E34
	movs r2, #0
	str r2, [r4]
	bl _fstat
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08097700
	ldr r0, [r4]
	cmp r0, #0
	beq _08097700
	str r0, [r5]
_08097700:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097704: .4byte gUnknown_02015E34

	thumb_func_start sub_08097708
sub_08097708: @ 0x08097708
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08097734 @ =gUnknown_02015E34
	movs r3, #0
	str r3, [r4]
	bl sub_08093FB0
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0809772E
	ldr r0, [r4]
	cmp r0, #0
	beq _0809772E
	str r0, [r5]
_0809772E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097734: .4byte gUnknown_02015E34

	thumb_func_start sub_08097738
sub_08097738: @ 0x08097738
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08097764 @ =gUnknown_02015E34
	movs r3, #0
	str r3, [r4]
	bl sub_08093EE4
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0809775E
	ldr r0, [r4]
	cmp r0, #0
	beq _0809775E
	str r0, [r5]
_0809775E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097764: .4byte gUnknown_02015E34
