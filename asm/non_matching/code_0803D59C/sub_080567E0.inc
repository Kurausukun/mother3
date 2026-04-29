	.syntax unified
sub_080567E0:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r6, _08056848
	movs r0, #0
	mov sb, r0
	strh r0, [r6]
	ldr r5, _0805684C
	ldrh r0, [r5]
	movs r1, #1
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r5]
	ldr r4, _08056850
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	mov r0, r8
	strh r0, [r6]
	bl snd_vsync_on
	bl sub_0805685C
	movs r0, #0x8b
	bl startSong
	bl snd_vsync_off
	mov r1, sb
	strh r1, [r6]
	ldrh r1, [r5]
	ldr r0, _08056854
	ands r0, r1
	strh r0, [r5]
	ldrh r1, [r4]
	ldr r0, _08056858
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
_08056848: .4byte 0x04000208
_0805684C: .4byte 0x04000200
_08056850: .4byte 0x04000004
_08056854: .4byte 0x0000FFFC
_08056858: .4byte 0x0000FFE7
	.syntax divided
