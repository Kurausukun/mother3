	.syntax unified
sub_08023414:
	push {lr}
	ldr r0, _0802342C
	ldr r1, _08023430
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #9
	bhi _08023474
	lsls r0, r0, #2
	ldr r1, _08023434
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802342C: .4byte gGame
_08023430: .4byte 0x0000845A
_08023434: .4byte _08023438
_08023438:
	.4byte _08023474
	.4byte _08023474
	.4byte _08023474
	.4byte _08023474
	.4byte _08023474
	.4byte _08023460
	.4byte _08023474
	.4byte _08023474
	.4byte _08023474
	.4byte _08023460
_08023460:
	bl sub_08023490
	ldr r0, _08023484
	ldr r1, _08023488
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08023480
_08023474:
	ldr r1, _08023484
	ldr r0, _0802348C
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08023480:
	pop {r0}
	bx r0
	.align 2, 0
_08023484: .4byte gGame
_08023488: .4byte 0x00009480
_0802348C: .4byte 0x00008484
	.syntax divided
