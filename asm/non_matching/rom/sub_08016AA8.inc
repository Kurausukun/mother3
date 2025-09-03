	.syntax unified
sub_08016AA8:
	push {lr}
	ldr r0, _08016AC8
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08016AD0
	ldr r1, _08016ACC
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	b _08016ADC
	.align 2, 0
_08016AC8: .4byte gGame
_08016ACC: .4byte gSomeBlend
_08016AD0:
	ldr r0, _08016AE0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
_08016ADC:
	pop {r0}
	bx r0
	.align 2, 0
_08016AE0: .4byte gUnknown_02016078
	.syntax divided
