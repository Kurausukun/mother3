	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _080861F8
	str r0, [r5, #0x1c]
	movs r0, #0x44
	adds r0, r0, r5
	mov r8, r0
	bl sub_0806D8EC
	movs r1, #0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #2
	ldrsh r2, [r4, r1]
	add r1, sp, #0x2c
	subs r0, #0x10
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r5, #0
	bl sub_08070B28
	movs r1, #0xa4
	lsls r1, r1, #2
	add r0, sp, #8
	bl sub_080706A0
	add r6, sp, #0x14
	adds r0, r6, #0
	movs r1, #0
	bl sub_080706A0
	ldr r1, _080861FC
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, r8
	add r1, sp, #8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08086200
	str r0, [sp, #0x28]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x10]
	mov r0, r8
	movs r1, #0x7b
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08086204
	mov r8, r0
	ldr r0, _08086208
	str r0, [sp, #0x24]
	ldr r0, _0808620C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080861F8: .4byte vt_09F84558
_080861FC: .4byte 0x0000027B
_08086200: .4byte _vt.1D
_08086204: .4byte _vt.3Unk
_08086208: .4byte _vt.12PostAppClock
_0808620C: .4byte gUnknown_08110DF0
	.syntax divided
