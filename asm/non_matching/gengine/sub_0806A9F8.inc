	.syntax unified
sub_0806A9F8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806AB74
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x40
	movs r2, #1
	add r5, sp, #0x28
	add r6, sp, #0x2c
	add r1, sp, #0x30
	mov r8, r1
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806AA28:
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	subs r2, #1
	cmp r2, r3
	bne _0806AA28
	adds r0, r7, #0
	adds r0, #0x48
	movs r2, #1
	adds r4, r7, #0
	adds r4, #0x38
	movs r1, #0x3a
	adds r1, r1, r7
	mov sb, r1
	adds r1, r7, #0
	adds r1, #0x50
	str r1, [sp, #0x34]
	adds r1, #2
	str r1, [sp, #0x38]
	adds r1, #8
	str r1, [sp, #0x3c]
	movs r1, #0x62
	adds r1, r1, r7
	mov sl, r1
	adds r1, r7, #0
	adds r1, #0x6a
	str r1, [sp, #0x40]
	adds r1, #4
	str r1, [sp, #0x44]
	adds r1, #4
	str r1, [sp, #0x48]
	adds r1, #2
	str r1, [sp, #0x4c]
	adds r1, #2
	str r1, [sp, #0x50]
	adds r1, #2
	str r1, [sp, #0x54]
	adds r1, #2
	str r1, [sp, #0x58]
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806AA7C:
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	subs r2, #1
	cmp r2, r3
	bne _0806AA7C
	movs r0, #0
	str r0, [r7, #0x20]
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x28]
	strh r0, [r7, #0x2a]
	strh r0, [r7, #0x2c]
	strh r0, [r7, #0x2e]
	movs r1, #0x3f
	strh r1, [r7, #0x30]
	add r1, sp, #0x28
	strh r0, [r1]
	strh r0, [r5, #2]
	ldr r0, [sp, #0x28]
	str r0, [r7, #0x34]
	movs r5, #0
	mov ip, r4
	movs r3, #0
	adds r4, r6, #0
	mov r6, r8
	str r6, [sp, #0x5c]
	adds r1, r7, #0
	adds r1, #0x40
	movs r0, #0x3f
	mov r8, r0
	mov r2, sb
_0806AABC:
	mov r6, ip
	adds r0, r6, r5
	strb r3, [r0]
	mov r0, r8
	strh r0, [r2]
	add r0, sp, #0x2c
	strh r3, [r0]
	strh r3, [r4, #2]
	ldr r0, [sp, #0x2c]
	str r0, [r1]
	add r0, sp, #0x30
	strh r3, [r0]
	ldr r6, [sp, #0x5c]
	strh r3, [r6, #2]
	ldr r0, [sp, #0x30]
	str r0, [r1, #8]
	adds r1, #4
	adds r2, #2
	adds r5, #1
	cmp r5, #1
	ble _0806AABC
	movs r0, #0
	ldr r1, [sp, #0x34]
	strh r0, [r1]
	movs r5, #0
	mov r2, sl
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	movs r3, #3
_0806AAF6:
	strh r5, [r0]
	strh r5, [r1]
	strh r5, [r2]
	adds r2, #2
	adds r1, #2
	adds r0, #2
	subs r3, #1
	cmp r3, #0
	bge _0806AAF6
	movs r3, #0
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x40]
	movs r2, #1
_0806AB10:
	strh r3, [r0]
	strh r3, [r1]
	adds r1, #2
	adds r0, #2
	subs r2, #1
	cmp r2, #0
	bge _0806AB10
	movs r0, #0
	ldr r6, [sp, #0x48]
	strh r0, [r6]
	ldr r1, [sp, #0x4c]
	strh r0, [r1]
	ldr r6, [sp, #0x50]
	strh r0, [r6]
	ldr r1, [sp, #0x54]
	strh r0, [r1]
	ldr r6, [sp, #0x58]
	strh r0, [r6]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806AB78
	ldr r0, _0806AB7C
	str r0, [sp, #0x20]
	ldr r0, _0806AB80
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
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806AB74: .4byte vt_09F7EF30
_0806AB78: .4byte _vt.3Unk
_0806AB7C: .4byte _vt.8SysClock
_0806AB80: .4byte gUnknown_080FF19C
	.syntax divided
