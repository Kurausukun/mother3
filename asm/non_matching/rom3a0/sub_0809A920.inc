	.syntax unified
sub_0809A920:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809A974
	mov r8, r0
	ldr r0, _0809A978
	str r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	adds r1, #0x48
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	ldr r0, _0809A97C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r4, [r1, #4]
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
_0809A974: .4byte _vt.3Unk
_0809A978: .4byte _vt.8AppClock
_0809A97C: .4byte gUnknown_080F31E8
	.syntax divided
