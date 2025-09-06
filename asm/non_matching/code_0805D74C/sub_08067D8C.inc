	.syntax unified
sub_08067D8C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r0, _08067DF8
	str r0, [r6, #0x1c]
	ldr r1, _08067DFC
	adds r0, r6, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08067DB6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08067DB6:
	movs r4, #0
_08067DB8:
	lsls r1, r4, #2
	ldr r2, _08067E00
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08067DD6
	ldr r1, [r2]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08067DD6:
	adds r4, #1
	cmp r4, #9
	ble _08067DB8
	bl sub_08086C78
	mov r8, r0
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0
	b _08067E56
	.align 2, 0
_08067DF8: .4byte vt_09F7E758
_08067DFC: .4byte 0x000004DC
_08067E00: .4byte 0x000004B4
_08067E04:
	mov r3, r8
	ldr r4, [r3, #0x1c]
	adds r4, #0x68
	movs r0, #0
	ldrsh r5, [r4, r0]
	add r5, r8
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08087600
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08087600
	adds r2, r0, #0
	cmp r2, #0
	beq _08067E54
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08067E54:
	adds r7, #1
_08067E56:
	adds r0, r6, #0
	bl sub_080875FC
	cmp r7, r0
	blt _08067E04
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #2
	bl _._10KeyFocuser
	ldr r2, _08067EF4
	adds r0, r6, r2
	movs r1, #2
	bl sub_08071F14
	ldr r3, _08067EF8
	adds r0, r6, r3
	movs r1, #2
	bl sub_08071DE4
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #2
	bl sub_0808724C
	ldr r2, _08067EFC
	adds r0, r6, r2
	ldr r1, _08067F00
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r0, _08067F04
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807113C
	movs r1, #0x9c
	lsls r1, r1, #3
	adds r0, r6, r1
	cmp r0, #0
	beq _08067ED2
	cmp r0, r4
	beq _08067ED2
	adds r5, r0, #0
_08067EBC:
	subs r4, #0x5c
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r5, r4
	bne _08067EBC
_08067ED2:
	movs r3, #0x89
	lsls r3, r3, #3
	adds r0, r6, r3
	movs r1, #2
	bl _._11Unk0806D64C
	adds r0, r6, #0
	mov r1, sb
	bl sub_08087348
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067EF4: .4byte 0x000009F4
_08067EF8: .4byte 0x00000958
_08067EFC: .4byte 0x0000081C
_08067F00: .4byte vt_09F7E890
_08067F04: .4byte vt_09F7E458
	.syntax divided
