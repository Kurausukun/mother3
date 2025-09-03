	.syntax unified
sub_0805AD54:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r2, _0805ADA8
	movs r0, #0
	mov r8, r0
	strh r0, [r2]
	ldr r5, _0805ADAC
	ldrh r0, [r5]
	movs r6, #1
	orrs r0, r6
	strh r0, [r5]
	ldr r4, _0805ADB0
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	strh r6, [r2]
	str r2, [sp]
	bl sub_0805AFCC
	ldr r2, [sp]
	mov r0, r8
	strh r0, [r2]
	ldrh r1, [r5]
	ldr r0, _0805ADB4
	ands r0, r1
	strh r0, [r5]
	ldrh r1, [r4]
	ldr r0, _0805ADB8
	ands r0, r1
	strh r0, [r4]
	strh r6, [r2]
	bl sub_080018F4
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADA8: .4byte 0x04000208
_0805ADAC: .4byte 0x04000200
_0805ADB0: .4byte 0x04000004
_0805ADB4: .4byte 0x0000FFFC
_0805ADB8: .4byte 0x0000FFE7
	.syntax divided
