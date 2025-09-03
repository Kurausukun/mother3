	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x34]
	lsls r1, r1, #1
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0xe
	bhi _0807F550
	lsls r0, r0, #2
	ldr r1, _0807F4C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807F4C0: .4byte _0807F4C4
_0807F4C4:
	.4byte _0807F500
	.4byte _0807F500
	.4byte _0807F500
	.4byte _0807F500
	.4byte _0807F500
	.4byte _0807F508
	.4byte _0807F510
	.4byte _0807F518
	.4byte _0807F520
	.4byte _0807F528
	.4byte _0807F530
	.4byte _0807F538
	.4byte _0807F550
	.4byte _0807F540
	.4byte _0807F548
_0807F500:
	adds r0, r2, #0
	bl sub_0807F558
	b _0807F552
_0807F508:
	adds r0, r2, #0
	bl sub_0807F5D0
	b _0807F552
_0807F510:
	adds r0, r2, #0
	bl sub_0807F648
	b _0807F552
_0807F518:
	adds r0, r2, #0
	bl sub_0807F7DC
	b _0807F552
_0807F520:
	adds r0, r2, #0
	bl sub_0807F964
	b _0807F552
_0807F528:
	adds r0, r2, #0
	bl sub_0807FAF4
	b _0807F552
_0807F530:
	adds r0, r2, #0
	bl sub_0807FC84
	b _0807F552
_0807F538:
	adds r0, r2, #0
	bl sub_0807FE08
	b _0807F552
_0807F540:
	adds r0, r2, #0
	bl sub_0807FF98
	b _0807F552
_0807F548:
	adds r0, r2, #0
	bl sub_08080040
	b _0807F552
_0807F550:
	movs r0, #1
_0807F552:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
