	.syntax unified
sub_0800451C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r2, sp
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x80
	strh r0, [r1]
	bl sub_08001960
	bl snd_vsync
	bl snd_main
	bl snd_vsync_off
	mov r4, sp
	adds r4, #2
	ldr r0, _0800462C
	ldrh r0, [r0]
	strh r0, [r4]
	add r3, sp, #4
	ldr r1, _08004630
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r2, [r1]
	ldr r0, _08004634
	ands r0, r2
	strh r0, [r1]
	movs r5, #0
	mov r8, r4
	adds r7, r3, #0
_08004562:
	bl sub_08001960
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1d
	bls _08004562
	movs r0, #0
	bl sub_0800186C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08004638
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0800463C
	bl sub_0800A480
	bl sub_080377D0
	ldr r1, _08004640
	ldr r0, _08004644
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r6, _08004648
	ldr r2, _0800464C
	adds r5, r2, #0
_080045A2:
	ldrh r0, [r6]
	adds r4, r5, #0
	bics r4, r0
	bl sub_08001960
	cmp r4, #0
	bne _080045A2
	ldr r0, _08004650
	movs r1, #0
	bl resetInputState
	movs r5, #0
_080045BA:
	bl sub_08001960
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1d
	bls _080045BA
	ldr r1, _08004630
	ldrh r0, [r7]
	strh r0, [r1]
	subs r1, #4
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1]
	bl snd_vsync_on
	ldr r4, _08004654
	ldr r0, _08004658
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r2, _0800465C
	adds r4, r4, r2
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	ldrb r1, [r4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x13
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800462C: .4byte 0x04000080
_08004630: .4byte 0x04000084
_08004634: .4byte 0x0000FF7F
_08004638: .4byte 0x0000FEFF
_0800463C: .4byte gUnknown_080C1FF8
_08004640: .4byte gSomeBlend
_08004644: .4byte 0x000121B6
_08004648: .4byte 0x04000130
_0800464C: .4byte 0x000003FF
_08004650: .4byte gInputState
_08004654: .4byte gGame
_08004658: .4byte 0x00009D14
_0800465C: .4byte 0x000082B9
	.syntax divided
