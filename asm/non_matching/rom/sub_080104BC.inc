	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #7
	bhi _08010520
	lsls r0, r0, #2
	ldr r1, _080104D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080104D4: .4byte _080104D8
_080104D8:
	.4byte _08010518
	.4byte _080104F8
	.4byte _080104F8
	.4byte _080104F8
	.4byte _0801050A
	.4byte _08010500
	.4byte _08010500
	.4byte _08010500
_080104F8:
	bl sub_0801A5EC
	subs r0, #0xf0
	b _08010502
_08010500:
	movs r0, #0
_08010502:
	strh r0, [r4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #2]
	b _08010520
_0801050A:
	ldrh r0, [r5]
	strh r0, [r4]
	bl sub_0801A604
	subs r0, #0xa0
	strh r0, [r4, #2]
	b _08010520
_08010518:
	ldrh r0, [r5]
	movs r1, #0
	strh r0, [r4]
	strh r1, [r4, #2]
_08010520:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
