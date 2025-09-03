	.syntax unified
sub_08027680:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x2c
	ldrb r3, [r5]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _08027736
	ldrb r1, [r4, #0x1d]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08027736
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1f
	adds r0, r4, #0
	bl sub_08016F68
	ldrb r1, [r4, #0x1d]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08027736
	bl sub_08005C14
	ldrh r0, [r4, #0x14]
	cmp r0, #1
	bhi _080276E8
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r0, _080276E0
	ldr r1, _080276E4
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	b _08027736
	.align 2, 0
_080276E0: .4byte gUnknown_03005314
_080276E4: .4byte gUnknown_0200F088
_080276E8:
	ldrb r0, [r4, #0x1c]
	subs r0, #4
	cmp r0, #7
	bhi _08027736
	lsls r0, r0, #2
	ldr r1, _080276FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080276FC: .4byte _08027700
_08027700:
	.4byte _08027720
	.4byte _0802772C
	.4byte _08027720
	.4byte _0802772C
	.4byte _08027720
	.4byte _0802772C
	.4byte _08027720
	.4byte _0802772C
_08027720:
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08013CC8
	b _08027736
_0802772C:
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #0
	bl sub_08013CC8
_08027736:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
