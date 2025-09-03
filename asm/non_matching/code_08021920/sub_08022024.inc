	.syntax unified
	push {r4, r5, lr}
	adds r3, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08022040
	adds r0, r0, r1
	cmp r0, #4
	bhi _080220E4
	lsls r0, r0, #2
	ldr r1, _08022044
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022040: .4byte 0xFFFF0080
_08022044: .4byte _08022048
_08022048:
	.4byte _0802205C
	.4byte _08022068
	.4byte _08022098
	.4byte _080220A8
	.4byte _080220B8
_0802205C:
	adds r0, r3, #0
	movs r1, #0
	bl sub_08022E8C
	adds r1, r0, #0
	b _080220C0
_08022068:
	ldr r0, _08022090
	ldr r1, _08022094
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #2
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080222C0
	b _080220E6
	.align 2, 0
_08022090: .4byte gGame
_08022094: .4byte 0x00008466
_08022098:
	ldr r0, _080220A0
	ldr r2, _080220A4
	adds r0, r0, r2
	b _080220BE
	.align 2, 0
_080220A0: .4byte gGame
_080220A4: .4byte 0x0000846C
_080220A8:
	ldr r0, _080220B0
	ldr r1, _080220B4
	b _080220BC
	.align 2, 0
_080220B0: .4byte gGame
_080220B4: .4byte 0x00008468
_080220B8:
	ldr r0, _080220D4
	ldr r1, _080220D8
_080220BC:
	adds r0, r0, r1
_080220BE:
	ldrh r1, [r0]
_080220C0:
	ldr r0, _080220DC
	ldr r2, _080220E0
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08022120
	b _080220E6
	.align 2, 0
_080220D4: .4byte gGame
_080220D8: .4byte 0x0000846A
_080220DC: .4byte gSomeBlend
_080220E0: .4byte 0x00011C80
_080220E4:
	adds r0, r5, #0
_080220E6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
