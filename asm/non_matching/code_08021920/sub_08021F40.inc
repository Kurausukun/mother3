	.syntax unified
sub_08021F40:
	push {r4, r5, lr}
	adds r3, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08021F5C
	adds r0, r0, r1
	cmp r0, #8
	bhi _0802201C
	lsls r0, r0, #2
	ldr r1, _08021F60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021F5C: .4byte 0xFFFF00C0
_08021F60: .4byte _08021F64
_08021F64:
	.4byte _08021F88
	.4byte _0802201C
	.4byte _08021FAC
	.4byte _0802201C
	.4byte _08021FE4
	.4byte _08021FEC
	.4byte _08021FF4
	.4byte _08021FFC
	.4byte _0802200C
_08021F88:
	ldr r0, _08021FA0
	ldr r1, [r0, #8]
	ldr r0, _08021FA4
	ldr r2, _08021FA8
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08022120
	b _0802201E
	.align 2, 0
_08021FA0: .4byte gSave
_08021FA4: .4byte gSomeBlend
_08021FA8: .4byte 0x00011C80
_08021FAC:
	adds r0, r3, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0x86
	ldrb r1, [r0]
	movs r0, #0x6c
	adds r4, r1, #0
	muls r4, r0, r4
	ldr r0, _08021FE0
	adds r4, r4, r0
	movs r0, #6
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080222C0
	b _0802201E
	.align 2, 0
_08021FE0: .4byte gUnknown_02004112
_08021FE4:
	ldr r1, _08021FE8
	b _08021FFE
	.align 2, 0
_08021FE8: .4byte gUnknown_02004EE2
_08021FEC:
	ldr r1, _08021FF0
	b _08021FFE
	.align 2, 0
_08021FF0: .4byte gUnknown_02004F02
_08021FF4:
	ldr r1, _08021FF8
	b _08021FFE
	.align 2, 0
_08021FF8: .4byte gUnknown_02004F14
_08021FFC:
	ldr r1, _08022008
_08021FFE:
	adds r0, r5, #0
	movs r2, #9
	bl sub_080222C0
	b _0802201E
	.align 2, 0
_08022008: .4byte gUnknown_02004F26
_0802200C:
	ldr r1, _08022018
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_080222C0
	b _0802201E
	.align 2, 0
_08022018: .4byte gUnknown_02004F38
_0802201C:
	adds r0, r5, #0
_0802201E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
