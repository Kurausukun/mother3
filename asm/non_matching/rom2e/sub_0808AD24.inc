	.syntax unified
sub_0808AD24:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x3c
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080895A0
	ldr r0, _0808ADAC
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, _0808ADB0
	str r0, [r5, #0x1c]
	str r6, [r5, #0x2c]
	ldrh r1, [r6, #8]
	add r0, sp, #4
	bl __5SoundUs
	add r0, sp, #4
	movs r1, #0
	bl play__5Soundi
	add r0, sp, #4
	movs r1, #2
	bl _._5Sound
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808ADB4
	mov r8, r0
	ldr r0, _0808ADB8
	str r0, [sp, #0x20]
	ldr r0, _0808ADBC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x3c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808ADAC: .4byte vt_09F85378
_0808ADB0: .4byte vt_09F85708
_0808ADB4: .4byte _vt.3Unk
_0808ADB8: .4byte _vt.8AppClock
_0808ADBC: .4byte gUnknown_0811684C
	.syntax divided
