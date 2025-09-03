	.syntax unified
sub_08086C94:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r6, r1, #0
	movs r0, #0
	bl sub_080707C4
	ldr r2, _08086CF0
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r4, [r1, #4]
	cmp r0, r4
	bgt _08086CC0
	movs r0, #1
	bl sub_080707C4
	cmp r0, r4
	ble _08086CFC
_08086CC0:
	ldr r0, _08086CF4
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _08086CF8
	str r5, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	add r4, sp, #0xc
	adds r0, r4, #0
	mov r1, sp
	bl __9BXTHandleRC6BXTRef
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl getMessage__9BXTHandleUi
	adds r0, r4, #0
	movs r1, #2
	bl _._9BXTHandle
	str r5, [sp, #8]
	b _08086D06
	.align 2, 0
_08086CF0: .4byte gSoundPlayerTable
_08086CF4: .4byte gUnknown_09C8F390
_08086CF8: .4byte _vt.1D
_08086CFC:
	ldr r1, _08086D10
	adds r0, r7, #0
	movs r2, #2
	bl sub_080706D0
_08086D06:
	adds r0, r7, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08086D10: .4byte 0x000003A7
	.syntax divided
