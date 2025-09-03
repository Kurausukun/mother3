	.syntax unified
sub_08054528:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, _0805454C
	adds r1, #0x10
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _08054540
	movs r0, #0x63
_08054540:
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, r2
	bls _08054550
	subs r0, r0, r2
	b _08054552
	.align 2, 0
_0805454C: .4byte gSave
_08054550:
	movs r0, #0
_08054552:
	strb r0, [r1]
	pop {r0}
	bx r0
	.syntax divided
