	.syntax unified
sub_0808AE80:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0808AEE4
	str r0, [r5, #0x1c]
	movs r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808AEE8
	mov r8, r0
	ldr r0, _0808AEEC
	str r0, [sp, #0x20]
	ldr r0, _0808AEF0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808AEE4: .4byte vt_09F85880
_0808AEE8: .4byte _vt.3Unk
_0808AEEC: .4byte _vt.12PostAppClock
_0808AEF0: .4byte gUnknown_08117084
	.syntax divided
