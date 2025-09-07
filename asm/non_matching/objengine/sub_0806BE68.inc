	.syntax unified
sub_0806BE68:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806BF40
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #3
	movs r4, #0
	movs r3, #0x81
	lsls r3, r3, #2
	movs r2, #1
	rsbs r2, r2, #0
_0806BE86:
	str r4, [r0]
	adds r0, r0, r3
	subs r1, #1
	cmp r1, r2
	bne _0806BE86
	movs r1, #0x83
	lsls r1, r1, #4
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _0806BF44
	adds r0, r7, r2
	str r1, [r0]
	ldr r2, _0806BF48
	adds r0, r7, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0x10
	adds r0, r7, r2
	str r1, [r0]
	subs r2, #4
	adds r0, r7, r2
	strh r1, [r0]
	ldr r2, _0806BF4C
	adds r0, r7, r2
	str r1, [r0]
	bl sub_0806A974
	adds r4, r0, #0
	ldr r1, _0806BF50
	bl sub_0806AFA4
	movs r1, #0x82
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_0806AF58
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806BF54
	ldr r0, _0806BF58
	str r0, [sp, #0x20]
	ldr r0, _0806BF5C
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
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806BF60
	str r0, [sp, #0x20]
	ldr r0, _0806BF64
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
	bl sub_0806C428
	bl sub_0806C77C
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806BF40: .4byte _vt.9ObjEngine
_0806BF44: .4byte 0x00000834
_0806BF48: .4byte 0x00000938
_0806BF4C: .4byte 0x00000B4C
_0806BF50: .4byte 0x0000EF9F
_0806BF54: .4byte _vt.3Unk
_0806BF58: .4byte _vt.8SysClock
_0806BF5C: .4byte gUnknown_080FF3FC
_0806BF60: .4byte _vt.12PostSysClock
_0806BF64: .4byte gUnknown_080FF404
	.syntax divided
