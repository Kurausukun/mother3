	.syntax unified
sub_080A8DB0:
	push {lr}
	cmp r1, #0
	bne _080A8DFC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A8DFC
	lsls r0, r0, #2
	ldr r1, _080A8DCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8DCC: .4byte _080A8DD0
_080A8DD0:
	.4byte _080A8DFC
	.4byte _080A8DE4
	.4byte _080A8DEC
	.4byte _080A8DF2
	.4byte _080A8DFC
_080A8DE4:
	ldr r0, _080A8DE8
	b _080A8E00
	.align 2, 0
_080A8DE8: .4byte 0x00000203
_080A8DEC:
	movs r0, #0x81
	lsls r0, r0, #2
	b _080A8E00
_080A8DF2:
	ldr r0, _080A8DF8
	b _080A8E00
	.align 2, 0
_080A8DF8: .4byte 0x00000205
_080A8DFC:
	movs r0, #0xf3
	lsls r0, r0, #1
_080A8E00:
	pop {r1}
	bx r1
	.syntax divided
