	.syntax unified
sub_0809A9D0:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl get__12ClockManager
	bl getTime__5Clock
	ldr r2, _0809AA34
	adds r1, r5, r2
	adds r0, r0, r4
	str r0, [r1]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809AA38
	mov r8, r0
	ldr r0, _0809AA3C
	str r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	movs r2, #0x38
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	ldr r0, _0809AA40
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r4, [r1, #0x3c]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl _call_via_r4
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809AA34: .4byte 0x00000F94
_0809AA38: .4byte _vt.3Unk
_0809AA3C: .4byte _vt.8AppClock
_0809AA40: .4byte gUnknown_080F31E8
	.syntax divided
