	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806E608
	str r0, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0x20
	movs r0, #0xf
	add r3, sp, #0x28
	add r1, sp, #0x2c
	mov ip, r1
	add r1, sp, #0x34
	mov sl, r1
	movs r1, #1
	rsbs r1, r1, #0
_0806E536:
	subs r0, #1
	cmp r0, r1
	bne _0806E536
	movs r0, #0
	str r0, [r2]
	movs r0, #0x20
	adds r0, r0, r7
	mov sb, r0
	adds r5, r3, #0
	movs r4, #0
	movs r6, #0xf
	add r1, sp, #0x28
	mov r8, r1
_0806E550:
	mov r0, r8
	strb r4, [r0]
	strb r4, [r5, #1]
	strb r4, [r5, #2]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r1, ip
	strh r4, [r1, #4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r0, [r7, #0x20]
	adds r3, r0, #1
	cmp r3, #0x10
	bgt _0806E576
	lsls r0, r0, #3
	add r0, sb
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r7, #0x20]
_0806E576:
	subs r6, #1
	cmp r6, #0
	bge _0806E550
	bl sub_0806B040
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	add r0, sp, #0x34
	strh r1, [r0]
	mov r0, sl
	strh r1, [r0, #2]
	adds r0, r4, #0
	movs r1, #0
	mov r2, sl
	bl sub_0806B2CC
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0806BACC
	adds r0, r7, #0
	bl sub_0806E640
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806E60C
	ldr r0, _0806E610
	str r0, [sp, #0x20]
	ldr r0, _0806E614
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806E608: .4byte vt_09F7FF50
_0806E60C: .4byte _vt.3Unk
_0806E610: .4byte _vt.12PostAppClock
_0806E614: .4byte gUnknown_0810019C
	.syntax divided
