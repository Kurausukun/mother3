	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
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
	ldr r0, _08085D4C
	str r0, [r5, #0x1c]
	adds r4, r5, #0
	adds r4, #0x44
	adds r0, r4, #0
	bl sub_08071268
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	movs r0, #0
	ldrsh r2, [r6, r0]
	movs r1, #2
	ldrsh r0, [r6, r1]
	add r1, sp, #0x2c
	subs r0, #0x28
	strh r2, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_08070B28
	adds r0, r4, #0
	mov r1, r8
	bl sub_0807138C
	adds r0, r4, #0
	movs r1, #3
	bl sub_080714B0
	adds r0, r4, #0
	movs r1, #1
	bl sub_080714A0
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08085D50
	mov r8, r0
	ldr r0, _08085D54
	str r0, [sp, #0x24]
	ldr r0, _08085D58
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
_08085D4C: .4byte vt_09F84108
_08085D50: .4byte _vt.3Unk
_08085D54: .4byte _vt.12PostAppClock
_08085D58: .4byte gUnknown_0810FA58
	.syntax divided
