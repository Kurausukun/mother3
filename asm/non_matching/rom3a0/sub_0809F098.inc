	.syntax unified
sub_0809F098:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x8c
	mov sl, r0
	str r1, [sp, #0x80]
	adds r0, r1, #0
	bl dynaCastMonster
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x80]
	ldr r2, [r0, #0x20]
	adds r2, #0x58
	adds r0, #0x20
	mov sb, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r7, sp, #0x68
	adds r0, r7, #0
	ldr r2, [r2, #4]
	add r1, sb
	bl _call_via_r2
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	bl sub_080651C0
	adds r5, r0, #0
	mov r0, sl
	str r5, [r0, #0x5c]
	ldr r1, [r5, #0x1c]
	mov r8, r1
	movs r2, #0x68
	add r8, r2
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r5, r5, r0
	ldr r3, [sp, #0x80]
	ldr r2, [r3, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x6c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	add r1, sb
	bl _call_via_r2
	movs r1, #2
	ldrsh r0, [r7, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	add r3, sp, #0x70
	movs r1, #0
	strh r1, [r3]
	strh r0, [r3, #2]
	movs r2, #0
	ldrsh r6, [r4, r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r1, #2
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	add r1, sp, #0x74
	strh r6, [r1]
	strh r2, [r1, #2]
	mov r3, r8
	ldr r2, [r3, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sl
	ldr r5, [r0, #0x5c]
	ldr r4, [r5, #0x1c]
	adds r4, #0x70
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r2, [sp, #0x80]
	ldr r0, [r2, #0x20]
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	add sb, r1
	ldr r1, [r0, #4]
	mov r0, sb
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1, #0x5c]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x80]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809F198
	b _0809F412
_0809F198:
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x80]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x88]
	cmp r0, #1
	beq _0809F1BC
	b _0809F412
_0809F1BC:
	add r0, sp, #4
	bl sub_08071F8C
	mov r1, sl
	ldr r0, [r1, #0x58]
	add r7, sp, #0x24
	cmp r0, #4
	bne _0809F1CE
	b _0809F2DE
_0809F1CE:
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r2, _0809F508
	mov sb, r2
	ldr r0, _0809F50C
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F510
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F514
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F518
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F51C
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F520
	ldr r4, [r1]
	ldr r5, [r1, #4]
	str r5, [sp]
	adds r3, r4, #0
	ldr r6, [r2, #0x3c]
	add r1, sp, #4
	adds r2, r7, #0
	bl sub_0809194C
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F524
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r2, #0x38
	ldrsh r0, [r1, r2]
	add r0, sl
	str r5, [sp]
	adds r3, r4, #0
	ldr r4, [r1, #0x3c]
	add r1, sp, #4
	adds r2, r7, #0
	bl _call_via_r4
	mov r3, sb
	str r3, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #0x44
	bl __4Base
	ldr r0, _0809F528
	str r0, [sp, #0x60]
	add r5, sp, #0x44
	mov r0, sl
	ldr r2, [r0, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F52C
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x60]
	adds r0, r5, #0
	movs r1, #2
	bl _._4Base
_0809F2DE:
	ldr r3, [sp, #0x88]
	mov r0, sl
	str r3, [r0, #0x58]
_0809F2E4:
	movs r0, #1
	bl setsleep
	mov r1, sl
	ldr r0, [r1, #0x58]
	cmp r0, #4
	bne _0809F2E4
	bl sub_08074614
	adds r5, r0, #0
	add r0, sp, #0x24
	bl __4Base
	ldr r2, _0809F508
	mov sb, r2
	ldr r0, _0809F50C
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F510
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F514
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F518
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F51C
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F520
	ldr r4, [r1]
	ldr r5, [r1, #4]
	str r5, [sp]
	adds r3, r4, #0
	ldr r6, [r2, #4]
	add r1, sp, #4
	adds r2, r7, #0
	bl sub_0809194C
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F524
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r1, [r3, #0x1c]
	adds r1, #0x48
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	str r5, [sp]
	adds r3, r4, #0
	ldr r4, [r1, #4]
	add r1, sp, #4
	adds r2, r7, #0
	bl _call_via_r4
	mov r3, sb
	str r3, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	bl get__12ClockManager
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F528
	str r0, [sp, #0x40]
	mov r0, sl
	ldr r2, [r0, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F52C
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	movs r1, #2
	bl _._10KeyFocuser
_0809F412:
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F462
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r0, r4, #0
	bl __builtin_new
	mov r3, sl
	ldr r1, [r3, #0x50]
	add r2, sp, #0x78
	movs r5, #0x78
	movs r3, #0x28
	strh r5, [r2]
	strh r3, [r2, #2]
	bl __9AutoComboUiRC11ComboRhythm
	adds r0, r4, #0
	bl __builtin_new
	mov r2, sl
	ldr r1, [r2, #0x54]
	add r2, sp, #0x7c
	movs r3, #0x34
	strh r5, [r2]
	strh r3, [r2, #2]
	bl __15AutoComboResultUiRC11ComboRhythm
_0809F462:
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F49A
	ldr r0, _0809F530
	bl playSound
	mov r3, sl
	ldr r0, [r3, #0x5c]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_0809F49A:
	mov r0, sl
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	beq _0809F4B2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0809F4B2:
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x84]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F534
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x84]
	bl _call_via_r2
	ldr r0, [sp, #0x84]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, [sp, #0x84]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	b _0809F584
	.align 2, 0
_0809F508: .4byte _vt.3Unk
_0809F50C: .4byte vt_09F81278
_0809F510: .4byte gUnknown_080F5FE4
_0809F514: .4byte vt_09F811F8
_0809F518: .4byte gUnknown_080F5FEC
_0809F51C: .4byte _vt.9AKeyPress
_0809F520: .4byte gUnknown_080F5FF4
_0809F524: .4byte _vt.9LKeyPress
_0809F528: .4byte _vt.8AppClock
_0809F52C: .4byte gUnknown_080F5FFC
_0809F530: .4byte 0x0000064C
_0809F534:
	ldr r3, [sp, #0x80]
	ldr r1, [r3, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0809F584
	ldr r3, [sp, #0x80]
	ldr r1, [r3, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F584
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x27
	bgt _0809F584
	ldr r0, [sp, #0x80]
	movs r1, #3
	movs r2, #1
	bl tellStatusWoreOff
_0809F584:
	bl sub_08073270
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	add sp, #0x8c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
