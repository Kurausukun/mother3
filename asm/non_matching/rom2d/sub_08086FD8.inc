	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x24
	adds r4, r0, #0
	lsls r6, r1, #0x10
	lsrs r6, r6, #0x10
	bl __4Base
	ldr r0, _0808704C
	str r0, [r4, #0x20]
	ldr r0, _08087050
	str r0, [r4, #0x1c]
	movs r0, #0x2c
	adds r0, r0, r4
	mov r8, r0
	bl sub_0806D8EC
	movs r0, #0
	strh r6, [r4, #0x28]
	strh r0, [r4, #0x2a]
	ldr r1, _08087054
	mov r0, sp
	bl sub_080706A0
	add r0, sp, #0xc
	mov sb, r0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08087058
	add r5, sp, #0x18
	adds r0, r5, #0
	bl sub_080706A0
	mov r0, r8
	mov r1, sp
	mov r2, sb
	adds r3, r5, #0
	bl sub_0806D9F4
	ldr r0, _0808705C
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #8]
	mov r0, r8
	adds r1, r6, #0
	bl sub_0806DB60
	adds r0, r4, #0
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808704C: .4byte vt_09F84D00
_08087050: .4byte vt_09F84D58
_08087054: .4byte 0x000003A5
_08087058: .4byte 0x00000287
_0808705C: .4byte _vt.1D
	.syntax divided
