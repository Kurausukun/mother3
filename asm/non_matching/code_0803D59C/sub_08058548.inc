	.syntax unified
sub_08058548:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r6, _080585B0
	movs r0, #0
	mov sb, r0
	strh r0, [r6]
	ldr r5, _080585B4
	ldrh r0, [r5]
	movs r1, #1
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r5]
	ldr r4, _080585B8
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	mov r0, r8
	strh r0, [r6]
	bl sub_080592A8
	bl nullsub_9
	bl sub_080585C4
	bl nullsub_10
	bl snd_vsync_off
	mov r1, sb
	strh r1, [r6]
	ldrh r1, [r5]
	ldr r0, _080585BC
	ands r0, r1
	strh r0, [r5]
	ldrh r1, [r4]
	ldr r0, _080585C0
	ands r0, r1
	strh r0, [r4]
	mov r0, r8
	strh r0, [r6]
	bl sub_080018E4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080585B0: .4byte 0x04000208
_080585B4: .4byte 0x04000200
_080585B8: .4byte 0x04000004
_080585BC: .4byte 0x0000FFFC
_080585C0: .4byte 0x0000FFE7
	.syntax divided
