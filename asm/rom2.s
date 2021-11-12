.include "asm/macros.inc"

.syntax unified
.section .text

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
