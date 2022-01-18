.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806A96C
sub_0806A96C: @ 0x0806A96C
	ldr r0, _0806A970 @ =gUnknown_02001CCC
	bx lr
	.align 2, 0
_0806A970: .4byte gUnknown_02001CCC

	thumb_func_start sub_0806A974
sub_0806A974: @ 0x0806A974
	push {r4, lr}
	ldr r1, _0806A99C @ =gUnknown_02001CD8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806A990
	ldr r4, _0806A9A0 @ =gUnknown_02001CDC
	movs r0, #0x7c
	bl __builtin_new
	bl sub_0806A9F8
	str r0, [r4]
_0806A990:
	ldr r0, _0806A9A0 @ =gUnknown_02001CDC
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806A99C: .4byte gUnknown_02001CD8
_0806A9A0: .4byte gUnknown_02001CDC

	thumb_func_start sub_0806A9A4
sub_0806A9A4: @ 0x0806A9A4
	ldr r0, _0806A9AC @ =gUnknown_02001CDC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806A9AC: .4byte gUnknown_02001CDC

	thumb_func_start sub_0806A9B0
sub_0806A9B0: @ 0x0806A9B0
	push {r4, r5, lr}
	ldr r1, _0806A9E4 @ =gUnknown_02001CD8
	ldr r0, [r1]
	cmp r0, #0
	ble _0806A9DC
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806A9DC
	ldr r5, _0806A9E8 @ =gUnknown_02001CDC
	ldr r2, [r5]
	cmp r2, #0
	beq _0806A9DA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806A9DA:
	str r4, [r5]
_0806A9DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A9E4: .4byte gUnknown_02001CD8
_0806A9E8: .4byte gUnknown_02001CDC

	thumb_func_start sub_0806A9EC
sub_0806A9EC: @ 0x0806A9EC
	push {lr}
	bl sub_0806A96C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806A9F8
sub_0806A9F8: @ 0x0806A9F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806AB74 @ =0x09F7EF30
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x40
	movs r2, #1
	add r5, sp, #0x28
	add r6, sp, #0x2c
	add r1, sp, #0x30
	mov r8, r1
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806AA28:
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	subs r2, #1
	cmp r2, r3
	bne _0806AA28
	adds r0, r7, #0
	adds r0, #0x48
	movs r2, #1
	adds r4, r7, #0
	adds r4, #0x38
	movs r1, #0x3a
	adds r1, r1, r7
	mov sb, r1
	adds r1, r7, #0
	adds r1, #0x50
	str r1, [sp, #0x34]
	adds r1, #2
	str r1, [sp, #0x38]
	adds r1, #8
	str r1, [sp, #0x3c]
	movs r1, #0x62
	adds r1, r1, r7
	mov sl, r1
	adds r1, r7, #0
	adds r1, #0x6a
	str r1, [sp, #0x40]
	adds r1, #4
	str r1, [sp, #0x44]
	adds r1, #4
	str r1, [sp, #0x48]
	adds r1, #2
	str r1, [sp, #0x4c]
	adds r1, #2
	str r1, [sp, #0x50]
	adds r1, #2
	str r1, [sp, #0x54]
	adds r1, #2
	str r1, [sp, #0x58]
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806AA7C:
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	subs r2, #1
	cmp r2, r3
	bne _0806AA7C
	movs r0, #0
	str r0, [r7, #0x20]
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x28]
	strh r0, [r7, #0x2a]
	strh r0, [r7, #0x2c]
	strh r0, [r7, #0x2e]
	movs r1, #0x3f
	strh r1, [r7, #0x30]
	add r1, sp, #0x28
	strh r0, [r1]
	strh r0, [r5, #2]
	ldr r0, [sp, #0x28]
	str r0, [r7, #0x34]
	movs r5, #0
	mov ip, r4
	movs r3, #0
	adds r4, r6, #0
	mov r6, r8
	str r6, [sp, #0x5c]
	adds r1, r7, #0
	adds r1, #0x40
	movs r0, #0x3f
	mov r8, r0
	mov r2, sb
_0806AABC:
	mov r6, ip
	adds r0, r6, r5
	strb r3, [r0]
	mov r0, r8
	strh r0, [r2]
	add r0, sp, #0x2c
	strh r3, [r0]
	strh r3, [r4, #2]
	ldr r0, [sp, #0x2c]
	str r0, [r1]
	add r0, sp, #0x30
	strh r3, [r0]
	ldr r6, [sp, #0x5c]
	strh r3, [r6, #2]
	ldr r0, [sp, #0x30]
	str r0, [r1, #8]
	adds r1, #4
	adds r2, #2
	adds r5, #1
	cmp r5, #1
	ble _0806AABC
	movs r0, #0
	ldr r1, [sp, #0x34]
	strh r0, [r1]
	movs r5, #0
	mov r2, sl
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	movs r3, #3
_0806AAF6:
	strh r5, [r0]
	strh r5, [r1]
	strh r5, [r2]
	adds r2, #2
	adds r1, #2
	adds r0, #2
	subs r3, #1
	cmp r3, #0
	bge _0806AAF6
	movs r3, #0
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x40]
	movs r2, #1
_0806AB10:
	strh r3, [r0]
	strh r3, [r1]
	adds r1, #2
	adds r0, #2
	subs r2, #1
	cmp r2, #0
	bge _0806AB10
	movs r0, #0
	ldr r6, [sp, #0x48]
	strh r0, [r6]
	ldr r1, [sp, #0x4c]
	strh r0, [r1]
	ldr r6, [sp, #0x50]
	strh r0, [r6]
	ldr r1, [sp, #0x54]
	strh r0, [r1]
	ldr r6, [sp, #0x58]
	strh r0, [r6]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806AB78 @ =0x09F44FF0
	ldr r0, _0806AB7C @ =0x09F7EE20
	str r0, [sp, #0x20]
	ldr r0, _0806AB80 @ =gUnknown_080FF19C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806AB74: .4byte 0x09F7EF30
_0806AB78: .4byte 0x09F44FF0
_0806AB7C: .4byte 0x09F7EE20
_0806AB80: .4byte gUnknown_080FF19C

	thumb_func_start sub_0806AB84
sub_0806AB84: @ 0x0806AB84
	push {lr}
	ldr r2, _0806AB94 @ =0x09F7EF30
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0806AB94: .4byte 0x09F7EF30

	thumb_func_start sub_0806AB98
sub_0806AB98: @ 0x0806AB98
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806AB9C
sub_0806AB9C: @ 0x0806AB9C
	strh r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_0806ABA0
sub_0806ABA0: @ 0x0806ABA0
	strh r1, [r0, #0x26]
	bx lr

	thumb_func_start sub_0806ABA4
sub_0806ABA4: @ 0x0806ABA4
	strh r1, [r0, #0x28]
	bx lr

	thumb_func_start sub_0806ABA8
sub_0806ABA8: @ 0x0806ABA8
	strh r1, [r0, #0x2a]
	bx lr

	thumb_func_start sub_0806ABAC
sub_0806ABAC: @ 0x0806ABAC
	strh r1, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0806ABB0
sub_0806ABB0: @ 0x0806ABB0
	strh r1, [r0, #0x2e]
	bx lr

	thumb_func_start sub_0806ABB4
sub_0806ABB4: @ 0x0806ABB4
	strh r1, [r0, #0x30]
	bx lr

	thumb_func_start sub_0806ABB8
sub_0806ABB8: @ 0x0806ABB8
	ldr r1, [r1]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806ABC0
sub_0806ABC0: @ 0x0806ABC0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x38
	adds r0, r0, r1
	strb r2, [r0]
	bx lr

	thumb_func_start sub_0806ABCC
sub_0806ABCC: @ 0x0806ABCC
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x3a
	adds r0, r0, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806ABD8
sub_0806ABD8: @ 0x0806ABD8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r2]
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_0806ABE4
sub_0806ABE4: @ 0x0806ABE4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r2]
	str r0, [r1, #0x48]
	bx lr

	thumb_func_start sub_0806ABF0
sub_0806ABF0: @ 0x0806ABF0
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806ABF4
sub_0806ABF4: @ 0x0806ABF4
	ldrh r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0806ABF8
sub_0806ABF8: @ 0x0806ABF8
	ldrh r0, [r0, #0x26]
	bx lr

	thumb_func_start sub_0806ABFC
sub_0806ABFC: @ 0x0806ABFC
	ldrh r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0806AC00
sub_0806AC00: @ 0x0806AC00
	ldrh r0, [r0, #0x2a]
	bx lr

	thumb_func_start sub_0806AC04
sub_0806AC04: @ 0x0806AC04
	ldrh r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0806AC08
sub_0806AC08: @ 0x0806AC08
	ldrh r0, [r0, #0x2e]
	bx lr

	thumb_func_start sub_0806AC0C
sub_0806AC0C: @ 0x0806AC0C
	ldrh r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_0806AC10
sub_0806AC10: @ 0x0806AC10
	ldr r1, [r1, #0x34]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806AC18
sub_0806AC18: @ 0x0806AC18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x38
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_0806AC24
sub_0806AC24: @ 0x0806AC24
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x3a
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0806AC30
sub_0806AC30: @ 0x0806AC30
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r2, r2, r1
	ldr r1, [r2, #0x48]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0806AC3C
sub_0806AC3C: @ 0x0806AC3C
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r2, r2, r1
	ldr r1, [r2, #0x40]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0806AC48
sub_0806AC48: @ 0x0806AC48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806AD3C
	adds r0, r4, #0
	bl sub_0806ADFC
	movs r1, #0x80
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x56
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x58
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x22
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #4
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #2
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #4
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #6
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806AD3C
sub_0806AD3C: @ 0x0806AD3C
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #0x20]
	cmp r1, #1
	beq _0806AD60
	cmp r1, #1
	bgt _0806AD50
	cmp r1, #0
	beq _0806AD5A
	b _0806ADF6
_0806AD50:
	cmp r1, #2
	beq _0806AD9E
	cmp r1, #3
	beq _0806ADC8
	b _0806ADF6
_0806AD5A:
	adds r0, r3, #0
	adds r0, #0x76
	b _0806ADF4
_0806AD60:
	movs r0, #0x76
	adds r0, r0, r3
	mov ip, r0
	movs r2, #0x40
	strh r2, [r0]
	ldrh r1, [r3, #0x24]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strh r0, [r1]
	ldrh r1, [r3, #0x26]
	lsls r1, r1, #8
	movs r4, #0xfc
	lsls r4, r4, #6
	adds r2, r4, #0
	ands r1, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r2, [r3, #0x28]
	movs r0, #0xff
	adds r1, r0, #0
	ands r1, r2
	ldrh r2, [r3, #0x2a]
	ands r0, r2
	lsls r0, r0, #8
	orrs r1, r0
	adds r0, r3, #0
	adds r0, #0x78
	b _0806ADF4
_0806AD9E:
	movs r4, #0x76
	adds r4, r4, r3
	mov ip, r4
	movs r2, #0x80
	strh r2, [r4]
	ldrh r1, [r3, #0x24]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrh r1, [r3, #0x26]
	lsls r1, r1, #8
	movs r4, #0xfc
	lsls r4, r4, #6
	adds r2, r4, #0
	ands r1, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r1, [r3, #0x2c]
	b _0806ADF0
_0806ADC8:
	movs r4, #0x76
	adds r4, r4, r3
	mov ip, r4
	movs r2, #0xc0
	strh r2, [r4]
	ldrh r1, [r3, #0x24]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrh r1, [r3, #0x26]
	lsls r1, r1, #8
	movs r4, #0xfc
	lsls r4, r4, #6
	adds r2, r4, #0
	ands r1, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r1, [r3, #0x2e]
_0806ADF0:
	adds r0, r3, #0
	adds r0, #0x7a
_0806ADF4:
	strh r1, [r0]
_0806ADF6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806ADFC
sub_0806ADFC: @ 0x0806ADFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	ldrh r1, [r0, #0x30]
	adds r0, #0x74
	strh r1, [r0]
	movs r0, #0
	mov r8, r0
	mov r6, ip
	adds r6, #0x50
	movs r1, #0x72
	add r1, ip
	mov sl, r1
	mov sb, r0
	mov r4, ip
	adds r4, #0x40
_0806AE24:
	mov r0, ip
	adds r0, #0x38
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806AE3E
	movs r0, #0x80
	lsls r0, r0, #6
	mov r2, r8
	lsls r0, r2
	ldrh r1, [r6]
	orrs r0, r1
	b _0806AE4A
_0806AE3E:
	movs r1, #0x80
	lsls r1, r1, #6
	mov r3, r8
	lsls r1, r3
	ldrh r0, [r6]
	bics r0, r1
_0806AE4A:
	strh r0, [r6]
	mov r5, r8
	lsls r2, r5, #3
	movs r0, #0x3f
	lsls r0, r2
	mov r7, sl
	ldrh r1, [r7]
	bics r1, r0
	strh r1, [r7]
	mov r0, ip
	adds r0, #0x3a
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r2
	orrs r1, r0
	strh r1, [r7]
	mov r0, ip
	movs r2, #0x34
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	movs r0, #0
	cmp r1, #0
	blt _0806AE84
	adds r0, r1, #0
	cmp r0, #0xf0
	ble _0806AE84
	movs r0, #0xf0
_0806AE84:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r7, ip
	movs r0, #0x34
	ldrsh r2, [r7, r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #8
	ldrsh r1, [r4, r3]
	adds r2, r2, r0
	adds r2, r2, r1
	adds r0, r5, #0
	cmp r2, r5
	blt _0806AEA8
	adds r0, r2, #0
	cmp r0, #0xf0
	ble _0806AEA8
	movs r0, #0xf0
_0806AEA8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r7, ip
	movs r0, #0x36
	ldrsh r1, [r7, r0]
	movs r2, #2
	ldrsh r0, [r4, r2]
	adds r1, r1, r0
	movs r0, #0
	cmp r1, #0
	blt _0806AEC8
	adds r0, r1, #0
	cmp r0, #0xa0
	ble _0806AEC8
	movs r0, #0xa0
_0806AEC8:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r7, ip
	movs r0, #0x36
	ldrsh r2, [r7, r0]
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r7, #0xa
	ldrsh r1, [r4, r7]
	adds r2, r2, r0
	adds r2, r2, r1
	adds r0, r3, #0
	cmp r2, r3
	blt _0806AEEC
	adds r0, r2, #0
	cmp r0, #0xa0
	ble _0806AEEC
	movs r0, #0xa0
_0806AEEC:
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	mov r1, ip
	adds r1, #0x6a
	add r1, sb
	lsls r0, r5, #8
	ldr r5, [sp]
	orrs r0, r5
	strh r0, [r1]
	mov r1, ip
	adds r1, #0x6e
	add r1, sb
	lsls r0, r3, #8
	orrs r2, r0
	strh r2, [r1]
	movs r7, #2
	add sb, r7
	adds r4, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #1
	ble _0806AE24
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806AF2C
sub_0806AF2C: @ 0x0806AF2C
	adds r0, #0x50
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806AF34
sub_0806AF34: @ 0x0806AF34
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x52
	adds r0, r0, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AF40
sub_0806AF40: @ 0x0806AF40
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x5a
	adds r0, r0, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AF4C
sub_0806AF4C: @ 0x0806AF4C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x62
	adds r0, r0, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AF58
sub_0806AF58: @ 0x0806AF58
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x50
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806AF68
sub_0806AF68: @ 0x0806AF68
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x52
	adds r0, r0, r1
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AF7C
sub_0806AF7C: @ 0x0806AF7C
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x5a
	adds r0, r0, r1
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AF90
sub_0806AF90: @ 0x0806AF90
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x62
	adds r0, r0, r1
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AFA4
sub_0806AFA4: @ 0x0806AFA4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x50
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806AFB4
sub_0806AFB4: @ 0x0806AFB4
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x52
	adds r0, r0, r1
	ldrh r1, [r0]
	ands r2, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AFC8
sub_0806AFC8: @ 0x0806AFC8
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x5a
	adds r0, r0, r1
	ldrh r1, [r0]
	ands r2, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AFDC
sub_0806AFDC: @ 0x0806AFDC
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x62
	adds r0, r0, r1
	ldrh r1, [r0]
	ands r2, r1
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0806AFF0
sub_0806AFF0: @ 0x0806AFF0
	adds r0, #0x50
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806AFF8
sub_0806AFF8: @ 0x0806AFF8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x52
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0806B004
sub_0806B004: @ 0x0806B004
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x5a
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0806B010
sub_0806B010: @ 0x0806B010
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x62
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0806B01C
sub_0806B01C: @ 0x0806B01C
	push {r4, lr}
	ldr r4, _0806B030 @ =gUnknown_02001CCC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806B034 @ =0x09F7EF98
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806B030: .4byte gUnknown_02001CCC
_0806B034: .4byte 0x09F7EF98
