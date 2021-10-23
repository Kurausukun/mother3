.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08069A50
sub_08069A50: @ 0x08069A50
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #8
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069A88
sub_08069A88: @ 0x08069A88
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #0x10
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #1
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069AC0
sub_08069AC0: @ 0x08069AC0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #0x20
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #2
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069AF8
sub_08069AF8: @ 0x08069AF8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl disableAll__3Irc
	ldr r1, _08069B20 @ =0x04000004
	ldrh r2, [r1]
	movs r0, #0xff
	ands r0, r2
	strh r0, [r1]
	lsls r4, r4, #8
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	adds r0, r5, #0
	bl enableAll__3Irc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069B20: .4byte 0x04000004

	thumb_func_start sub_08069B24
sub_08069B24: @ 0x08069B24
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl disableAll__3Irc
	adds r6, #3
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sb
	bl sub_08069C24
	mov r0, r8
	bl enableAll__3Irc
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08069B6C
sub_08069B6C: @ 0x08069B6C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #7
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069BA4
sub_08069BA4: @ 0x08069BA4
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl disableAll__3Irc
	adds r6, #8
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sb
	bl sub_08069C24
	mov r0, r8
	bl enableAll__3Irc
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08069BEC
sub_08069BEC: @ 0x08069BEC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069C24
sub_08069C24: @ 0x08069C24
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #0x34
	muls r1, r6, r1
	adds r1, #0x28
	adds r5, r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r0, r5, #4
	adds r0, r0, r1
	str r2, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r5, r0
	str r3, [r0, #0x14]
	str r4, [r0, #0x18]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08069C6E
	ldr r2, _08069C7C @ =0x04000200
	movs r0, #1
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08069C80 @ =0x04000004
	ldrh r1, [r2]
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
_08069C6E:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0
_08069C7C: .4byte 0x04000200
_08069C80: .4byte 0x04000004

	thumb_func_start sub_08069C84
sub_08069C84: @ 0x08069C84
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #8
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069CBC
sub_08069CBC: @ 0x08069CBC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #0x10
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #1
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069CF4
sub_08069CF4: @ 0x08069CF4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #0x20
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #2
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069D2C
sub_08069D2C: @ 0x08069D2C
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl disableAll__3Irc
	adds r6, #3
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sb
	bl sub_08069E2C
	mov r0, r8
	bl enableAll__3Irc
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08069D74
sub_08069D74: @ 0x08069D74
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #7
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069DAC
sub_08069DAC: @ 0x08069DAC
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl disableAll__3Irc
	adds r6, #8
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sb
	bl sub_08069E2C
	mov r0, r8
	bl enableAll__3Irc
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08069DF4
sub_08069DF4: @ 0x08069DF4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl disableAll__3Irc
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl enableAll__3Irc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069E2C
sub_08069E2C: @ 0x08069E2C
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r1
	mov sl, r2
	str r3, [sp, #0x28]
	ldr r1, [sp, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r1, #0x34
	mov r2, ip
	muls r2, r1, r2
	adds r1, r2, #0
	adds r1, #0x28
	adds r5, r0, r1
	movs r6, #0
	ldrb r7, [r5]
	cmp r6, r7
	bge _08069F0A
	adds r0, r5, #4
	str r0, [sp, #4]
	ldr r1, _08069EF4 @ =0x04000200
	mov sb, r1
	adds r3, r5, #0
	adds r3, #0x16
	adds r4, r0, #0
	ldr r2, [sp, #0x28]
	asrs r2, r2, #0x10
	mov r8, r2
	movs r2, #0
_08069E72:
	ldr r0, [r4]
	cmp r0, sl
	bne _08069EFC
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r1, r8
	bne _08069EFC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08069E96
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldr r7, [sp, #0x2c]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _08069EA4
_08069E96:
	adds r0, r5, #0
	adds r0, #0x18
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bne _08069EFC
_08069EA4:
	adds r0, r6, #1
	ldrb r7, [r5]
	cmp r0, r7
	bge _08069ECC
	adds r3, r0, #0
	adds r2, r2, r5
	lsls r0, r6, #2
	ldr r1, [sp, #4]
	adds r4, r0, r1
_08069EB6:
	ldr r0, [r4, #4]
	stm r4!, {r0}
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x20]
	str r0, [r2, #0x14]
	str r1, [r2, #0x18]
	adds r3, #1
	adds r2, #8
	ldrb r7, [r5]
	cmp r3, r7
	blt _08069EB6
_08069ECC:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069F0A
	movs r1, #1
	mov r0, ip
	lsls r1, r0
	mov r2, sb
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r1, _08069EF8 @ =0x04000004
	ldrh r0, [r1]
	ldr r7, [sp]
	bics r0, r7
	strh r0, [r1]
	b _08069F0A
	.align 2, 0
_08069EF4: .4byte 0x04000200
_08069EF8: .4byte 0x04000004
_08069EFC:
	adds r3, #8
	adds r4, #4
	adds r2, #8
	adds r6, #1
	ldrb r0, [r5]
	cmp r6, r0
	blt _08069E72
_08069F0A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3

	thumb_func_start sub_08069F1C
sub_08069F1C: @ 0x08069F1C
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start irq_vblank
irq_vblank: @ 0x08069F20
	push {lr}
	bl sub_080698C4
	movs r1, #0
	bl sub_08069FFC
	bl sub_080698C4
	ldr r1, [r0, #0x24]
	adds r1, #1
	str r1, [r0, #0x24]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start irq_hblank
irq_hblank: @ 0x08069F3C
	push {lr}
	bl sub_080698C4
	movs r1, #1
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_vcount
irq_vcount: @ 0x08069F4C
	push {lr}
	bl sub_080698C4
	movs r1, #2
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_timer0
irq_timer0: @ 0x08069F5C
	push {lr}
	bl sub_080698C4
	movs r1, #3
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_timer1
irq_timer1: @ 0x08069F6C
	push {lr}
	bl sub_080698C4
	movs r1, #4
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_timer2
irq_timer2: @ 0x08069F7C
	push {lr}
	bl sub_080698C4
	movs r1, #5
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_timer3
irq_timer3: @ 0x08069F8C
	push {lr}
	bl sub_080698C4
	movs r1, #6
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_serial
irq_serial: @ 0x08069F9C
	push {lr}
	bl sub_080698C4
	movs r1, #7
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_dma0
irq_dma0: @ 0x08069FAC
	push {lr}
	bl sub_080698C4
	movs r1, #8
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_dma1
irq_dma1: @ 0x08069FBC
	push {lr}
	bl sub_080698C4
	movs r1, #9
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_dma2
irq_dma2: @ 0x08069FCC
	push {lr}
	bl sub_080698C4
	movs r1, #0xa
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_dma3
irq_dma3: @ 0x08069FDC
	push {lr}
	bl sub_080698C4
	movs r1, #0xb
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start irq_key
irq_key: @ 0x08069FEC
	push {lr}
	bl sub_080698C4
	movs r1, #0xc
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069FFC
sub_08069FFC: @ 0x08069FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, #0x28
	ldr r1, [sp]
	adds r1, r1, r0
	mov sl, r1
	movs r2, #0
	mov sb, r2
	ldrb r0, [r1]
	cmp sb, r0
	bge _0806A07E
	mov r8, sl
_0806A024:
	mov r2, sb
	lsls r1, r2, #2
	mov r0, sl
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r0
	mov r0, r8
	ldr r2, [r0, #0x14]
	ldr r3, [r0, #0x18]
	asrs r4, r2, #0x10
	cmp r4, #0
	ble _0806A054
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add r0, ip
	ldr r1, [r0]
	lsls r0, r4, #3
	adds r0, r0, r1
	subs r0, #8
	ldr r6, [r0]
	ldr r7, [r0, #4]
	adds r5, r7, #0
	b _0806A056
_0806A054:
	adds r5, r3, #0
_0806A056:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r4, #0
	ble _0806A066
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _0806A068
_0806A066:
	adds r0, r1, #0
_0806A068:
	add r0, ip
	bl _call_via_r5
	movs r1, #8
	add r8, r1
	movs r2, #1
	add sb, r2
	mov r0, sl
	ldrb r0, [r0]
	cmp sb, r0
	blt _0806A024
_0806A07E:
	ldr r0, [sp]
	bl disableAll__3Irc
	ldr r1, _0806A0A4 @ =gUnknown_03007FF8
	movs r0, #1
	ldr r2, [sp, #4]
	lsls r0, r2
	strh r0, [r1]
	ldr r0, [sp]
	bl enableAll__3Irc
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A0A4: .4byte gUnknown_03007FF8

	thumb_func_start sub_0806A0A8
sub_0806A0A8: @ 0x0806A0A8
	push {r4, lr}
	ldr r4, _0806A0BC @ =gUnknown_02001C5C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806A0C0 @ =0x09F7EB88
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A0BC: .4byte gUnknown_02001C5C
_0806A0C0: .4byte 0x09F7EB88
