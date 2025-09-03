	.syntax unified
sub_08026470:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_080030A4
	movs r1, #0x64
	bl __umodsi3
	adds r2, r0, #0
	cmp r4, #7
	bhi _080264FE
	lsls r0, r4, #2
	ldr r1, _08026490
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026490: .4byte _08026494
_08026494:
	.4byte _080264B4
	.4byte _080264B8
	.4byte _080264C2
	.4byte _080264CC
	.4byte _080264D6
	.4byte _080264F4
	.4byte _080264E0
	.4byte _080264EA
_080264B4:
	movs r0, #1
	b _08026500
_080264B8:
	movs r0, #0
	cmp r2, #0x4f
	bhi _08026500
	movs r0, #1
	b _08026500
_080264C2:
	movs r0, #0
	cmp r2, #0x3b
	bhi _08026500
	movs r0, #1
	b _08026500
_080264CC:
	movs r0, #0
	cmp r2, #0x27
	bhi _08026500
	movs r0, #1
	b _08026500
_080264D6:
	movs r0, #0
	cmp r2, #0x13
	bhi _08026500
	movs r0, #1
	b _08026500
_080264E0:
	movs r0, #0
	cmp r2, #9
	bhi _08026500
	movs r0, #1
	b _08026500
_080264EA:
	movs r0, #0
	cmp r2, #4
	bhi _08026500
	movs r0, #1
	b _08026500
_080264F4:
	movs r0, #0
	cmp r2, #0
	bne _08026500
	movs r0, #1
	b _08026500
_080264FE:
	movs r0, #0
_08026500:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
