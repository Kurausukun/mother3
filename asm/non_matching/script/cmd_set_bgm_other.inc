	.syntax unified
cmd_set_bgm_other:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	bne _0802106A
	ldr r0, _08021078
	ldr r1, _0802107C
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802106A:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08021080
	movs r4, #0
	b _08021084
	.align 2, 0
_08021078: .4byte gGame
_0802107C: .4byte 0x000067AC
_08021080:
	movs r4, #0xff
	ands r4, r0
_08021084:
	lsls r2, r5, #0x10
	ldr r0, _080210A8
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	ldr r3, _080210AC
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r3, [r1]
	cmp r2, #0x7f
	bgt _0802109E
	lsls r0, r4, #8
	orrs r3, r0
	strh r3, [r1]
_0802109E:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080210A8: .4byte gSave
_080210AC: .4byte 0x00000482
	.syntax divided
