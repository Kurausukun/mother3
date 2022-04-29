.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0805C894
sub_0805C894: @ 0x0805C894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805C8A8 @ =gGoodsInfo
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, #0x48
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0805C8A8: .4byte gGoodsInfo

	thumb_func_start sub_0805C8AC
sub_0805C8AC: @ 0x0805C8AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	str r0, [sp, #0x7c]
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0
	str r0, [sp]
	cmp r3, #0
	beq _0805C8DA
	movs r0, #1
	str r3, [sp, #4]
	str r0, [sp]
	add r0, sp, #0x18
	mov sl, r0
	movs r1, #0x3c
	adds r1, r1, r7
	mov sb, r1
	b _0805C92A
_0805C8DA:
	movs r4, #0
	ldr r2, _0805C9AC @ =gSave
	mov ip, r2
	add r3, sp, #0x18
	mov sl, r3
	movs r0, #0x3c
	adds r0, r0, r7
	mov sb, r0
	ldr r1, _0805C9B0 @ =gLevelStatTable
	mov r8, r1
	ldr r5, _0805C9B4 @ =gCharStats
_0805C8F0:
	mov r2, ip
	adds r0, r4, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805C924
	movs r0, #0x6c
	adds r2, r1, #0
	muls r2, r0, r2
	adds r2, r2, r5
	ldr r1, [sp]
	adds r3, r1, #1
	cmp r3, #5
	bgt _0805C924
	lsls r1, r1, #2
	add r0, sp, #4
	adds r0, r0, r1
	str r2, [r0]
	str r3, [sp]
_0805C924:
	adds r4, #1
	cmp r4, #4
	ble _0805C8F0
_0805C92A:
	ldr r0, [sp]
	mov r3, sl
	strb r0, [r3]
	movs r5, #0
	ldr r1, [sp]
	cmp r5, r1
	bge _0805C95A
	mov r4, sl
	adds r4, #4
	add r0, sp, #4
	mov r8, r0
_0805C940:
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	ldm r1!, {r0}
	adds r1, r4, #0
	bl sub_080687C0
	adds r4, #0x10
	adds r5, #1
	ldr r0, [sp]
	cmp r5, r0
	blt _0805C940
_0805C95A:
	movs r2, #0
	ldr r1, [sp]
_0805C95E:
	mov r3, sb
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, r6
	beq _0805C96A
	b _0805CB24
_0805C96A:
	movs r4, #0
	cmp r4, r1
	blt _0805C972
	b _0805CB2C
_0805C972:
	ldr r0, _0805C9B8 @ =gGoodsInfo
	movs r1, #0x6c
	muls r1, r6, r1
	adds r0, #0x48
	adds r1, r1, r0
	ldr r1, [r1]
	lsls r3, r4, #2
	cmp r1, #2
	beq _0805C996
	cmp r1, #4
	beq _0805C996
	adds r0, r3, #4
	add r0, sp
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bgt _0805C996
	b _0805CB14
_0805C996:
	adds r0, r6, #0
	subs r0, #0x69
	cmp r0, #0x2b
	bls _0805C9A0
	b _0805CAFC
_0805C9A0:
	lsls r0, r0, #2
	ldr r1, _0805C9BC @ =_0805C9C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C9AC: .4byte gSave
_0805C9B0: .4byte gLevelStatTable
_0805C9B4: .4byte gCharStats
_0805C9B8: .4byte gGoodsInfo
_0805C9BC: .4byte _0805C9C0
_0805C9C0: @ jump table
	.4byte _0805CA70 @ case 0
	.4byte _0805CAFC @ case 1
	.4byte _0805CAFC @ case 2
	.4byte _0805CAFC @ case 3
	.4byte _0805CAFC @ case 4
	.4byte _0805CAFC @ case 5
	.4byte _0805CAFC @ case 6
	.4byte _0805CAFC @ case 7
	.4byte _0805CAFC @ case 8
	.4byte _0805CA8C @ case 9
	.4byte _0805CA8C @ case 10
	.4byte _0805CAFC @ case 11
	.4byte _0805CAFC @ case 12
	.4byte _0805CAFC @ case 13
	.4byte _0805CAFC @ case 14
	.4byte _0805CAFC @ case 15
	.4byte _0805CAFC @ case 16
	.4byte _0805CAFC @ case 17
	.4byte _0805CAFC @ case 18
	.4byte _0805CAFC @ case 19
	.4byte _0805CAFC @ case 20
	.4byte _0805CAFC @ case 21
	.4byte _0805CAFC @ case 22
	.4byte _0805CAFC @ case 23
	.4byte _0805CAFC @ case 24
	.4byte _0805CAFC @ case 25
	.4byte _0805CAFC @ case 26
	.4byte _0805CAFC @ case 27
	.4byte _0805CAFC @ case 28
	.4byte _0805CAFC @ case 29
	.4byte _0805CAFC @ case 30
	.4byte _0805CAFC @ case 31
	.4byte _0805CAFC @ case 32
	.4byte _0805CAFC @ case 33
	.4byte _0805CAFC @ case 34
	.4byte _0805CAFC @ case 35
	.4byte _0805CAFC @ case 36
	.4byte _0805CAFC @ case 37
	.4byte _0805CAA8 @ case 38
	.4byte _0805CAFC @ case 39
	.4byte _0805CAFC @ case 40
	.4byte _0805CAFC @ case 41
	.4byte _0805CAC4 @ case 42
	.4byte _0805CAE0 @ case 43
_0805CA70:
	movs r0, #0x6c
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0805CA88 @ =gUnknown_080E5148
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_0805CB78
	b _0805CB14
	.align 2, 0
_0805CA88: .4byte gUnknown_080E5148
_0805CA8C:
	movs r0, #0x6c
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0805CAA4 @ =gUnknown_080E5148
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_0805CC10
	b _0805CB14
	.align 2, 0
_0805CAA4: .4byte gUnknown_080E5148
_0805CAA8:
	movs r0, #0x6c
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0805CAC0 @ =gUnknown_080E5148
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_0805CC4C
	b _0805CB14
	.align 2, 0
_0805CAC0: .4byte gUnknown_080E5148
_0805CAC4:
	movs r0, #0x6c
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0805CADC @ =gUnknown_080E5148
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_0805CC5C
	b _0805CB14
	.align 2, 0
_0805CADC: .4byte gUnknown_080E5148
_0805CAE0:
	movs r0, #0x6c
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0805CAF8 @ =gUnknown_080E5148
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_0805CCA4
	b _0805CB14
	.align 2, 0
_0805CAF8: .4byte gUnknown_080E5148
_0805CAFC:
	movs r0, #0x6c
	adds r2, r6, #0
	muls r2, r0, r2
	ldr r0, _0805CB20 @ =gUnknown_080E5148
	adds r2, r2, r0
	adds r0, r3, #4
	add r0, sp
	ldr r3, [r0]
	add r0, sp, #0x6c
	adds r1, r7, #0
	bl sub_080687DC
_0805CB14:
	adds r4, #1
	ldr r1, [sp]
	cmp r4, r1
	bge _0805CB1E
	b _0805C972
_0805CB1E:
	b _0805CB2C
	.align 2, 0
_0805CB20: .4byte gUnknown_080E5148
_0805CB24:
	adds r2, #1
	cmp r2, #0xf
	bgt _0805CB2C
	b _0805C95E
_0805CB2C:
	movs r5, #0
	cmp r5, r1
	bge _0805CB58
	movs r0, #0x6c
	adds r7, r6, #0
	muls r7, r0, r7
	mov r4, sl
	adds r4, #4
	add r6, sp, #4
	ldr r0, _0805CB74 @ =gUnknown_080E5148
	mov r8, r0
_0805CB42:
	ldm r6!, {r0}
	mov r2, r8
	adds r1, r7, r2
	adds r2, r4, #0
	bl sub_080688B0
	adds r4, #0x10
	adds r5, #1
	ldr r0, [sp]
	cmp r5, r0
	blt _0805CB42
_0805CB58:
	ldr r0, [sp, #0x7c]
	mov r1, sl
	movs r2, #0x54
	bl memcpy
	ldr r0, [sp, #0x7c]
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805CB74: .4byte gUnknown_080E5148

	thumb_func_start sub_0805CB78
sub_0805CB78: @ 0x0805CB78
	push {r4, lr}
	adds r4, r2, #0
	movs r2, #0
	ldrb r0, [r4]
	subs r0, #1
	cmp r0, #5
	bhi _0805CBC4
	lsls r0, r0, #2
	ldr r1, _0805CB90 @ =_0805CB94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CB90: .4byte _0805CB94
_0805CB94: @ jump table
	.4byte _0805CBBE @ case 0
	.4byte _0805CBAC @ case 1
	.4byte _0805CBBE @ case 2
	.4byte _0805CBC2 @ case 3
	.4byte _0805CBC2 @ case 4
	.4byte _0805CBC2 @ case 5
_0805CBAC:
	adds r0, r4, #0
	bl sub_0805CBE0
	movs r1, #1
	ands r1, r0
	movs r2, #0x3c
	cmp r1, #0
	bne _0805CBC4
	b _0805CBC2
_0805CBBE:
	movs r2, #0x3c
	b _0805CBC4
_0805CBC2:
	movs r2, #0x14
_0805CBC4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldr r2, [r4, #0x20]
	movs r1, #0
	cmp r0, #0
	blt _0805CBD8
	adds r1, r0, #0
	cmp r1, r2
	ble _0805CBD8
	adds r1, r2, #0
_0805CBD8:
	str r1, [r4, #0x18]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805CBE0
sub_0805CBE0: @ 0x0805CBE0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	movs r2, #0
	ldrh r0, [r4, #2]
	ldr r1, _0805CC0C @ =0x0000FFFF
	cmp r0, r1
	beq _0805CC04
	adds r5, r1, #0
	adds r1, r4, #2
_0805CBF4:
	adds r3, #1
	adds r1, #2
	adds r2, #1
	cmp r2, #7
	bgt _0805CC04
	ldrh r0, [r1]
	cmp r0, r5
	bne _0805CBF4
_0805CC04:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805CC0C: .4byte 0x0000FFFF

	thumb_func_start sub_0805CC10
sub_0805CC10: @ 0x0805CC10
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldrb r0, [r3]
	cmp r0, #5
	bne _0805CC2C
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080687DC
	b _0805CC42
_0805CC2C:
	ldr r0, [r3, #0x18]
	adds r0, #6
	ldr r2, [r3, #0x20]
	movs r1, #0
	cmp r0, #0
	blt _0805CC40
	adds r1, r0, #0
	cmp r1, r2
	ble _0805CC40
	adds r1, r2, #0
_0805CC40:
	str r1, [r3, #0x18]
_0805CC42:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805CC4C
sub_0805CC4C: @ 0x0805CC4C
	ldrh r1, [r2, #0x30]
	ldr r0, _0805CC58 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0805CC58: .4byte 0x0000FFF7

	thumb_func_start sub_0805CC5C
sub_0805CC5C: @ 0x0805CC5C
	push {r4, r5, lr}
	adds r4, r2, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bgt _0805CC7C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _0805CC6E
	adds r0, #3
_0805CC6E:
	asrs r1, r0, #2
	movs r0, #1
	cmp r0, r1
	bge _0805CC78
	adds r0, r1, #0
_0805CC78:
	str r0, [r4, #0x18]
	b _0805CC9C
_0805CC7C:
	movs r3, #1
	movs r5, #1
	ldrh r2, [r4, #0x30]
_0805CC82:
	subs r0, r3, #1
	adds r1, r5, #0
	lsls r1, r0
	adds r0, r2, #0
	bics r0, r1
	adds r1, r0, #0
	adds r2, r1, #0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #8
	bls _0805CC82
	strh r1, [r4, #0x30]
_0805CC9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805CCA4
sub_0805CCA4: @ 0x0805CCA4
	push {r4, r5, lr}
	adds r4, r2, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bgt _0805CCB4
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x18]
	b _0805CCD4
_0805CCB4:
	movs r3, #1
	movs r5, #1
	ldrh r2, [r4, #0x30]
_0805CCBA:
	subs r0, r3, #1
	adds r1, r5, #0
	lsls r1, r0
	adds r0, r2, #0
	bics r0, r1
	adds r1, r0, #0
	adds r2, r1, #0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #8
	bls _0805CCBA
	strh r1, [r4, #0x30]
_0805CCD4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805CCDC
sub_0805CCDC: @ 0x0805CCDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r4, #0
	adds r5, #0x3c
	adds r1, r5, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805CD28
	ldr r2, _0805CD24 @ =gGoodsInfo
	ldrb r1, [r1]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805CD28
	adds r1, r3, #0
	adds r2, r1, #1
	adds r4, #0x4b
	cmp r2, #0xf
	bgt _0805CD1C
	adds r3, r5, #0
_0805CD0C:
	adds r0, r3, r1
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r1, r2, #0
	adds r2, #1
	cmp r2, #0xf
	ble _0805CD0C
_0805CD1C:
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	b _0805CD2A
	.align 2, 0
_0805CD24: .4byte gGoodsInfo
_0805CD28:
	movs r0, #0
_0805CD2A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805CD30
sub_0805CD30: @ 0x0805CD30
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	adds r5, r6, #0
	adds r0, r3, #0
	bl sub_0805CE34
	adds r3, r0, #0
	cmp r4, #0
	bne _0805CD88
	cmp r6, #1
	bne _0805CD74
	ldr r0, _0805CD6C @ =gSave
	lsls r2, r3, #0xd
	lsrs r2, r2, #0x10
	ldr r1, _0805CD70 @ =0x0000074A
	adds r0, r0, r1
	adds r2, r2, r0
	movs r0, #7
	ands r3, r0
	adds r0, r6, #0
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
	b _0805CDC8
	.align 2, 0
_0805CD6C: .4byte gSave
_0805CD70: .4byte 0x0000074A
_0805CD74:
	ldr r0, _0805CD80 @ =gSave
	lsls r2, r3, #0xd
	lsrs r2, r2, #0x10
	ldr r1, _0805CD84 @ =0x0000074A
	b _0805CDB8
	.align 2, 0
_0805CD80: .4byte gSave
_0805CD84: .4byte 0x0000074A
_0805CD88:
	cmp r5, #1
	bne _0805CDB0
	ldr r0, _0805CDA8 @ =gSave
	lsls r1, r3, #0xd
	lsrs r1, r1, #0x10
	ldr r2, _0805CDAC @ =0x0000076A
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #7
	ands r3, r0
	lsls r5, r3
	ldrb r0, [r1]
	orrs r5, r0
	strb r5, [r1]
	b _0805CDCA
	.align 2, 0
_0805CDA8: .4byte gSave
_0805CDAC: .4byte 0x0000076A
_0805CDB0:
	ldr r0, _0805CDD0 @ =gSave
	lsls r2, r3, #0xd
	lsrs r2, r2, #0x10
	ldr r1, _0805CDD4 @ =0x0000076A
_0805CDB8:
	adds r0, r0, r1
	adds r2, r2, r0
	movs r0, #7
	ands r3, r0
	movs r1, #1
	lsls r1, r3
	ldrb r0, [r2]
	bics r0, r1
_0805CDC8:
	strb r0, [r2]
_0805CDCA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805CDD0: .4byte gSave
_0805CDD4: .4byte 0x0000076A

	thumb_func_start sub_0805CDD8
sub_0805CDD8: @ 0x0805CDD8
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r2, #0
	bl sub_0805CE34
	adds r2, r0, #0
	cmp r4, #0
	bne _0805CE04
	ldr r1, _0805CDFC @ =gSave
	lsls r0, r2, #0xd
	lsrs r0, r0, #0x10
	ldr r3, _0805CE00 @ =0x0000074A
	b _0805CE0C
	.align 2, 0
_0805CDFC: .4byte gSave
_0805CE00: .4byte 0x0000074A
_0805CE04:
	ldr r1, _0805CE24 @ =gSave
	lsls r0, r2, #0xd
	lsrs r0, r0, #0x10
	ldr r3, _0805CE28 @ =0x0000076A
_0805CE0C:
	adds r1, r1, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #7
	ands r2, r1
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0805CE2C
	movs r0, #0
	b _0805CE2E
	.align 2, 0
_0805CE24: .4byte gSave
_0805CE28: .4byte 0x0000076A
_0805CE2C:
	movs r0, #1
_0805CE2E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805CE34
sub_0805CE34: @ 0x0805CE34
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	beq _0805CE50
	cmp r0, #0x1d
	bgt _0805CE48
	cmp r0, #0x15
	beq _0805CE54
	b _0805CE56
_0805CE48:
	cmp r0, #0x1e
	bne _0805CE56
	movs r0, #0x5e
	b _0805CE56
_0805CE50:
	movs r0, #0xaa
	b _0805CE56
_0805CE54:
	movs r0, #0x8d
_0805CE56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805CE5C
sub_0805CE5C: @ 0x0805CE5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805CE70 @ =gMonsterData
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, #0x74
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_0805CE70: .4byte gMonsterData

	thumb_func_start sub_0805CE74
sub_0805CE74: @ 0x0805CE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	ldr r7, _0805CF7C @ =gUnknown_02005090
	ldrh r5, [r7]
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #4
	ldr r1, _0805CF80 @ =gMonsterData
	adds r0, r0, r1
	str r0, [sp, #0x54]
	add r0, sp, #0xc
	bl sub_0805D2A4
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, _0805CF84 @ =_vt.1D
	mov sb, r1
	str r1, [sp, #0x1c]
	movs r0, #0
	str r0, [sp, #0x14]
	mov r2, sl
	str r0, [r2, #4]
	add r3, sp, #0x20
	mov r8, r3
	str r1, [sp, #0x28]
	str r0, [sp, #0x20]
	str r0, [r3, #4]
	mov r6, sp
	adds r6, #0x2c
	str r6, [sp, #0x58]
	str r1, [sp, #0x34]
	str r0, [sp, #0x2c]
	str r0, [r6, #4]
	add r4, sp, #0x38
	ldr r0, _0805CF88 @ =gUnknown_09C90960
	movs r1, #1
	rsbs r1, r1, #0
	mov r2, sb
	str r2, [sp, #0x40]
	str r0, [sp, #0x38]
	str r1, [r4, #4]
	add r0, sp, #0xc
	adds r1, r4, #0
	bl sub_0805D2D4
	mov r3, sb
	str r3, [sp, #0x40]
	mov r6, sl
	ldr r0, [r6, #8]
	str r0, [sp, #0x44]
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r2, r5, r0
	adds r0, r4, #0
	add r1, sp, #0xc
	bl sub_0805D2F0
	mov r1, sl
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [sp, #0x44]
	mov r1, sl
	str r0, [r1, #8]
	mov r2, sb
	str r2, [sp, #0x40]
	mov r3, r8
	ldr r0, [r3, #8]
	str r0, [sp, #0x44]
	adds r2, r5, #0
	adds r2, #8
	adds r0, r4, #0
	add r1, sp, #0xc
	bl sub_0805D2F0
	mov r1, r8
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [sp, #0x44]
	mov r6, r8
	str r0, [r6, #8]
	mov r0, sb
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x58]
	ldr r0, [r1, #8]
	str r0, [sp, #0x44]
	ldr r3, _0805CF8C @ =0x00000179
	adds r2, r5, r3
	adds r0, r4, #0
	add r1, sp, #0xc
	bl sub_0805D2F0
	ldr r0, [sp, #0x58]
	ldm r4!, {r1, r2, r6}
	stm r0!, {r1, r2, r6}
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x58]
	str r0, [r3, #8]
	mov r6, sb
	str r6, [sp, #0x40]
	ldrh r0, [r7, #2]
	ldr r6, [sp, #0x58]
	cmp r0, #0
	bne _0805CF90
	movs r0, #0xa
	ldrsh r3, [r7, r0]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	ldr r0, [sp, #0x54]
	adds r0, #0x70
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r2, sp, #0x4c
	adds r1, r1, r0
	strh r3, [r2]
	strh r1, [r2, #2]
	ldrh r3, [r7, #8]
	ldrh r0, [r7, #4]
	str r0, [sp]
	ldrh r0, [r7, #6]
	str r0, [sp, #4]
	ldr r0, [r7, #0x1c]
	str r0, [sp, #8]
	mov r0, sl
	movs r1, #0
	b _0805CFBC
	.align 2, 0
_0805CF7C: .4byte gUnknown_02005090
_0805CF80: .4byte gMonsterData
_0805CF84: .4byte _vt.1D
_0805CF88: .4byte gUnknown_09C90960
_0805CF8C: .4byte 0x00000179
_0805CF90:
	movs r0, #0xa
	ldrsh r3, [r7, r0]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	ldr r0, [sp, #0x54]
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r2, sp, #0x50
	adds r1, r1, r0
	strh r3, [r2]
	strh r1, [r2, #2]
	ldrh r3, [r7, #8]
	ldrh r0, [r7, #4]
	str r0, [sp]
	ldrh r0, [r7, #6]
	str r0, [sp, #4]
	ldr r0, [r7, #0x1c]
	str r0, [sp, #8]
	mov r0, sl
	movs r1, #1
_0805CFBC:
	bl sub_0805D06C
	strh r0, [r7, #0x10]
	ldr r4, _0805CFF8 @ =gUnknown_02005090
	ldr r1, [r4, #0x14]
	mov r0, r8
	bl sub_0805D140
	strh r0, [r4, #0xe]
	lsrs r7, r5, #3
	movs r0, #7
	ands r5, r0
	movs r2, #1
	lsls r2, r5
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0805D004
	ldr r0, _0805CFFC @ =gSave
	ldr r3, _0805D000 @ =0x0000074A
	adds r0, r0, r3
	adds r0, r7, r0
	ldrb r1, [r0]
	ands r1, r2
	cmp r1, #0
	bne _0805D004
	add r0, sp, #0x48
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	b _0805D024
	.align 2, 0
_0805CFF8: .4byte gUnknown_02005090
_0805CFFC: .4byte gSave
_0805D000: .4byte 0x0000074A
_0805D004:
	ldr r0, _0805D02C @ =gUnknown_02005090
	ldrh r1, [r0, #2]
	adds r3, r0, #0
	cmp r1, #1
	bne _0805D03C
	ldr r0, _0805D030 @ =gSave
	ldr r1, _0805D034 @ =0x0000076A
	adds r0, r0, r1
	adds r0, r7, r0
	ldrb r1, [r0]
	ands r1, r2
	cmp r1, #0
	bne _0805D03C
	add r0, sp, #0x48
	strh r1, [r0]
	ldr r1, [r3, #0x18]
_0805D024:
	ldr r2, _0805D038 @ =0x01000010
	bl CpuSet
	b _0805D044
	.align 2, 0
_0805D02C: .4byte gUnknown_02005090
_0805D030: .4byte gSave
_0805D034: .4byte 0x0000076A
_0805D038: .4byte 0x01000010
_0805D03C:
	ldr r1, [r3, #0x18]
	adds r0, r6, #0
	bl sub_0805D154
_0805D044:
	ldr r0, _0805D068 @ =_vt.1D
	str r0, [sp, #0x34]
	str r0, [sp, #0x28]
	str r0, [sp, #0x1c]
	add r0, sp, #0xc
	movs r1, #2
	bl sub_0805D2B4
	movs r0, #1
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805D068: .4byte _vt.1D

	thumb_func_start sub_0805D06C
sub_0805D06C: @ 0x0805D06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r2
	adds r5, r3, #0
	ldr r3, [sp, #0x2c]
	lsls r1, r1, #0x10
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #8
	lsrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r6, r2, r0
	ldrh r0, [r6]
	lsls r0, r0, #3
	adds r0, #4
	adds r4, r6, r0
	movs r7, #0
	ldrh r0, [r6, #2]
	cmp r7, r0
	bge _0805D11E
	movs r0, #3
	ands r5, r0
	lsls r5, r5, #2
	mov r8, r5
	movs r1, #0xd
	rsbs r1, r1, #0
	mov sl, r1
	ldr r2, _0805D130 @ =0xFFFFFC00
	mov sb, r2
	ldr r0, [sp, #0x28]
	lsls r0, r0, #4
	str r0, [sp]
_0805D0B6:
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldrh r2, [r3, #2]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	mov r5, ip
	ldrh r5, [r5]
	adds r1, r1, r5
	ldr r5, _0805D134 @ =0x000001FF
	adds r0, r5, #0
	ands r1, r0
	ldr r0, _0805D138 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	mov r1, ip
	ldrb r0, [r1, #2]
	ldrb r2, [r3]
	adds r0, r0, r2
	strb r0, [r3]
	ldrb r1, [r3, #5]
	mov r0, sl
	ands r0, r1
	mov r5, r8
	orrs r0, r5
	strb r0, [r3, #5]
	ldrh r2, [r3, #4]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0x24]
	adds r1, r1, r0
	ldr r5, _0805D13C @ =0x000003FF
	adds r0, r5, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #0xf
	ands r0, r1
	ldr r1, [sp]
	orrs r0, r1
	strb r0, [r3, #5]
	adds r4, #8
	adds r3, #8
	adds r7, #1
	ldrh r2, [r6, #2]
	cmp r7, r2
	blt _0805D0B6
_0805D11E:
	ldrh r0, [r6, #2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805D130: .4byte 0xFFFFFC00
_0805D134: .4byte 0x000001FF
_0805D138: .4byte 0xFFFFFE00
_0805D13C: .4byte 0x000003FF

	thumb_func_start sub_0805D140
sub_0805D140: @ 0x0805D140
	push {r4, lr}
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_08090F8C
	ldrh r0, [r4, #8]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805D154
sub_0805D154: @ 0x0805D154
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r3, [r4, #4]
	movs r2, #0x20
	cmp r2, r3
	bls _0805D164
	adds r2, r3, #0
_0805D164:
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	bl CpuSet
	ldr r0, [r4, #4]
	lsrs r0, r0, #5
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D178
sub_0805D178: @ 0x0805D178
	push {lr}
	cmp r0, #0
	bge _0805D180
	rsbs r0, r0, #0
_0805D180:
	cmp r1, #0
	bge _0805D186
	rsbs r1, r1, #0
_0805D186:
	cmp r0, r1
	blt _0805D190
	adds r3, r0, #0
	adds r0, r1, #0
	b _0805D192
_0805D190:
	adds r3, r1, #0
_0805D192:
	asrs r2, r0, #1
	adds r2, r0, r2
	asrs r0, r3, #5
	subs r0, r3, r0
	asrs r1, r3, #7
	subs r0, r0, r1
	asrs r1, r2, #2
	adds r0, r0, r1
	asrs r2, r2, #6
	adds r0, r0, r2
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D1AC
sub_0805D1AC: @ 0x0805D1AC
	push {r4, lr}
	adds r4, r2, #0
	adds r2, r0, #0
	cmp r2, #0
	bge _0805D1B8
	rsbs r2, r2, #0
_0805D1B8:
	adds r3, r1, #0
	cmp r3, #0
	bge _0805D1C0
	rsbs r3, r3, #0
_0805D1C0:
	cmp r4, #0
	bge _0805D1C6
	rsbs r4, r4, #0
_0805D1C6:
	cmp r2, r3
	bge _0805D1D0
	adds r0, r2, #0
	adds r2, r3, #0
	adds r3, r0, #0
_0805D1D0:
	cmp r3, r4
	bge _0805D1DA
	adds r0, r3, #0
	adds r3, r4, #0
	adds r4, r0, #0
_0805D1DA:
	cmp r2, r3
	bge _0805D1E4
	adds r0, r2, #0
	adds r2, r3, #0
	adds r3, r0, #0
_0805D1E4:
	asrs r0, r2, #1
	asrs r1, r2, #2
	adds r0, r0, r1
	asrs r1, r2, #3
	adds r0, r0, r1
	asrs r1, r2, #4
	adds r0, r0, r1
	asrs r1, r3, #2
	asrs r2, r3, #3
	adds r1, r1, r2
	asrs r2, r3, #6
	adds r1, r1, r2
	adds r0, r0, r1
	asrs r1, r4, #2
	asrs r2, r4, #5
	adds r1, r1, r2
	asrs r2, r4, #6
	adds r1, r1, r2
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805D210
sub_0805D210: @ 0x0805D210
	ldr r1, _0805D218 @ =gUnknown_02001C58
	str r0, [r1]
	bx lr
	.align 2, 0
_0805D218: .4byte gUnknown_02001C58

	thumb_func_start sub_0805D21C
sub_0805D21C: @ 0x0805D21C
	ldr r2, _0805D230 @ =gUnknown_02001C58
	ldr r1, [r2]
	adds r1, #8
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	adds r0, #0x25
	str r0, [r2]
	bx lr
	.align 2, 0
_0805D230: .4byte gUnknown_02001C58

	thumb_func_start sub_0805D234
sub_0805D234: @ 0x0805D234
	push {r4, lr}
	ldr r4, _0805D25C @ =gUnknown_02001C58
	ldr r3, [r4]
	adds r3, #5
	lsls r2, r3, #4
	adds r2, r2, r3
	lsls r2, r2, #2
	subs r2, r2, r3
	adds r2, #0x1f
	str r2, [r4]
	subs r3, r0, #1
	subs r1, r1, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	muls r1, r2, r1
	asrs r1, r1, #8
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805D25C: .4byte gUnknown_02001C58

	thumb_func_start sub_0805D260
sub_0805D260: @ 0x0805D260
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	cmp r1, #1
	ble _0805D276
_0805D26A:
	ldrh r0, [r2]
	adds r3, r3, r0
	adds r2, #2
	subs r1, #4
	cmp r1, #1
	bgt _0805D26A
_0805D276:
	cmp r1, #0
	bge _0805D284
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	adds r3, r3, r0
_0805D284:
	ldr r2, _0805D2A0 @ =0x0000FFFF
	adds r0, r3, #0
	ands r0, r2
	lsrs r1, r3, #0x10
	adds r3, r0, r1
	adds r0, r3, #0
	ands r0, r2
	lsrs r1, r3, #0x10
	adds r3, r0, r1
	mvns r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0805D2A0: .4byte 0x0000FFFF

	thumb_func_start sub_0805D2A4
sub_0805D2A4: @ 0x0805D2A4
	ldr r1, _0805D2B0 @ =vt_09F44F18
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_0805D2B0: .4byte vt_09F44F18

	thumb_func_start sub_0805D2B4
sub_0805D2B4: @ 0x0805D2B4
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805D2D0 @ =vt_09F44F18
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805D2CA
	adds r0, r2, #0
	bl __builtin_delete
_0805D2CA:
	pop {r0}
	bx r0
	.align 2, 0
_0805D2D0: .4byte vt_09F44F18

	thumb_func_start sub_0805D2D4
sub_0805D2D4: @ 0x0805D2D4
	ldr r1, [r1]
	str r1, [r0]
	movs r0, #1
	bx lr

	thumb_func_start sub_0805D2DC
sub_0805D2DC: @ 0x0805D2DC
	push {lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _0805D2E8
	ldrh r0, [r0, #4]
	b _0805D2EA
_0805D2E8:
	movs r0, #0
_0805D2EA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D2F0
sub_0805D2F0: @ 0x0805D2F0
	push {lr}
	adds r3, r0, #0
	adds r0, r2, #0
	ldr r2, [r1]
	cmp r2, #0
	bne _0805D308
	ldr r0, _0805D304 @ =_vt.1D
	str r0, [r3, #8]
	str r2, [r3]
	b _0805D31C
	.align 2, 0
_0805D304: .4byte _vt.1D
_0805D308:
	adds r1, r2, #0
	adds r1, #8
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r2, r1
	ldr r2, [r0, #4]
	ldr r0, _0805D324 @ =_vt.1D
	str r0, [r3, #8]
	str r1, [r3]
_0805D31C:
	str r2, [r3, #4]
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805D324: .4byte _vt.1D
