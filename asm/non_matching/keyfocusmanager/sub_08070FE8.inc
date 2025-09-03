	.syntax unified
sub_08070FE8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, [sp, #0x40]
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0807084C
	ldr r0, _0807104C
	str r0, [r5, #0x1c]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08071050
	mov r8, r0
	ldr r0, _08071054
	str r0, [sp, #0x24]
	ldr r0, _08071058
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807104C: .4byte vt_09F80960
_08071050: .4byte _vt.3Unk
_08071054: .4byte _vt.11PreAppClock
_08071058: .4byte gUnknown_08102A9C
	.syntax divided
