.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806FF38
sub_0806FF38: @ 0x0806FF38
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0806FF68 @ =vt_09F80680
	str r0, [r4, #0x1c]
	movs r2, #0
	movs r1, #0
	strh r1, [r4, #0x20]
	str r1, [r4, #0x24]
	movs r0, #0x64
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x30
	strb r2, [r0]
	str r1, [r4, #0x34]
	adds r0, r4, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FF68: .4byte vt_09F80680

	thumb_func_start sub_0806FF6C
sub_0806FF6C: @ 0x0806FF6C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	bl __4Base
	ldr r0, _0806FFA4 @ =vt_09F80680
	str r0, [r4, #0x1c]
	movs r2, #0
	movs r1, #0
	strh r1, [r4, #0x20]
	str r1, [r4, #0x24]
	movs r0, #0x64
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x30
	strb r2, [r0]
	str r1, [r4, #0x34]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806FFA4: .4byte vt_09F80680

	thumb_func_start sub_0806FFA8
sub_0806FFA8: @ 0x0806FFA8
	push {lr}
	ldr r2, _0806FFB8 @ =vt_09F80680
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0806FFB8: .4byte vt_09F80680

	thumb_func_start sub_0806FFBC
sub_0806FFBC: @ 0x0806FFBC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0
	ldr r0, _0806FFD8 @ =0x000007B0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0806FFDC
	movs r0, #0
	strh r0, [r4, #0x20]
	b _08070038
	.align 2, 0
_0806FFD8: .4byte 0x000007B0
_0806FFDC:
	cmp r1, #0
	bne _0806FFE4
	movs r0, #0
	b _08070038
_0806FFE4:
	movs r2, #0
	strh r3, [r4, #0x20]
	ldr r1, _08070040 @ =gSongTable
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08070044 @ =gMPlayTable
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r0, [r0]
	str r2, [r0, #0xc]
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x64
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x64
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
_08070038:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08070040: .4byte gSongTable
_08070044: .4byte gMPlayTable

	thumb_func_start sub_08070048
sub_08070048: @ 0x08070048
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _080700D0
	bl get__12ClockManager
	bl getTime__5Clock
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0xc]
	cmp r6, #0
	bgt _08070072
	ldrh r0, [r5, #0x20]
	bl m4aSongNumStart
	b _080700AC
_08070072:
	ldrh r0, [r5, #0x20]
	bl m4aSongNumStart
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	ldr r1, _080700D8 @ =0x0000FFFF
	movs r2, #0
	bl m4aMPlayVolumeControl
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl MPlayStop
	ldr r0, [r5, #0x24]
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayFadeIn
_080700AC:
	ldr r2, _080700DC @ =gUnknown_02001F28
	ldr r1, [r5, #0x24]
	ldr r0, _080700E0 @ =gMPlayTable
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r5, #0x20]
	strh r1, [r0]
_080700D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080700D8: .4byte 0x0000FFFF
_080700DC: .4byte gUnknown_02001F28
_080700E0: .4byte gMPlayTable

	thumb_func_start sub_080700E4
sub_080700E4: @ 0x080700E4
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070112
	cmp r1, #0
	bgt _080700FC
	ldr r0, [r2, #0x24]
	ldr r0, [r0]
	bl MPlayStop
	b _08070112
_080700FC:
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	adds r0, r2, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayFadeOutTemporarily
_08070112:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08070118
sub_08070118: @ 0x08070118
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070146
	cmp r1, #0
	bgt _08070130
	ldr r0, [r2, #0x24]
	ldr r0, [r0]
	bl m4aMPlayContinue
	b _08070146
_08070130:
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	adds r0, r2, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayFadeIn
_08070146:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807014C
sub_0807014C: @ 0x0807014C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0807019E
	cmp r1, #0
	bgt _08070164
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl MPlayStop
	b _0807017A
_08070164:
	ldr r0, [r5, #0x24]
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayFadeOutTemporarily
_0807017A:
	ldr r2, _080701A4 @ =gUnknown_02001F28
	ldr r1, [r5, #0x24]
	ldr r0, _080701A8 @ =gMPlayTable
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
_0807019E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080701A4: .4byte gUnknown_02001F28
_080701A8: .4byte gMPlayTable

	thumb_func_start sub_080701AC
sub_080701AC: @ 0x080701AC
	push {r4, lr}
	ldrh r4, [r0, #0x20]
	cmp r4, #0
	beq _080701DA
	ldr r2, _080701E0 @ =gUnknown_02001F28
	ldr r3, [r0, #0x24]
	ldr r1, _080701E4 @ =gMPlayTable
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	beq _080701E8
_080701DA:
	movs r0, #0
	b _080701F2
	.align 2, 0
_080701E0: .4byte gUnknown_02001F28
_080701E4: .4byte gMPlayTable
_080701E8:
	ldr r0, [r3]
	ldr r0, [r0, #4]
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
_080701F2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080701F8
sub_080701F8: @ 0x080701F8
	push {r4, lr}
	ldrh r4, [r0, #0x20]
	cmp r4, #0
	beq _08070248
	ldr r2, _0807023C @ =gUnknown_02001F28
	ldr r3, [r0, #0x24]
	ldr r1, _08070240 @ =gMPlayTable
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	bne _08070248
	ldr r0, [r3]
	ldr r1, [r0, #4]
	cmp r1, #0
	bge _08070248
	ldr r0, _08070244 @ =0x0000FFFF
	ands r1, r0
	cmp r1, #0
	beq _08070248
	movs r0, #1
	b _0807024A
	.align 2, 0
_0807023C: .4byte gUnknown_02001F28
_08070240: .4byte gMPlayTable
_08070244: .4byte 0x0000FFFF
_08070248:
	movs r0, #0
_0807024A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08070250
sub_08070250: @ 0x08070250
	push {r4, lr}
	ldrh r4, [r0, #0x20]
	cmp r4, #0
	beq _080702A0
	ldr r2, _08070294 @ =gUnknown_02001F28
	ldr r3, [r0, #0x24]
	ldr r1, _08070298 @ =gMPlayTable
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	bne _080702A0
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldr r1, _0807029C @ =0x8000FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, r1
	beq _080702A0
	movs r0, #0
	b _080702A2
	.align 2, 0
_08070294: .4byte gUnknown_02001F28
_08070298: .4byte gMPlayTable
_0807029C: .4byte 0x8000FFFF
_080702A0:
	movs r0, #1
_080702A2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080702A8
sub_080702A8: @ 0x080702A8
	push {lr}
	cmp r1, #0
	bge _080702B0
	adds r1, #0xf
_080702B0:
	asrs r1, r1, #4
	movs r0, #1
	cmp r0, r1
	bge _080702BA
	adds r0, r1, #0
_080702BA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080702C0
sub_080702C0: @ 0x080702C0
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _080702E4
	str r1, [r2, #0x28]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	lsls r0, r1, #8
	movs r1, #0x64
	bl sub_08090F7C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayTempoControl
_080702E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080702EC
sub_080702EC: @ 0x080702EC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070314
	str r1, [r2, #0x2c]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	ldr r5, _0807031C @ =0x0000FFFF
	lsls r0, r1, #8
	movs r1, #0x64
	bl sub_08090F7C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayVolumeControl
_08070314:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807031C: .4byte 0x0000FFFF

	thumb_func_start sub_08070320
sub_08070320: @ 0x08070320
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070352
	adds r1, r2, #0
	adds r1, #0x30
	strb r3, [r1]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	ldr r5, _08070358 @ =0x0000FFFF
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	movs r1, #0x64
	bl sub_08090F7C
	adds r2, r0, #0
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
_08070352:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08070358: .4byte 0x0000FFFF

	thumb_func_start sub_0807035C
sub_0807035C: @ 0x0807035C
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_08070360
sub_08070360: @ 0x08070360
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_08070364
sub_08070364: @ 0x08070364
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_08070368
sub_08070368: @ 0x08070368
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08070374
sub_08070374: @ 0x08070374
	push {r4, lr}
	adds r4, r0, #0
	bl get__12ClockManager
	bl getTime__5Clock
	ldr r1, [r4, #0x34]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807038C
sub_0807038C: @ 0x0807038C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x20]
	cmp r0, #0
	beq _0807039E
	ldr r0, [r1, #0x24]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	b _080703A0
_0807039E:
	movs r0, #0
_080703A0:
	pop {r1}
	bx r1

	thumb_func_start sub_080703A4
sub_080703A4: @ 0x080703A4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _08070404 @ =vt_09F80770
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	str r0, [r5, #0x20]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08070408 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0807040C @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _08070410 @ =gUnknown_08101E6C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08070404: .4byte vt_09F80770
_08070408: .4byte _vt.3Unk
_0807040C: .4byte _vt.8AppClock
_08070410: .4byte gUnknown_08101E6C

	thumb_func_start sub_08070414
sub_08070414: @ 0x08070414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _08070474 @ =vt_09F80770
	str r0, [r7, #0x1c]
	movs r5, #0
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r5, r0
	bge _08070456
	adds r4, r1, #0
	movs r6, #0
_08070432:
	ldr r0, [r4, #8]
	adds r0, r0, r6
	ldr r2, [r0]
	cmp r2, #0
	beq _0807044C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807044C:
	adds r6, #0xc
	adds r5, #1
	ldr r0, [r4, #4]
	cmp r5, r0
	blt _08070432
_08070456:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	beq _08070460
	bl __builtin_vec_delete
_08070460:
	adds r0, r7, #0
	mov r1, r8
	bl _._4Base
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070474: .4byte vt_09F80770

	thumb_func_start sub_08070478
sub_08070478: @ 0x08070478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov sb, r3
	add r0, sp, #0x2c
	ldrb r0, [r0]
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080704BC
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #8]
	strh r5, [r0, #6]
	ldr r1, [r4, #8]
	movs r0, #2
	str r0, [r1, #8]
_080704BC:
	cmp r6, #0
	beq _08070564
	str r6, [sp]
	mov r0, sp
	movs r1, #0
	mov r4, sb
	strh r4, [r0, #4]
	strh r1, [r0, #6]
	mov r6, r8
	cmp r6, #1
	bne _080704EC
	ldr r0, [sp]
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1, #4]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r6, [sp, #8]
	b _080704EE
_080704EC:
	str r1, [sp, #8]
_080704EE:
	adds r5, r7, #0
	adds r5, #0x20
	mov r8, sp
	ldr r0, [r5, #4]
	adds r0, #1
	mov sb, r0
	ldr r0, [r7, #0x20]
	cmp r0, sb
	bge _0807054E
	mov r4, sb
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0807050C
	adds r0, r1, #0
_0807050C:
	mov sb, r0
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #2
	bl __builtin_vec_new
	mov sl, r0
	ldr r6, [r5, #8]
	mov ip, r6
	mov r3, sl
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0807053C
	adds r2, r0, #0
_08070528:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	movs r7, #0xc
	add ip, r7
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08070528
_0807053C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08070546
	bl __builtin_vec_delete
_08070546:
	mov r0, sb
	str r0, [r5]
	mov r1, sl
	str r1, [r5, #8]
_0807054E:
	ldr r2, [r5, #4]
	ldr r0, [r5, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r0, r8
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	adds r2, #1
	str r2, [r5, #4]
_08070564:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070578
sub_08070578: @ 0x08070578
	push {lr}
	ldr r0, [r0, #0x24]
	movs r1, #0
	cmp r0, #0
	ble _08070584
	movs r1, #1
_08070584:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807058C
sub_0807058C: @ 0x0807058C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0807059E
	ldr r0, [r1, #8]
	ldr r0, [r0]
	b _080705A0
_0807059E:
	movs r0, #0
_080705A0:
	pop {r1}
	bx r1

	thumb_func_start sub_080705A4
sub_080705A4: @ 0x080705A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08070644
	ldr r3, [r4, #8]
	ldr r0, [r3, #8]
	cmp r0, #1
	beq _08070644
	cmp r0, #1
	bgt _080705C6
	cmp r0, #0
	beq _080705CC
	b _08070644
_080705C6:
	cmp r0, #2
	beq _080705E8
	b _08070644
_080705CC:
	ldr r0, [r3]
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r5, #0
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldrh r1, [r3, #4]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r4, #8]
	movs r0, #1
	str r0, [r1, #8]
	b _08070644
_080705E8:
	ldrh r0, [r3, #6]
	ldr r6, _08070650 @ =0x0000FFFF
	adds r1, r0, r6
	strh r1, [r3, #6]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08070644
	ldr r0, [r4, #8]
	ldr r2, [r0]
	cmp r2, #0
	beq _08070610
	ldr r1, [r2, #0x1c]
	movs r7, #8
	ldrsh r0, [r1, r7]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08070610:
	mov ip, r4
	ldr r2, [r4, #4]
	cmp r6, r2
	bge _08070644
	ldr r0, [r4, #8]
	subs r1, r2, #1
	adds r4, r0, #0
	adds r4, #0xc
	adds r3, r0, #0
	mov r8, r2
	cmp r1, #0
	ble _0807063C
	adds r2, r1, #0
_0807062A:
	adds r1, r3, #0
	adds r0, r4, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r4, #0xc
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _0807062A
_0807063C:
	mov r0, r8
	subs r0, #1
	mov r1, ip
	str r0, [r1, #4]
_08070644:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070650: .4byte 0x0000FFFF

	thumb_func_start sub_08070654
sub_08070654: @ 0x08070654
	push {lr}
	bl randomMT
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start randS32
randS32: @ 0x08070660
	push {lr}
	bl randU32
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807066C
sub_0807066C: @ 0x0807066C
	push {lr}
	cmp r1, #0
	beq _08070676
	bl sub_08090F7C
_08070676:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807067C
sub_0807067C: @ 0x0807067C
	push {lr}
	cmp r1, #0
	beq _08070686
	bl sub_08090F80
_08070686:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start setsleep
setsleep: @ 0x0807068C
	push {r4, lr}
	adds r4, r0, #0
	bl get__12ClockManager
	adds r1, r4, #0
	bl sub_0806A1F8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080706A0
sub_080706A0: @ 0x080706A0
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0805D2F0
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080706D0
sub_080706D0: @ 0x080706D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r5, sp, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0805D2F0
	mov r0, sp
	adds r1, r5, #0
	bl __9BXTHandleRC6BXTRef
	mov r0, r8
	mov r1, sp
	adds r2, r6, #0
	bl getMessage__9BXTHandleUi
	mov r0, sp
	movs r1, #2
	bl _._9BXTHandle
	ldr r0, _08070734 @ =_vt.1D
	str r0, [sp, #0x18]
	mov r0, r8
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08070734: .4byte _vt.1D

	thumb_func_start sub_08070738
sub_08070738: @ 0x08070738
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070754
sub_08070754: @ 0x08070754
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070770
sub_08070770: @ 0x08070770
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807078C
sub_0807078C: @ 0x0807078C
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080707A8
sub_080707A8: @ 0x080707A8
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080707C4
sub_080707C4: @ 0x080707C4
	push {r4, lr}
	adds r4, r0, #0
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080707E4
sub_080707E4: @ 0x080707E4
	push {lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0807081C
	mov r0, sp
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	b _08070806
_08070800:
	movs r0, #1
	bl setsleep
_08070806:
	mov r0, sp
	bl sub_080701AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08070800
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
_0807081C:
	add sp, #0x38
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start playSound
playSound: @ 0x08070824
	push {lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08070846
	mov r0, sp
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
_08070846:
	add sp, #0x38
	pop {r0}
	bx r0

	thumb_func_start sub_0807084C
sub_0807084C: @ 0x0807084C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	bl __4Base
	ldr r0, _080708A4 @ =vt_09F807F0
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x30]
	strh r0, [r7, #0x32]
	adds r1, r7, #0
	adds r1, #0x34
	strh r0, [r7, #0x34]
	strh r0, [r1, #2]
	str r0, [r7, #0x24]
	str r0, [r7, #0x28]
	str r0, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r5, [r7, #0x32]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r7, #0x34]
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r7, #0x36]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #7
	strb r0, [r1]
	cmp r6, #0
	beq _0807089C
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080708E0
_0807089C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080708A4: .4byte vt_09F807F0

	thumb_func_start sub_080708A8
sub_080708A8: @ 0x080708A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080708DC @ =vt_09F807F0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _080708BE
	adds r1, r4, #0
	bl sub_08070904
_080708BE:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _080708CE
	movs r1, #0
_080708C6:
	str r1, [r0, #0x24]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _080708C6
_080708CE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080708DC: .4byte vt_09F807F0

	thumb_func_start sub_080708E0
sub_080708E0: @ 0x080708E0
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x2c]
	cmp r0, #0
	bne _080708EE
	str r1, [r3, #0x2c]
	b _080708FC
_080708EE:
	adds r2, r0, #0
	b _080708F4
_080708F2:
	ldr r2, [r2, #0x28]
_080708F4:
	ldr r0, [r2, #0x28]
	cmp r0, #0
	bne _080708F2
	str r1, [r2, #0x28]
_080708FC:
	str r3, [r1, #0x24]
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08070904
sub_08070904: @ 0x08070904
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	cmp r0, r1
	bne _08070926
	ldr r0, [r1, #0x28]
	str r0, [r2, #0x2c]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	b _0807093A
_0807091A:
	ldr r0, [r2, #0x28]
	str r0, [r3, #0x28]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	b _0807093A
_08070926:
	adds r3, r0, #0
	b _08070932
_0807092A:
	ldr r2, [r3, #0x28]
	cmp r2, r1
	beq _0807091A
	adds r3, r2, #0
_08070932:
	ldr r0, [r3, #0x28]
	cmp r0, #0
	bne _0807092A
	movs r0, #0
_0807093A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070940
sub_08070940: @ 0x08070940
	push {r4, lr}
	b _08070954
_08070944:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08070954:
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _08070944
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070974
sub_08070974: @ 0x08070974
	push {r4, lr}
	b _08070988
_08070978:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08070988:
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _08070978
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080709A8
sub_080709A8: @ 0x080709A8
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_080709AC
sub_080709AC: @ 0x080709AC
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_080709B0
sub_080709B0: @ 0x080709B0
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_080709B4
sub_080709B4: @ 0x080709B4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r6, #1
	bne _080709D0
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _080709DA
_080709D0:
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_080709DA:
	strb r0, [r2]
	cmp r5, #1
	bne _08070A00
	ldr r4, [r3, #0x2c]
	cmp r4, #0
	beq _08070A00
_080709E6:
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _080709E6
_08070A00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070A08
sub_08070A08: @ 0x08070A08
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r6, #1
	bne _08070A24
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _08070A2E
_08070A24:
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_08070A2E:
	strb r0, [r2]
	cmp r5, #1
	bne _08070A54
	ldr r4, [r3, #0x2c]
	cmp r4, #0
	beq _08070A54
_08070A3A:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _08070A3A
_08070A54:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070A5C
sub_08070A5C: @ 0x08070A5C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r6, #1
	bne _08070A78
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	b _08070A82
_08070A78:
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_08070A82:
	strb r0, [r2]
	cmp r5, #1
	bne _08070AA8
	ldr r4, [r3, #0x2c]
	cmp r4, #0
	beq _08070AA8
_08070A8E:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _08070A8E
_08070AA8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070AB0
sub_08070AB0: @ 0x08070AB0
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08070AC6
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	b _08070AD0
_08070AC6:
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
_08070AD0:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070AD8
sub_08070AD8: @ 0x08070AD8
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08070AEE
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	b _08070AF8
_08070AEE:
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
_08070AF8:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070B00
sub_08070B00: @ 0x08070B00
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08070B16
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	b _08070B20
_08070B16:
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
_08070B20:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070B28
sub_08070B28: @ 0x08070B28
	ldr r1, [r1]
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B30
sub_08070B30: @ 0x08070B30
	strh r1, [r0, #0x30]
	strh r2, [r0, #0x32]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B38
sub_08070B38: @ 0x08070B38
	ldr r1, [r1]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B40
sub_08070B40: @ 0x08070B40
	strh r1, [r0, #0x34]
	strh r2, [r0, #0x36]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B48
sub_08070B48: @ 0x08070B48
	adds r0, #0x38
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B50
sub_08070B50: @ 0x08070B50
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B5C
sub_08070B5C: @ 0x08070B5C
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B68
sub_08070B68: @ 0x08070B68
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B74
sub_08070B74: @ 0x08070B74
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B80
sub_08070B80: @ 0x08070B80
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B8C
sub_08070B8C: @ 0x08070B8C
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B98
sub_08070B98: @ 0x08070B98
	ldr r1, [r1, #0x30]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070BA0
sub_08070BA0: @ 0x08070BA0
	ldr r1, [r1, #0x34]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070BA8
sub_08070BA8: @ 0x08070BA8
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08070BB4
sub_08070BB4: @ 0x08070BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r7, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r5, sp, #4
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	blt _08070C2E
	adds r2, r1, #0
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	cmp r2, r0
	bge _08070C2E
	ldrh r0, [r7, #2]
	movs r2, #2
	ldrsh r1, [r6, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08070C2E
	adds r0, r1, #0
	movs r2, #2
	ldrsh r1, [r7, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	adds r1, r1, r2
	cmp r0, r1
	bge _08070C2E
	movs r0, #1
	b _08070C30
_08070C2E:
	movs r0, #0
_08070C30:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08070C38
sub_08070C38: @ 0x08070C38
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0, #0x2c]
	cmp r4, #0
	beq _08070C9A
_08070C42:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	ldr r1, [r4, #0x1c]
	adds r1, #0xf8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	ldr r1, [r4, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	adds r0, r4, #0
	b _08070C9C
_08070C94:
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _08070C42
_08070C9A:
	movs r0, #0
_08070C9C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070CA4
sub_08070CA4: @ 0x08070CA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	ldr r6, [r0, #0x2c]
	cmp r6, #0
	beq _08070D16
	mov r8, sp
	add r7, sp, #4
_08070CBE:
	ldr r0, [r6, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	str r4, [sp, #8]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r0, r3
	movs r4, #0
	ldrsh r1, [r2, r4]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	mov r0, sb
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	mov r0, sb
	movs r3, #2
	ldrsh r1, [r0, r3]
	mov r4, r8
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	strh r2, [r7]
	strh r1, [r7, #2]
	ldr r2, [r5, #4]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	bl _call_via_r2
	cmp r0, #0
	bne _08070D2E
	ldr r6, [r6, #0x28]
	cmp r6, #0
	bne _08070CBE
_08070D16:
	mov r4, sl
	ldr r1, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r2, [r1, #4]
	mov r1, sb
	bl _call_via_r2
_08070D2E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070D40
sub_08070D40: @ 0x08070D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	mov r8, r1
	adds r4, r3, #0
	ldr r0, [r2]
	str r0, [sp, #4]
	cmp r4, #0
	beq _08070DB2
	mov sl, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x14]
	add r5, sp, #8
_08070D64:
	ldr r2, [r4, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r6, [sp, #0x14]
	movs r7, #0
	ldrsh r1, [r6, r7]
	mov r0, sl
	movs r2, #0
	ldrsh r3, [r0, r2]
	movs r7, #2
	ldrsh r0, [r6, r7]
	mov r6, sl
	movs r7, #2
	ldrsh r2, [r6, r7]
	adds r1, r1, r3
	adds r0, r0, r2
	strh r1, [r5]
	strh r0, [r5, #2]
	ldr r0, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070D64
_08070DB2:
	mov r4, r8
	cmp r4, #0
	beq _08070E06
	add r5, sp, #0xc
	add r7, sp, #4
	add r6, sp, #0x10
_08070DBE:
	ldr r2, [r4, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	movs r1, #0
	ldrsh r2, [r7, r1]
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r2, r2, r0
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	strh r2, [r6]
	strh r1, [r6, #2]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070DBE
_08070E06:
	ldr r0, [sp, #4]
	mov r3, sb
	str r0, [r3]
	mov r0, sb
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070E20
sub_08070E20: @ 0x08070E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	mov r8, r3
	adds r4, r1, #0
	ldr r0, [r2]
	str r0, [sp, #4]
	cmp r4, #0
	beq _08070E92
	mov sl, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x14]
	add r5, sp, #8
_08070E44:
	ldr r2, [r4, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r6, [sp, #0x14]
	movs r7, #0
	ldrsh r1, [r6, r7]
	mov r0, sl
	movs r2, #0
	ldrsh r3, [r0, r2]
	movs r7, #2
	ldrsh r0, [r6, r7]
	mov r6, sl
	movs r7, #2
	ldrsh r2, [r6, r7]
	adds r1, r1, r3
	adds r0, r0, r2
	strh r1, [r5]
	strh r0, [r5, #2]
	ldr r0, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070E44
_08070E92:
	mov r4, r8
	cmp r4, #0
	beq _08070EE6
	add r5, sp, #0xc
	add r7, sp, #4
	add r6, sp, #0x10
_08070E9E:
	ldr r2, [r4, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	movs r1, #0
	ldrsh r2, [r7, r1]
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r2, r2, r0
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	strh r2, [r6]
	strh r1, [r6, #2]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070E9E
_08070EE6:
	ldr r0, [sp, #4]
	mov r3, sb
	str r0, [r3]
	mov r0, sb
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070F00
sub_08070F00: @ 0x08070F00
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _08070F38
_08070F0C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070F0C
_08070F38:
	adds r4, r6, #0
	cmp r4, #0
	beq _08070F6A
_08070F3E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070F3E
_08070F6A:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070F74
sub_08070F74: @ 0x08070F74
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	b _08070FA2
_08070F7C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08070FA2:
	adds r4, r0, #0
	cmp r4, #0
	bne _08070F7C
	adds r4, r6, #0
	cmp r4, #0
	beq _08070FDA
_08070FAE:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070FAE
_08070FDA:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_105
nullsub_105: @ 0x08070FE4
	bx lr
	.align 2, 0

	thumb_func_start sub_08070FE8
sub_08070FE8: @ 0x08070FE8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, [sp, #0x40]
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0807084C
	ldr r0, _0807104C @ =vt_09F80960
	str r0, [r5, #0x1c]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08071050 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08071054 @ =_vt.11PreAppClock
	str r0, [sp, #0x24]
	ldr r0, _08071058 @ =gUnknown_08102A9C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807104C: .4byte vt_09F80960
_08071050: .4byte _vt.3Unk
_08071054: .4byte _vt.11PreAppClock
_08071058: .4byte gUnknown_08102A9C

	thumb_func_start sub_0807105C
sub_0807105C: @ 0x0807105C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _080710AC @ =vt_09F80960
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_080709B0
	adds r4, r0, #0
	cmp r4, #0
	beq _0807109E
_08071072:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _08071098
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08071098:
	adds r4, r5, #0
	cmp r4, #0
	bne _08071072
_0807109E:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080708A8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080710AC: .4byte vt_09F80960

	thumb_func_start sub_080710B0
sub_080710B0: @ 0x080710B0
	push {lr}
	adds r1, r0, #0
	bl sub_080710BC
	pop {r0}
	bx r0

	thumb_func_start sub_080710BC
sub_080710BC: @ 0x080710BC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	b _080710F6
_080710E2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080710BC
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
_080710F6:
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _080710E2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071108
sub_08071108: @ 0x08071108
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_0806E820
	ldr r0, _08071138 @ =vt_09F80AD0
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0806E90C
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071138: .4byte vt_09F80AD0

	thumb_func_start sub_0807113C
sub_0807113C: @ 0x0807113C
	push {lr}
	ldr r2, _0807114C @ =vt_09F80AD0
	str r2, [r0, #0x1c]
	bl sub_0806E8BC
	pop {r0}
	bx r0
	.align 2, 0
_0807114C: .4byte vt_09F80AD0

	thumb_func_start sub_08071150
sub_08071150: @ 0x08071150
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0806E978
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711C4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0806E9A0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071174
sub_08071174: @ 0x08071174
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	str r1, [r4, #0x54]
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711C4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0806E9A0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08071194
sub_08071194: @ 0x08071194
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r1]
	str r0, [r4, #0x58]
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711C4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0806E9A0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080711B8
sub_080711B8: @ 0x080711B8
	ldr r0, [r0, #0x54]
	bx lr

	thumb_func_start sub_080711BC
sub_080711BC: @ 0x080711BC
	ldr r1, [r1, #0x58]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080711C4
sub_080711C4: @ 0x080711C4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080711F6
	cmp r0, #1
	bgt _080711EA
	cmp r0, #0
	beq _080711F0
	b _08071258
_080711EA:
	cmp r0, #2
	beq _0807122A
	b _08071258
_080711F0:
	ldr r0, [r5, #0x58]
	str r0, [r6]
	b _0807125E
_080711F6:
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r2, [r5, #0x1c]
	adds r2, #0xb8
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	subs r4, r4, r1
	adds r0, r5, #0
	adds r0, #0x5a
	movs r1, #0
	ldrsh r0, [r0, r1]
	strh r4, [r6]
	b _0807125C
_0807122A:
	adds r0, r5, #0
	adds r0, #0x58
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r2, [r5, #0x1c]
	adds r2, #0xb8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	adds r0, r5, #0
	adds r0, #0x5a
	movs r1, #0
	ldrsh r0, [r0, r1]
	strh r4, [r6]
	b _0807125C
_08071258:
	movs r0, #0
	strh r0, [r6]
_0807125C:
	strh r0, [r6, #2]
_0807125E:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08071268
sub_08071268: @ 0x08071268
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0807131C @ =vt_09F80BB0
	str r0, [r7, #0x1c]
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #0x38]
	strh r4, [r7, #0x3a]
	adds r6, r7, #0
	adds r6, #0x48
	adds r0, r6, #0
	bl sub_0806D548
	movs r0, #0x5c
	adds r0, r0, r7
	mov r8, r0
	bl sub_0806D478
	str r4, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x28
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	strh r4, [r7, #0x32]
	str r4, [r7, #0x40]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #1
	strb r0, [r1]
	add r0, sp, #4
	movs r1, #0
	bl sub_080706A0
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0806D5AC
	ldr r4, _08071320 @ =_vt.1D
	str r4, [sp, #0xc]
	ldr r1, _08071324 @ =0x0000027B
	add r0, sp, #4
	bl sub_080706A0
	mov r0, r8
	add r1, sp, #4
	bl sub_0806D4D0
	str r4, [sp, #0xc]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #0x10
	bl __4Base
	ldr r0, _08071328 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0807132C @ =_vt.8AppClock
	str r0, [sp, #0x2c]
	add r5, sp, #0x10
	ldr r0, _08071330 @ =gUnknown_081032D4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r5, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807131C: .4byte vt_09F80BB0
_08071320: .4byte _vt.1D
_08071324: .4byte 0x0000027B
_08071328: .4byte _vt.3Unk
_0807132C: .4byte _vt.8AppClock
_08071330: .4byte gUnknown_081032D4

	thumb_func_start sub_08071334
sub_08071334: @ 0x08071334
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08071360 @ =vt_09F80BB0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071360: .4byte vt_09F80BB0

	thumb_func_start sub_08071364
sub_08071364: @ 0x08071364
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0807137A
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _08071384
_0807137A:
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_08071384:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807138C
sub_0807138C: @ 0x0807138C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, r1, #0
	ldr r2, _080713F0 @ =0x05F5E0FF
	movs r1, #0
	cmp r0, #0
	blt _080713AA
	adds r1, r0, #0
	cmp r1, r2
	ble _080713AA
	adds r1, r2, #0
_080713AA:
	str r1, [r7, #0x24]
	ldr r0, _080713F4 @ =0x000003E7
	cmp r1, r0
	bgt _080713FC
	adds r4, r7, #0
	adds r4, #0x2a
	movs r3, #7
	mov sl, r4
	lsls r0, r1, #1
	movs r2, #0x28
	adds r2, r2, r7
	mov r8, r2
	movs r2, #0x29
	adds r2, r2, r7
	mov sb, r2
	ldr r2, _080713F8 @ =gUnknown_080F0C80
	subs r1, #5
	adds r0, r0, r1
	adds r0, r0, r2
	adds r2, r0, #7
_080713D2:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	subs r2, #1
	subs r3, #1
	cmp r3, #5
	bge _080713D2
	movs r1, #4
	movs r2, #0
_080713E4:
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #1
	cmp r1, #0
	bge _080713E4
	b _0807142E
	.align 2, 0
_080713F0: .4byte 0x05F5E0FF
_080713F4: .4byte 0x000003E7
_080713F8: .4byte gUnknown_080F0C80
_080713FC:
	adds r4, r1, #0
	adds r6, r7, #0
	adds r6, #0x2a
	movs r5, #7
	mov sl, r6
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x29
	adds r1, r1, r7
	mov sb, r1
_08071412:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F80
	adds r1, r6, r5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F7C
	adds r4, r0, #0
	subs r5, #1
	cmp r5, #0
	bge _08071412
_0807142E:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08071454
	mov r3, sl
_0807143E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r1, #1
	cmp r0, #7
	bgt _08071454
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807143E
_08071454:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	subs r0, r0, r1
	movs r1, #0
	mov r2, sb
	strb r0, [r2]
	strh r1, [r7, #0x32]
	mov r0, r8
	ldrb r4, [r0]
	ldrb r0, [r2]
	adds r0, r4, r0
	cmp r4, r0
	bge _08071492
_08071470:
	mov r1, sl
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_0807163C
	ldrh r1, [r7, #0x32]
	adds r1, r1, r0
	strh r1, [r7, #0x32]
	adds r4, #1
	mov r2, r8
	ldrb r0, [r2]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r0, r1
	cmp r4, r0
	blt _08071470
_08071492:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080714A0
sub_080714A0: @ 0x080714A0
	str r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_080714A4
sub_080714A4: @ 0x080714A4
	ldr r1, [r1]
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0

	thumb_func_start sub_080714AC
sub_080714AC: @ 0x080714AC
	str r1, [r0, #0x3c]
	bx lr

	thumb_func_start sub_080714B0
sub_080714B0: @ 0x080714B0
	str r1, [r0, #0x40]
	bx lr

	thumb_func_start sub_080714B4
sub_080714B4: @ 0x080714B4
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_080714C0
sub_080714C0: @ 0x080714C0
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_080714C4
sub_080714C4: @ 0x080714C4
	adds r0, #0x29
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080714CC
sub_080714CC: @ 0x080714CC
	ldrh r0, [r0, #0x32]
	bx lr

	thumb_func_start sub_080714D0
sub_080714D0: @ 0x080714D0
	ldr r0, [r0, #0x34]
	bx lr

	thumb_func_start sub_080714D4
sub_080714D4: @ 0x080714D4
	ldr r1, [r1, #0x38]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080714DC
sub_080714DC: @ 0x080714DC
	ldr r0, [r0, #0x3c]
	bx lr

	thumb_func_start sub_080714E0
sub_080714E0: @ 0x080714E0
	ldr r0, [r0, #0x40]
	bx lr

	thumb_func_start sub_080714E4
sub_080714E4: @ 0x080714E4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080714FA
	adds r0, r2, #0
	bl sub_08071500
_080714FA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071500
sub_08071500: @ 0x08071500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
	bl sub_0806BE14
	adds r4, r0, #0
	ldr r5, [r6, #0x3c]
	movs r0, #0x29
	adds r0, r0, r6
	mov sb, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	adds r4, r0, #0
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_080715E0
	ldr r0, [sp, #4]
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0807165C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	bl sub_080716CC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r7, #0
	mov r1, sb
	ldrb r1, [r1]
	cmp r7, r1
	bge _080715CC
	mov r5, sp
_0807156C:
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0x10
	ldr r0, _080715DC @ =0x01FF0000
	ands r1, r0
	str r1, [r4]
	ldrh r2, [r5, #2]
	movs r0, #0xff
	ands r0, r2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r4]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #1
	lsls r0, r0, #0xa
	mov r1, r8
	orrs r0, r1
	mov r2, sl
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r1, r1, r7
	adds r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_0807163C
	ldrh r1, [r5]
	adds r1, r1, r0
	strh r1, [r5]
	mov r0, r8
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r4, #8
	adds r7, #1
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r7, r0
	blt _0807156C
_080715CC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080715DC: .4byte 0x01FF0000

	thumb_func_start sub_080715E0
sub_080715E0: @ 0x080715E0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xc0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _08071618
	cmp r0, #1
	ble _0807162E
	cmp r0, #2
	beq _08071622
	b _0807162E
_08071618:
	ldrh r1, [r4, #0x32]
	lsrs r1, r1, #1
	mov r0, sp
	ldrh r0, [r0]
	b _08071628
_08071622:
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
_08071628:
	subs r0, r0, r1
	mov r1, sp
	strh r0, [r1]
_0807162E:
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807163C
sub_0807163C: @ 0x0807163C
	push {lr}
	ldr r0, [r0, #0x40]
	cmp r0, #1
	beq _0807164C
	ldr r0, _08071648 @ =gUnknown_081032DC
	b _0807164E
	.align 2, 0
_08071648: .4byte gUnknown_081032DC
_0807164C:
	ldr r0, _08071658 @ =gUnknown_081032E6
_0807164E:
	adds r0, r1, r0
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_08071658: .4byte gUnknown_081032E6

	thumb_func_start sub_0807165C
sub_0807165C: @ 0x0807165C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0806BE14
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0x48
	bl sub_0806D648
	ldr r2, _080716C8 @ =gUnknown_081032F0
	ldr r1, [r5, #0x40]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	adds r6, r0, r1
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r0, r4, r0
	cmp r4, r0
	bge _080716B6
_0807168E:
	adds r0, r5, #0
	adds r0, #0x2a
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r2, r2, #7
	adds r2, r6, r2
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806C0B4
	adds r2, r0, #0
	adds r4, #1
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r1, r0
	cmp r4, r1
	blt _0807168E
_080716B6:
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	subs r0, r2, r0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080716C8: .4byte gUnknown_081032F0

	thumb_func_start sub_080716CC
sub_080716CC: @ 0x080716CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0806C7AC
	adds r6, r0, #0
	adds r4, #0x5c
	adds r0, r4, #0
	bl sub_0806D53C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0
	adds r4, r0, #0
	ldr r0, _08071710 @ =0x0000FFFF
	cmp r4, r0
	bne _08071708
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_08071708:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071710: .4byte 0x0000FFFF

	thumb_func_start sub_08071714
sub_08071714: @ 0x08071714
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r6, r1, #0
	bl __4Base
	ldr r0, _080717DC @ =vt_09F80C88
	str r0, [r7, #0x1c]
	movs r4, #0
	strh r4, [r7, #0x38]
	strh r4, [r7, #0x3a]
	adds r0, r7, #0
	adds r0, #0x44
	bl sub_0806D548
	adds r0, r7, #0
	adds r0, #0x58
	bl sub_0806D478
	str r4, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x34
	movs r0, #2
	strb r0, [r1]
	str r4, [r7, #0x3c]
	adds r1, #0xc
	movs r0, #7
	strb r0, [r1]
	add r0, sp, #0x10
	mov r8, r0
	movs r2, #0
	movs r1, #2
	adds r0, r7, #0
	adds r0, #0x30
_0807175C:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0807175C
	movs r5, #0
	adds r4, r7, #0
	adds r4, #0x44
	add r0, sp, #4
	movs r1, #0
	bl sub_080706A0
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_0806D5AC
	ldr r0, _080717E0 @ =_vt.1D
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r0, #0x58
	adds r1, r6, #0
	bl sub_0806D4D0
	adds r1, r7, #0
	adds r1, #0x64
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _080717E4 @ =0x040000D4
	add r2, sp, #4
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _080717E8 @ =0x81000040
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #0x10
	bl __4Base
	ldr r6, _080717EC @ =_vt.3Unk
	ldr r0, _080717F0 @ =_vt.8AppClock
	str r0, [sp, #0x2c]
	ldr r0, _080717F4 @ =gUnknown_08103710
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, r8
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x2c]
	mov r0, r8
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080717DC: .4byte vt_09F80C88
_080717E0: .4byte _vt.1D
_080717E4: .4byte 0x040000D4
_080717E8: .4byte 0x81000040
_080717EC: .4byte _vt.3Unk
_080717F0: .4byte _vt.8AppClock
_080717F4: .4byte gUnknown_08103710

	thumb_func_start sub_080717F8
sub_080717F8: @ 0x080717F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08071824 @ =vt_09F80C88
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071824: .4byte vt_09F80C88

	thumb_func_start sub_08071828
sub_08071828: @ 0x08071828
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r0, [r3, #0x24]
	cmp r0, r1
	beq _080718B2
	str r1, [r3, #0x24]
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	movs r5, #1
	movs r4, #2
	movs r0, #0x28
	adds r0, r0, r3
	mov ip, r0
	adds r7, r3, #0
	adds r7, #0x34
	movs r0, #0x40
	adds r0, r0, r3
	mov r8, r0
	asrs r1, r1, #0x10
	ldr r2, _080718BC @ =gUnknown_080F0C80
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	adds r1, r0, #2
	adds r2, r3, #0
	adds r2, #0x30
_08071860:
	ldrb r3, [r1]
	lsls r0, r3, #0x10
	str r0, [r2]
	cmp r5, #1
	bne _08071874
	adds r0, r0, r6
	str r0, [r2]
	cmp r3, #9
	beq _08071874
	movs r5, #0
_08071874:
	subs r1, #1
	subs r2, #4
	subs r4, #1
	cmp r4, #0
	bge _08071860
	movs r0, #0
	strb r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	bne _080718A6
	adds r2, r7, #0
	mov r3, ip
_0807188E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r1, #1
	cmp r0, #2
	bgt _080718A6
	lsls r0, r1, #2
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0807188E
_080718A6:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #4
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
_080718B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080718BC: .4byte gUnknown_080F0C80

	thumb_func_start sub_080718C0
sub_080718C0: @ 0x080718C0
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080718D4
	adds r0, #0x40
	ldrb r2, [r0]
	movs r1, #1
	orrs r1, r2
	b _080718DC
_080718D4:
	adds r0, #0x40
	ldrb r2, [r0]
	movs r1, #0xfe
	ands r1, r2
_080718DC:
	strb r1, [r0]
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start sub_080718EC
sub_080718EC: @ 0x080718EC
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08071902
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0807190C
_08071902:
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0807190C:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071914
sub_08071914: @ 0x08071914
	ldr r1, [r1]
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807191C
sub_0807191C: @ 0x0807191C
	str r1, [r0, #0x3c]
	bx lr

	thumb_func_start sub_08071920
sub_08071920: @ 0x08071920
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x40
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807194E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08071948
	adds r0, r5, #0
	bl sub_080719C4
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_08071948:
	adds r0, r5, #0
	bl sub_08071954
_0807194E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08071954
sub_08071954: @ 0x08071954
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0806BE14
	adds r4, r0, #0
	ldr r5, [r6, #0x3c]
	adds r1, r5, #0
	movs r2, #1
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	adds r4, r0, #0
	movs r0, #0x38
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0x10
	ldr r0, _080719C0 @ =0x01FF0000
	ands r1, r0
	str r1, [r4]
	ldrh r2, [r6, #0x3a]
	movs r0, #0xff
	ands r0, r2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r4]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #1
	lsls r0, r0, #0xa
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl sub_08071A5C
	ldrh r1, [r4, #4]
	orrs r1, r0
	strh r1, [r4, #4]
	adds r0, r6, #0
	bl sub_08071A78
	lsls r0, r0, #0xc
	ldrh r1, [r4, #4]
	orrs r0, r1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080719C0: .4byte 0x01FF0000

	thumb_func_start sub_080719C4
sub_080719C4: @ 0x080719C4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080719DC
	adds r0, r5, #0
	adds r0, #0x34
	ldrb r4, [r0]
	b _080719DE
_080719DC:
	movs r4, #0
_080719DE:
	adds r0, r5, #0
	adds r0, #0x44
	bl sub_0806D648
	adds r6, r0, #0
	movs r2, #0
	cmp r2, r4
	bge _08071A0A
	ldr r0, _08071A50 @ =0x000023E0
	adds r3, r6, r0
	ldr r1, _08071A54 @ =0x040000D4
	ldr r7, _08071A58 @ =0x80000010
_080719F6:
	lsls r0, r2, #5
	adds r0, r0, r5
	adds r0, #0x64
	str r3, [r1]
	str r0, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #1
	cmp r2, r4
	blt _080719F6
_08071A0A:
	adds r2, r4, #0
	cmp r2, #2
	bgt _08071A48
	ldr r3, _08071A54 @ =0x040000D4
_08071A12:
	lsls r1, r2, #2
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #0x10
	lsls r0, r0, #0x13
	movs r4, #0x90
	lsls r4, r4, #0x11
	adds r0, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1d
	lsrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	lsls r1, r2, #5
	adds r1, r1, r5
	adds r1, #0x64
	str r0, [r3]
	str r1, [r3, #4]
	ldr r0, _08071A58 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r2, #1
	cmp r2, #2
	ble _08071A12
_08071A48:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071A50: .4byte 0x000023E0
_08071A54: .4byte 0x040000D4
_08071A58: .4byte 0x80000010

	thumb_func_start sub_08071A5C
sub_08071A5C: @ 0x08071A5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r4, #0x64
	movs r1, #4
	adds r2, r4, #0
	bl sub_0806C0B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08071A78
sub_08071A78: @ 0x08071A78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0806C7AC
	adds r6, r0, #0
	adds r4, #0x58
	adds r0, r4, #0
	bl sub_0806D53C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08071AC0 @ =0x0000FFFF
	cmp r4, r0
	bne _08071AB8
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_08071AB8:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071AC0: .4byte 0x0000FFFF

	thumb_func_start sub_08071AC4
sub_08071AC4: @ 0x08071AC4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071B60 @ =vt_09F80D18
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071B64 @ =0x000003A5
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08071B68 @ =0x00000287
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071B6C @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x3c
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071B70 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08071B74 @ =_vt.11PreAppClock
	str r0, [sp, #0x20]
	ldr r0, _08071B78 @ =gUnknown_08103B30
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071B60: .4byte vt_09F80D18
_08071B64: .4byte 0x000003A5
_08071B68: .4byte 0x00000287
_08071B6C: .4byte _vt.1D
_08071B70: .4byte _vt.3Unk
_08071B74: .4byte _vt.11PreAppClock
_08071B78: .4byte gUnknown_08103B30

	thumb_func_start sub_08071B7C
sub_08071B7C: @ 0x08071B7C
	push {lr}
	ldr r2, _08071B8C @ =vt_09F80D18
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071B8C: .4byte vt_09F80D18

	thumb_func_start sub_08071B90
sub_08071B90: @ 0x08071B90
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071B98
sub_08071B98: @ 0x08071B98
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071BA0
sub_08071BA0: @ 0x08071BA0
	push {r4, r5, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071BF4 @ =gUnknown_080C696C
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	adds r2, #0x96
	movs r5, #0
	ldrsh r3, [r2, r5]
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	strh r3, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071BEA
	movs r0, #0
	strb r0, [r4]
_08071BEA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071BF4: .4byte gUnknown_080C696C

	thumb_func_start sub_08071BF8
sub_08071BF8: @ 0x08071BF8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071C94 @ =vt_09F80E10
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071C98 @ =0x000003A5
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08071C9C @ =0x00000287
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071CA0 @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x3d
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071CA4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08071CA8 @ =_vt.11PreAppClock
	str r0, [sp, #0x20]
	ldr r0, _08071CAC @ =gUnknown_08103F50
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071C94: .4byte vt_09F80E10
_08071C98: .4byte 0x000003A5
_08071C9C: .4byte 0x00000287
_08071CA0: .4byte _vt.1D
_08071CA4: .4byte _vt.3Unk
_08071CA8: .4byte _vt.11PreAppClock
_08071CAC: .4byte gUnknown_08103F50

	thumb_func_start sub_08071CB0
sub_08071CB0: @ 0x08071CB0
	push {lr}
	ldr r2, _08071CC0 @ =vt_09F80E10
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071CC0: .4byte vt_09F80E10

	thumb_func_start sub_08071CC4
sub_08071CC4: @ 0x08071CC4
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071CCC
sub_08071CCC: @ 0x08071CCC
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071CD4
sub_08071CD4: @ 0x08071CD4
	push {r4, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071D28 @ =gUnknown_080C696C
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	mov r0, ip
	adds r0, #0x96
	movs r2, #0
	ldrsh r3, [r0, r2]
	mov r2, sp
	mov r0, sp
	strh r1, [r0]
	strh r3, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071D1E
	movs r0, #0
	strb r0, [r4]
_08071D1E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08071D28: .4byte gUnknown_080C696C

	thumb_func_start sub_08071D2C
sub_08071D2C: @ 0x08071D2C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071DC8 @ =vt_09F80F08
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071DCC @ =0x00000291
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _08071DD0 @ =0x00000283
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071DD4 @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x1a
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071DD8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08071DDC @ =_vt.11PreAppClock
	str r0, [sp, #0x20]
	ldr r0, _08071DE0 @ =gUnknown_08104370
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071DC8: .4byte vt_09F80F08
_08071DCC: .4byte 0x00000291
_08071DD0: .4byte 0x00000283
_08071DD4: .4byte _vt.1D
_08071DD8: .4byte _vt.3Unk
_08071DDC: .4byte _vt.11PreAppClock
_08071DE0: .4byte gUnknown_08104370

	thumb_func_start sub_08071DE4
sub_08071DE4: @ 0x08071DE4
	push {lr}
	ldr r2, _08071DF4 @ =vt_09F80F08
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071DF4: .4byte vt_09F80F08

	thumb_func_start sub_08071DF8
sub_08071DF8: @ 0x08071DF8
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071E00
sub_08071E00: @ 0x08071E00
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071E08
sub_08071E08: @ 0x08071E08
	push {r4, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, #2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071E58 @ =gUnknown_080C697C
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r3, [r0]
	strh r1, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071E50
	movs r0, #0
	strb r0, [r4]
_08071E50:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08071E58: .4byte gUnknown_080C697C

	thumb_func_start sub_08071E5C
sub_08071E5C: @ 0x08071E5C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071EF8 @ =vt_09F81000
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071EFC @ =0x00000291
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _08071F00 @ =0x00000283
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071F04 @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x19
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071F08 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08071F0C @ =_vt.11PreAppClock
	str r0, [sp, #0x20]
	ldr r0, _08071F10 @ =gUnknown_08104790
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071EF8: .4byte vt_09F81000
_08071EFC: .4byte 0x00000291
_08071F00: .4byte 0x00000283
_08071F04: .4byte _vt.1D
_08071F08: .4byte _vt.3Unk
_08071F0C: .4byte _vt.11PreAppClock
_08071F10: .4byte gUnknown_08104790

	thumb_func_start sub_08071F14
sub_08071F14: @ 0x08071F14
	push {lr}
	ldr r2, _08071F24 @ =vt_09F81000
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071F24: .4byte vt_09F81000

	thumb_func_start sub_08071F28
sub_08071F28: @ 0x08071F28
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071F30
sub_08071F30: @ 0x08071F30
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071F38
sub_08071F38: @ 0x08071F38
	push {r4, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, #2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071F88 @ =gUnknown_080C6984
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r3, [r0]
	strh r1, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071F80
	movs r0, #0
	strb r0, [r4]
_08071F80:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08071F88: .4byte gUnknown_080C6984

	thumb_func_start sub_08071F8C
sub_08071F8C: @ 0x08071F8C
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08071FB8 @ =vt_09F810F8
	str r0, [r4, #0x1c]
	bl sub_08071FF8
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08071FB8: .4byte vt_09F810F8

	thumb_func_start _._10KeyFocuser
_._10KeyFocuser: @ 0x08071FBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08071FEC @ =vt_09F810F8
	str r0, [r4, #0x1c]
	bl sub_08072028
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072034
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071FEC: .4byte vt_09F810F8

	thumb_func_start sub_08071FF0
sub_08071FF0: @ 0x08071FF0
	ldr r0, _08071FF4 @ =gUnknown_02001F9C
	bx lr
	.align 2, 0
_08071FF4: .4byte gUnknown_02001F9C

	thumb_func_start sub_08071FF8
sub_08071FF8: @ 0x08071FF8
	push {r4, lr}
	ldr r1, _08072020 @ =gUnknown_02001FA8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _08072014
	ldr r4, _08072024 @ =gUnknown_02001FAC
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0807207C
	str r0, [r4]
_08072014:
	ldr r0, _08072024 @ =gUnknown_02001FAC
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08072020: .4byte gUnknown_02001FA8
_08072024: .4byte gUnknown_02001FAC

	thumb_func_start sub_08072028
sub_08072028: @ 0x08072028
	ldr r0, _08072030 @ =gUnknown_02001FAC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08072030: .4byte gUnknown_02001FAC

	thumb_func_start sub_08072034
sub_08072034: @ 0x08072034
	push {r4, r5, lr}
	ldr r1, _08072068 @ =gUnknown_02001FA8
	ldr r0, [r1]
	cmp r0, #0
	ble _08072060
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _08072060
	ldr r5, _0807206C @ =gUnknown_02001FAC
	ldr r2, [r5]
	cmp r2, #0
	beq _0807205E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807205E:
	str r4, [r5]
_08072060:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08072068: .4byte gUnknown_02001FA8
_0807206C: .4byte gUnknown_02001FAC

	thumb_func_start sub_08072070
sub_08072070: @ 0x08072070
	push {lr}
	bl sub_08071FF0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807207C
sub_0807207C: @ 0x0807207C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x24
	adds r6, r0, #0
	bl __4Base
	ldr r0, _080723A0 @ =vt_09F81160
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #0
	str r0, [r6, #0x20]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl KeyPadInstance
	mov r8, r0
	movs r1, #0x1e
	bl set_20__6KeyPadUi
	mov r0, r8
	movs r1, #6
	bl set_22__6KeyPadUi
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723A4 @ =_vt.3Unk
	mov sl, r0
	ldr r0, _080723A8 @ =_vt.10UpKeyPress
	str r0, [sp, #0x20]
	ldr r0, _080723AC @ =gUnknown_08104FC8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723B0 @ =_vt.14UpKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723B4 @ =_vt.12DownKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723B8 @ =_vt.16DownKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723BC @ =_vt.12LeftKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723C0 @ =_vt.16LeftKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723C4 @ =_vt.13RightKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723C8 @ =_vt.17RightKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723CC @ =_vt.9AKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723D0 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723D4 @ =_vt.9BKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723D8 @ =_vt.13BKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723DC @ =_vt.9LKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723E0 @ =_vt.13LKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723E4 @ =_vt.9RKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723E8 @ =_vt.13RKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723EC @ =_vt.13StartKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723F0 @ =_vt.17StartKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723F4 @ =_vt.14SelectKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723F8 @ =_vt.18SelectKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r6, #0
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080723A0: .4byte vt_09F81160
_080723A4: .4byte _vt.3Unk
_080723A8: .4byte _vt.10UpKeyPress
_080723AC: .4byte gUnknown_08104FC8
_080723B0: .4byte _vt.14UpKeyLongPress
_080723B4: .4byte _vt.12DownKeyPress
_080723B8: .4byte _vt.16DownKeyLongPress
_080723BC: .4byte _vt.12LeftKeyPress
_080723C0: .4byte _vt.16LeftKeyLongPress
_080723C4: .4byte _vt.13RightKeyPress
_080723C8: .4byte _vt.17RightKeyLongPress
_080723CC: .4byte _vt.9AKeyPress
_080723D0: .4byte _vt.13AKeyLongPress
_080723D4: .4byte _vt.9BKeyPress
_080723D8: .4byte _vt.13BKeyLongPress
_080723DC: .4byte _vt.9LKeyPress
_080723E0: .4byte _vt.13LKeyLongPress
_080723E4: .4byte _vt.9RKeyPress
_080723E8: .4byte _vt.13RKeyLongPress
_080723EC: .4byte _vt.13StartKeyPress
_080723F0: .4byte _vt.17StartKeyLongPress
_080723F4: .4byte _vt.14SelectKeyPress
_080723F8: .4byte _vt.18SelectKeyLongPress

	thumb_func_start sub_080723FC
sub_080723FC: @ 0x080723FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08072420 @ =vt_09F81160
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _08072410
	bl __builtin_vec_delete
_08072410:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08072420: .4byte vt_09F81160

	thumb_func_start sub_08072424
sub_08072424: @ 0x08072424
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	str r1, [sp]
	adds r4, r0, #0
	adds r4, #0x20
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x20]
	cmp r0, r5
	bge _08072472
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08072444
	adds r0, r1, #0
_08072444:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08072464
	adds r1, r0, #0
_0807245A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0807245A
_08072464:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807246E
	bl __builtin_vec_delete
_0807246E:
	str r5, [r4]
	str r6, [r4, #8]
_08072472:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807248C
sub_0807248C: @ 0x0807248C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp]
	adds r6, r4, #0
	adds r6, #0x20
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _080724EC
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_080724B8:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080724E0
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _080724DA
	adds r2, r0, #0
_080724D0:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080724D0
_080724DA:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _080724EC
_080724E0:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _080724B8
_080724EC:
	ldr r0, [sp]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080724F8
sub_080724F8: @ 0x080724F8
	push {lr}
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	bgt _08072508
	movs r0, #0
	b _08072512
_08072508:
	subs r0, #1
	lsls r0, r0, #2
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldr r0, [r1]
_08072512:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072518
sub_08072518: @ 0x08072518
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	cmp r2, #0
	beq _08072544
	ldr r1, [r2, #0x1c]
	adds r1, #0x50
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_08072544:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807254C
sub_0807254C: @ 0x0807254C
	push {r4, lr}
	ldr r4, _08072560 @ =gUnknown_02001F9C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08072564 @ =vt_09F811E0
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08072560: .4byte gUnknown_02001F9C
_08072564: .4byte vt_09F811E0
