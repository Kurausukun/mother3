.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806A67C
sub_0806A67C: @ 0x0806A67C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r7, r3, #0
	adds r4, r5, #0
	adds r4, #0xcc
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A6A8
	adds r0, r5, #0
	bl sub_0806A760
	ldrb r1, [r4]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
_0806A6A8:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806A6C0
	adds r0, r5, #0
	bl sub_0806A80C
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
_0806A6C0:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806A6D8
	adds r0, r5, #0
	bl sub_0806A8BC
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_0806A6D8:
	ldrb r1, [r4]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0
	beq _0806A734
	mov r0, r8
	cmp r0, #0
	ble _0806A74E
	movs r1, #0xf8
	lsls r1, r1, #2
	mov sb, r1
	movs r0, #0xf8
	lsls r0, r0, #7
	mov ip, r0
	mov r4, r8
_0806A6F6:
	ldrh r1, [r6]
	movs r0, #0x1f
	ands r0, r1
	mov r2, sb
	ands r2, r1
	mov r3, ip
	ands r3, r1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0xc
	adds r1, r1, r0
	lsrs r2, r2, #4
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	lsrs r3, r3, #9
	adds r0, r5, #0
	adds r0, #0x8c
	adds r0, r0, r3
	ldrh r0, [r0]
	orrs r1, r0
	strh r1, [r7]
	adds r6, #2
	adds r7, #2
	subs r4, #1
	cmp r4, #0
	bne _0806A6F6
	b _0806A74E
_0806A734:
	mov r1, r8
	lsls r0, r1, #1
	cmp r0, #0
	ble _0806A74E
	ldr r2, _0806A75C @ =0x040000D4
	str r6, [r2]
	str r7, [r2, #4]
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806A74E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A75C: .4byte 0x040000D4

	thumb_func_start sub_0806A760
sub_0806A760: @ 0x0806A760
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0806A774
	movs r0, #0
	b _0806A77A
_0806A774:
	cmp r0, r1
	ble _0806A77A
	adds r0, r1, #0
_0806A77A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0806A798 @ =0xFFFFFF00
	adds r7, r0, r3
	mov r0, ip
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	blt _0806A794
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806A79C
_0806A794:
	movs r0, #0
	b _0806A79E
	.align 2, 0
_0806A798: .4byte 0xFFFFFF00
_0806A79C:
	adds r0, r1, #0
_0806A79E:
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r3, #0
	movs r2, #0
	mov r5, ip
	adds r5, #0xc
	mov r4, ip
	adds r4, #0xcc
_0806A7AE:
	adds r0, r2, #0
	cmp r2, #0
	bge _0806A7B6
	adds r0, #0xff
_0806A7B6:
	asrs r0, r0, #8
	adds r0, r7, r0
	cmp r0, #0
	bge _0806A7C0
	adds r0, #7
_0806A7C0:
	asrs r0, r0, #3
	movs r1, #0
	cmp r0, #0
	blt _0806A7D0
	adds r1, r0, #0
	cmp r1, #0x1f
	ble _0806A7D0
	movs r1, #0x1f
_0806A7D0:
	lsls r0, r3, #1
	adds r0, r5, r0
	strh r1, [r0]
	adds r3, #1
	lsls r0, r6, #3
	adds r2, r2, r0
	cmp r3, #0x1f
	ble _0806A7AE
	mov r3, ip
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0806A7F6
	movs r2, #6
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806A7FE
_0806A7F6:
	ldrb r1, [r4]
	movs r0, #8
	orrs r0, r1
	b _0806A804
_0806A7FE:
	ldrb r1, [r4]
	movs r0, #0xf7
	ands r0, r1
_0806A804:
	strb r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806A80C
sub_0806A80C: @ 0x0806A80C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #8
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0806A820
	movs r0, #0
	b _0806A826
_0806A820:
	cmp r0, r1
	ble _0806A826
	adds r0, r1, #0
_0806A826:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0806A844 @ =0xFFFFFF00
	adds r7, r0, r3
	mov r0, ip
	movs r2, #2
	ldrsh r1, [r0, r2]
	cmp r1, #0
	blt _0806A840
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806A848
_0806A840:
	movs r0, #0
	b _0806A84A
	.align 2, 0
_0806A844: .4byte 0xFFFFFF00
_0806A848:
	adds r0, r1, #0
_0806A84A:
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r3, #0
	movs r2, #0
	mov r5, ip
	adds r5, #0x4c
	mov r4, ip
	adds r4, #0xcc
_0806A85A:
	adds r0, r2, #0
	cmp r2, #0
	bge _0806A862
	adds r0, #0xff
_0806A862:
	asrs r0, r0, #8
	adds r0, r7, r0
	cmp r0, #0
	bge _0806A86C
	adds r0, #7
_0806A86C:
	asrs r0, r0, #3
	movs r1, #0
	cmp r0, #0
	blt _0806A87C
	adds r1, r0, #0
	cmp r1, #0x1f
	ble _0806A87C
	movs r1, #0x1f
_0806A87C:
	lsls r0, r3, #1
	adds r0, r5, r0
	lsls r1, r1, #5
	strh r1, [r0]
	adds r3, #1
	lsls r0, r6, #3
	adds r2, r2, r0
	cmp r3, #0x1f
	ble _0806A85A
	mov r3, ip
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0806A8A4
	movs r2, #8
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806A8AC
_0806A8A4:
	ldrb r1, [r4]
	movs r0, #0x10
	orrs r0, r1
	b _0806A8B2
_0806A8AC:
	ldrb r1, [r4]
	movs r0, #0xef
	ands r0, r1
_0806A8B2:
	strb r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806A8BC
sub_0806A8BC: @ 0x0806A8BC
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0806A8D0
	movs r0, #0
	b _0806A8D6
_0806A8D0:
	cmp r0, r1
	ble _0806A8D6
	adds r0, r1, #0
_0806A8D6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0806A8F4 @ =0xFFFFFF00
	adds r7, r0, r3
	mov r0, ip
	movs r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #0
	blt _0806A8F0
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806A8F8
_0806A8F0:
	movs r0, #0
	b _0806A8FA
	.align 2, 0
_0806A8F4: .4byte 0xFFFFFF00
_0806A8F8:
	adds r0, r1, #0
_0806A8FA:
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r3, #0
	movs r2, #0
	mov r5, ip
	adds r5, #0x8c
	mov r4, ip
	adds r4, #0xcc
_0806A90A:
	adds r0, r2, #0
	cmp r2, #0
	bge _0806A912
	adds r0, #0xff
_0806A912:
	asrs r0, r0, #8
	adds r0, r7, r0
	cmp r0, #0
	bge _0806A91C
	adds r0, #7
_0806A91C:
	asrs r0, r0, #3
	movs r1, #0
	cmp r0, #0
	blt _0806A92C
	adds r1, r0, #0
	cmp r1, #0x1f
	ble _0806A92C
	movs r1, #0x1f
_0806A92C:
	lsls r0, r3, #1
	adds r0, r5, r0
	lsls r1, r1, #0xa
	strh r1, [r0]
	adds r3, #1
	lsls r0, r6, #3
	adds r2, r2, r0
	cmp r3, #0x1f
	ble _0806A90A
	mov r3, ip
	movs r0, #4
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0806A954
	movs r2, #0xa
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806A95C
_0806A954:
	ldrb r1, [r4]
	movs r0, #0x20
	orrs r0, r1
	b _0806A962
_0806A95C:
	ldrb r1, [r4]
	movs r0, #0xdf
	ands r0, r1
_0806A962:
	strb r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

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
	bl getClock__3Mgr
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
	bl registerClock__4BaseR4BaseT1UiPFP4Base_v
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

	thumb_func_start sub_0806B038
sub_0806B038: @ 0x0806B038
	ldr r0, _0806B03C @ =gUnknown_02001CE0
	bx lr
	.align 2, 0
_0806B03C: .4byte gUnknown_02001CE0

	thumb_func_start sub_0806B040
sub_0806B040: @ 0x0806B040
	push {r4, lr}
	ldr r1, _0806B068 @ =gUnknown_02001CEC
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806B05E
	ldr r4, _0806B06C @ =gUnknown_02001CF0
	movs r0, #0x88
	lsls r0, r0, #1
	bl __builtin_new
	bl sub_0806B0C4
	str r0, [r4]
_0806B05E:
	ldr r0, _0806B06C @ =gUnknown_02001CF0
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806B068: .4byte gUnknown_02001CEC
_0806B06C: .4byte gUnknown_02001CF0

	thumb_func_start sub_0806B070
sub_0806B070: @ 0x0806B070
	ldr r0, _0806B078 @ =gUnknown_02001CF0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806B078: .4byte gUnknown_02001CF0

	thumb_func_start sub_0806B07C
sub_0806B07C: @ 0x0806B07C
	push {r4, r5, lr}
	ldr r1, _0806B0B0 @ =gUnknown_02001CEC
	ldr r0, [r1]
	cmp r0, #0
	ble _0806B0A8
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806B0A8
	ldr r5, _0806B0B4 @ =gUnknown_02001CF0
	ldr r2, [r5]
	cmp r2, #0
	beq _0806B0A6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806B0A6:
	str r4, [r5]
_0806B0A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B0B0: .4byte gUnknown_02001CEC
_0806B0B4: .4byte gUnknown_02001CF0

	thumb_func_start sub_0806B0B8
sub_0806B0B8: @ 0x0806B0B8
	push {lr}
	bl sub_0806B038
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806B0C4
sub_0806B0C4: @ 0x0806B0C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806B244 @ =0x09F7EFB0
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x28]
	strh r0, [r7, #0x2a]
	adds r5, r7, #0
	adds r5, #0x2c
	movs r2, #3
	add r3, sp, #0x74
	add r0, sp, #8
	mov r8, r0
	add r6, sp, #0x1c
	mov r1, sp
	adds r1, #0x2c
	str r1, [sp, #0x90]
	add r0, sp, #0x30
	mov sl, r0
	adds r1, #0x4c
	str r1, [sp, #0x88]
	mov r0, sp
	adds r0, #0x7c
	str r0, [sp, #0x8c]
	add r1, sp, #0x3c
	mov sb, r1
	movs r1, #0
	movs r4, #1
	rsbs r4, r4, #0
	adds r0, r7, #0
	adds r0, #0x34
_0806B110:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	strh r1, [r0, #0x2a]
	adds r0, #0x38
	subs r2, #1
	cmp r2, r4
	bne _0806B110
	movs r0, #0
	str r0, [r5]
	add r1, sp, #0x74
	strb r0, [r1]
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	ldr r1, [sp, #0x74]
	str r1, [r7, #0x20]
	str r0, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x2c
	str r0, [sp, #0x84]
	movs r4, #0
	add r5, sp, #4
	movs r1, #3
	str r1, [sp, #0x80]
_0806B14C:
	str r4, [sp, #8]
	mov r0, r8
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [sp, #0x1c]
	str r4, [r6, #4]
	str r4, [r6, #8]
	ldr r1, [sp, #0x90]
	strh r4, [r1]
	strh r4, [r1, #2]
	mov r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r5]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	strh r4, [r5, #0x14]
	strh r4, [r5, #0x16]
	str r4, [sp, #0x28]
	add r0, sp, #0x78
	strh r4, [r0]
	ldr r1, [sp, #0x88]
	strh r4, [r1, #2]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x2c]
	add r0, sp, #0x7c
	strh r4, [r0]
	ldr r0, [sp, #0x8c]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x30]
	movs r0, #7
	str r0, [sp, #0x34]
	movs r0, #2
	strh r0, [r5, #0x34]
	mov r0, sb
	add r1, sp, #4
	bl sub_080C0E54
	ldr r1, [r7, #0x2c]
	adds r2, r1, #1
	cmp r2, #4
	bgt _0806B1B6
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	ldr r1, [sp, #0x84]
	adds r0, r1, r0
	str r2, [r7, #0x2c]
	mov r1, sb
	bl sub_080C0D50
_0806B1B6:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _0806B1C0
	bl sub_0805D3F4
_0806B1C0:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0806B1CA
	bl sub_0805D3F4
_0806B1CA:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806B1D4
	bl sub_0805D3F4
_0806B1D4:
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0806B1E0
	bl sub_0805D3F4
_0806B1E0:
	ldr r0, [sp, #0x80]
	subs r0, #1
	str r0, [sp, #0x80]
	cmp r0, #0
	bge _0806B14C
	bl sub_0806A974
	adds r4, r0, #0
	bl sub_0806AFF0
	lsls r0, r0, #0x10
	ldr r1, _0806B248 @ =0xFFF80000
	ands r1, r0
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0806AF2C
	bl getClock__3Mgr
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806B24C @ =0x09F44FF0
	ldr r0, _0806B250 @ =0x09F7EE20
	str r0, [sp, #0x20]
	ldr r0, _0806B254 @ =gUnknown_080FF2CC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseR4BaseT1UiPFP4Base_v
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B244: .4byte 0x09F7EFB0
_0806B248: .4byte 0xFFF80000
_0806B24C: .4byte 0x09F44FF0
_0806B250: .4byte 0x09F7EE20
_0806B254: .4byte gUnknown_080FF2CC

	thumb_func_start sub_0806B258
sub_0806B258: @ 0x0806B258
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _0806B2C4 @ =0x09F7EFB0
	str r0, [r6, #0x1c]
	bl sub_0806A9A4
	adds r4, r0, #0
	bl sub_0806AFF0
	ldr r1, _0806B2C8 @ =0x0000FFF8
	ands r1, r0
	adds r0, r4, #0
	bl sub_0806AF2C
	bl sub_0806A9B0
	adds r7, r6, #0
	adds r7, #0x2c
	adds r0, r6, #0
	adds r0, #0x30
	cmp r0, #0
	beq _0806B2B2
	movs r1, #0x88
	lsls r1, r1, #1
	adds r5, r6, r1
	cmp r0, r5
	beq _0806B2B2
_0806B294:
	subs r5, #0x38
	adds r4, r5, #4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0806B2A2
	bl sub_0805D3F4
_0806B2A2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806B2AC
	bl sub_0805D3F4
_0806B2AC:
	adds r0, r7, #4
	cmp r0, r5
	bne _0806B294
_0806B2B2:
	adds r0, r6, #0
	mov r1, r8
	bl _._4Base
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B2C4: .4byte 0x09F7EFB0
_0806B2C8: .4byte 0x0000FFF8

	thumb_func_start sub_0806B2CC
sub_0806B2CC: @ 0x0806B2CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r7, r6, #0
	adds r7, #0x2c
	mov r0, sb
	lsls r0, r0, #3
	mov r8, r0
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r7, r0
	ldr r0, [r2]
	str r0, [r1, #0x2c]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0806B300
	adds r0, #7
_0806B300:
	asrs r3, r0, #3
	movs r4, #2
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bge _0806B30C
	adds r0, #7
_0806B30C:
	asrs r0, r0, #3
	adds r5, r3, #0
	muls r5, r0, r5
	adds r4, r1, #4
	ldr r0, [r1, #4]
	mov sl, r7
	mov r1, r8
	str r1, [sp, #8]
	cmp r0, r5
	bge _0806B35E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806B32A
	adds r0, r1, #0
_0806B32A:
	mov r8, r0
	lsls r0, r0, #1
	bl sub_0805D3C8
	adds r7, r0, #0
	ldr r3, [r4, #8]
	adds r2, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806B34E
	adds r1, r0, #0
_0806B340:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0806B340
_0806B34E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806B358
	bl sub_0805D3F4
_0806B358:
	mov r2, r8
	str r2, [r4]
	str r7, [r4, #8]
_0806B35E:
	str r5, [r4, #4]
	movs r3, #0x20
	movs r2, #0
	ldr r0, [r6, #0x2c]
	cmp r2, r0
	bge _0806B388
	ldr r4, _0806B3D8 @ =0x000003FF
	mov r1, sl
	adds r1, #4
_0806B370:
	ldr r0, [r1, #8]
	cmp r0, #0
	bge _0806B378
	adds r0, r0, r4
_0806B378:
	asrs r0, r0, #0xa
	subs r3, r3, r0
	strh r3, [r1]
	adds r1, #0x38
	adds r2, #1
	ldr r0, [r6, #0x2c]
	cmp r2, r0
	blt _0806B370
_0806B388:
	adds r0, r6, #0
	mov r1, sb
	movs r2, #0
	bl sub_0806B680
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, sb
	bl sub_0806B66C
	lsls r3, r0, #1
	cmp r3, #0
	ble _0806B3BA
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0806B3DC @ =0x040000D4
	str r1, [r2]
	str r4, [r2, #4]
	asrs r0, r3, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806B3BA:
	ldr r3, [sp, #8]
	mov r4, sb
	subs r0, r3, r4
	lsls r0, r0, #3
	adds r0, #4
	add r0, sl
	ldrh r0, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B3D8: .4byte 0x000003FF
_0806B3DC: .4byte 0x040000D4

	thumb_func_start sub_0806B3E0
sub_0806B3E0: @ 0x0806B3E0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0806B3F4
sub_0806B3F4: @ 0x0806B3F4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r2, [r0, #0x34]
	movs r1, #2
	orrs r1, r2
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806B410
sub_0806B410: @ 0x0806B410
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _0806B422
	adds r1, #7
_0806B422:
	asrs r5, r1, #3
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B42E
	adds r0, #7
_0806B42E:
	asrs r2, r0, #3
	adds r1, r4, #0
	adds r1, #0x2c
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	movs r3, #0x2c
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0806B448
	adds r0, #7
_0806B448:
	asrs r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806B454
sub_0806B454: @ 0x0806B454
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B472
	adds r0, #7
_0806B472:
	asrs r0, r0, #3
	mov sb, r0
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B480
	adds r0, #7
_0806B480:
	asrs r0, r0, #3
	mov sl, r0
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08091A08
	cmp r0, #0
	bne _0806B498
	adds r0, r4, #0
	b _0806B49C
_0806B498:
	adds r0, r4, #0
	adds r0, #8
_0806B49C:
	movs r1, #8
	bl sub_08091970
	lsls r0, r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B4AE
	adds r0, #7
_0806B4AE:
	asrs r0, r0, #3
	str r0, [sp, #8]
	movs r1, #2
	ldrsh r4, [r5, r1]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08091A08
	cmp r0, #0
	bne _0806B4C6
	adds r0, r4, #0
	b _0806B4CA
_0806B4C6:
	adds r0, r4, #0
	adds r0, #8
_0806B4CA:
	movs r1, #8
	bl sub_08091970
	lsls r0, r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B4DC
	adds r0, #7
_0806B4DC:
	asrs r7, r0, #3
	mov r1, r8
	adds r1, #0x2c
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r1, r0
	movs r6, #0x2c
	ldrsh r0, [r2, r6]
	cmp r0, #0
	bge _0806B4F6
	adds r0, #7
_0806B4F6:
	asrs r5, r0, #3
	mov r0, sl
	muls r0, r5, r0
	add sb, r0
	mov r0, sb
	lsls r1, r0, #1
	ldr r0, [r2, #0xc]
	adds r1, r0, r1
	mov r2, sl
	adds r0, r2, r7
	cmp r2, r0
	bge _0806B54C
	ldr r0, [sp, #0x30]
	ldrh r0, [r0]
	mov r8, r0
	ldr r3, _0806B560 @ =0x040000D4
	ldr r6, [sp, #8]
	lsls r6, r6, #1
	mov ip, r6
	mov r0, sp
	str r0, [sp, #0xc]
	movs r4, #0x81
	lsls r4, r4, #0x18
	ldr r6, [sp, #8]
	orrs r4, r6
	lsls r5, r5, #1
_0806B52A:
	mov r0, ip
	cmp r0, #0
	ble _0806B540
	mov r0, r8
	ldr r6, [sp, #0xc]
	strh r0, [r6]
	mov r6, sp
	str r6, [r3]
	str r1, [r3, #4]
	str r4, [r3, #8]
	ldr r0, [r3, #8]
_0806B540:
	adds r1, r1, r5
	adds r2, #1
	mov r6, sl
	adds r0, r6, r7
	cmp r2, r0
	blt _0806B52A
_0806B54C:
	mov r0, sb
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B560: .4byte 0x040000D4

	thumb_func_start sub_0806B564
sub_0806B564: @ 0x0806B564
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r3, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B586
	adds r0, #7
_0806B586:
	asrs r0, r0, #3
	str r0, [sp]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B594
	adds r0, #7
_0806B594:
	asrs r7, r0, #3
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08091A08
	cmp r0, #0
	bne _0806B5AA
	adds r0, r4, #0
	b _0806B5AE
_0806B5AA:
	adds r0, r4, #0
	adds r0, #8
_0806B5AE:
	movs r1, #8
	bl sub_08091970
	lsls r0, r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B5C0
	adds r0, #7
_0806B5C0:
	asrs r0, r0, #3
	mov sl, r0
	movs r1, #2
	ldrsh r4, [r5, r1]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08091A08
	cmp r0, #0
	bne _0806B5D8
	adds r0, r4, #0
	b _0806B5DC
_0806B5D8:
	adds r0, r4, #0
	adds r0, #8
_0806B5DC:
	movs r1, #8
	bl sub_08091970
	lsls r0, r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B5EE
	adds r0, #7
_0806B5EE:
	asrs r3, r0, #3
	mov r1, sb
	adds r1, #0x2c
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r1, r0
	movs r1, #0x2c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B608
	adds r0, #7
_0806B608:
	asrs r6, r0, #3
	adds r0, r7, #0
	muls r0, r6, r0
	ldr r1, [sp]
	adds r0, r0, r1
	mov sb, r0
	lsls r1, r0, #1
	ldr r0, [r2, #0xc]
	adds r1, r0, r1
	adds r2, r7, #0
	adds r3, r3, r2
	mov ip, r3
	cmp r2, ip
	bge _0806B654
	mov r0, sl
	lsls r5, r0, #1
	ldr r3, _0806B668 @ =0x040000D4
	asrs r4, r5, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r4, r0
	ldr r0, [sp, #0x28]
	lsls r7, r0, #1
	lsls r6, r6, #1
	mov r0, ip
	subs r2, r0, r2
_0806B63C:
	cmp r5, #0
	ble _0806B64A
	mov r0, r8
	str r0, [r3]
	str r1, [r3, #4]
	str r4, [r3, #8]
	ldr r0, [r3, #8]
_0806B64A:
	add r8, r7
	adds r1, r1, r6
	subs r2, #1
	cmp r2, #0
	bne _0806B63C
_0806B654:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B668: .4byte 0x040000D4

	thumb_func_start sub_0806B66C
sub_0806B66C: @ 0x0806B66C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806B680
sub_0806B680: @ 0x0806B680
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, #4
	adds r0, r0, r3
	lsls r2, r2, #1
	ldr r0, [r0, #0x38]
	adds r0, r0, r2
	bx lr
	.align 2, 0

	thumb_func_start sub_0806B698
sub_0806B698: @ 0x0806B698
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	strh r2, [r1, #0x14]
	movs r2, #0
	movs r3, #0
	ldr r0, [r4, #0x2c]
	cmp r3, r0
	bge _0806B6E2
	ldr r6, _0806B728 @ =0x000001FF
	adds r1, r4, #0
	adds r1, #0x40
_0806B6C2:
	adds r0, r2, #0
	cmp r2, #0
	bge _0806B6CA
	adds r0, r2, r6
_0806B6CA:
	asrs r0, r0, #9
	strh r0, [r1]
	lsls r0, r0, #9
	subs r0, r2, r0
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	adds r2, r2, r0
	adds r1, #0x38
	adds r3, #1
	ldr r0, [r4, #0x2c]
	cmp r3, r0
	blt _0806B6C2
_0806B6E2:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_0806B828
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806B814
	lsls r3, r0, #5
	cmp r3, #0
	ble _0806B714
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0806B72C @ =0x040000D4
	str r1, [r2]
	str r6, [r2, #4]
	asrs r0, r3, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806B714:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r4, r0
	ldrh r0, [r0, #0x3c]
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806B728: .4byte 0x000001FF
_0806B72C: .4byte 0x040000D4

	thumb_func_start sub_0806B730
sub_0806B730: @ 0x0806B730
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0, #0x3c]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806B744
sub_0806B744: @ 0x0806B744
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0, #0x3e]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806B758
sub_0806B758: @ 0x0806B758
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r6, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r1, r0, r2
	adds r0, r4, r3
	ldrh r3, [r1, #0x14]
	cmp r3, r0
	ble _0806B778
	adds r3, r0, #0
_0806B778:
	subs r3, r3, r4
	ldrh r0, [r1, #0x10]
	lsls r0, r0, #0xe
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r2, r0, r5
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #5
	adds r2, r2, r0
	lsls r0, r4, #5
	adds r2, r2, r0
	cmp r3, #0
	ble _0806B7A6
	ldr r1, _0806B7B0 @ =0x040000D4
	ldr r5, _0806B7B4 @ =0x84000008
_0806B796:
	str r6, [r1]
	str r2, [r1, #4]
	str r5, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x20
	subs r3, #1
	cmp r3, #0
	bne _0806B796
_0806B7A6:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806B7B0: .4byte 0x040000D4
_0806B7B4: .4byte 0x84000008

	thumb_func_start sub_0806B7B8
sub_0806B7B8: @ 0x0806B7B8
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r2, r0, r2
	adds r0, r4, r3
	ldrh r3, [r2, #0x14]
	cmp r3, r0
	ble _0806B7D6
	adds r3, r0, #0
_0806B7D6:
	subs r3, r3, r4
	ldrh r0, [r2, #0x10]
	lsls r0, r0, #0xe
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r0, r5
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #5
	adds r1, r1, r0
	lsls r0, r4, #5
	adds r1, r1, r0
	lsls r3, r3, #5
	cmp r3, #0
	ble _0806B806
	ldr r2, _0806B810 @ =0x040000D4
	ldr r0, [sp, #0xc]
	str r0, [r2]
	str r1, [r2, #4]
	asrs r0, r3, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806B806:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806B810: .4byte 0x040000D4

	thumb_func_start sub_0806B814
sub_0806B814: @ 0x0806B814
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0, #0x14]
	bx lr

	thumb_func_start sub_0806B828
sub_0806B828: @ 0x0806B828
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, #0x2c
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r3, r0
	ldrh r0, [r3, #0x10]
	lsls r0, r0, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldrh r1, [r3, #0x12]
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r2, r2, #5
	adds r0, r0, r2
	bx lr

	thumb_func_start sub_0806B850
sub_0806B850: @ 0x0806B850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	str r2, [sp, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r1, r5, #0
	adds r1, #0x2c
	mov r2, r8
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	adds r4, r1, #0
	adds r4, #0x18
	str r4, [sp, #0xc]
	ldr r0, [r1, #0x18]
	ldr r6, [sp, #8]
	cmp r0, r6
	bge _0806B8DC
	lsls r1, r6, #1
	movs r0, #4
	cmp r0, r1
	bge _0806B88E
	adds r0, r1, #0
_0806B88E:
	mov sl, r0
	lsls r0, r0, #5
	bl sub_0805D3C8
	mov sb, r0
	ldr r7, [sp, #0xc]
	ldr r7, [r7, #8]
	mov ip, r7
	mov r3, sb
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0806B8C6
	adds r2, r0, #0
_0806B8AA:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r4, r6}
	stm r1!, {r4, r6}
	movs r7, #0x20
	add ip, r7
	adds r3, #0x20
	subs r2, #1
	cmp r2, #0
	bne _0806B8AA
_0806B8C6:
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0806B8D2
	bl sub_0805D3F4
_0806B8D2:
	mov r2, sl
	ldr r4, [sp, #0xc]
	str r2, [r4]
	mov r6, sb
	str r6, [r4, #8]
_0806B8DC:
	ldr r7, [sp, #8]
	ldr r0, [sp, #0xc]
	str r7, [r0, #4]
	movs r3, #0
	movs r2, #0
	ldr r0, [r5, #0x2c]
	adds r7, r5, #0
	adds r7, #0x2c
	mov r1, r8
	lsls r6, r1, #3
	cmp r2, r0
	bge _0806B908
	adds r1, r5, #0
	adds r1, #0x30
_0806B8F8:
	strh r3, [r1, #0x16]
	ldr r0, [r1, #0x1c]
	adds r3, r3, r0
	adds r1, #0x38
	adds r2, #1
	ldr r0, [r5, #0x2c]
	cmp r2, r0
	blt _0806B8F8
_0806B908:
	adds r0, r5, #0
	mov r1, r8
	movs r2, #0
	bl sub_0806BA20
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl sub_0806BA0C
	lsls r3, r0, #5
	cmp r3, #0
	ble _0806B93A
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0806B958 @ =0x040000D4
	str r1, [r2]
	str r4, [r2, #4]
	asrs r0, r3, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806B93A:
	mov r2, r8
	subs r0, r6, r2
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r7, r0
	ldrh r0, [r0, #0x16]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B958: .4byte 0x040000D4

	thumb_func_start sub_0806B95C
sub_0806B95C: @ 0x0806B95C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0, #0x16]
	bx lr

	thumb_func_start sub_0806B970
sub_0806B970: @ 0x0806B970
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r6, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	adds r0, #0x44
	adds r1, r4, r3
	ldr r3, [r0, #4]
	cmp r3, r1
	ble _0806B990
	adds r3, r1, #0
_0806B990:
	subs r3, r3, r4
	cmp r3, #0
	ble _0806B9B0
	ldr r1, [r0, #8]
	lsls r0, r4, #5
	adds r2, r0, r1
	ldr r1, _0806B9B8 @ =0x040000D4
	ldr r5, _0806B9BC @ =0x84000008
_0806B9A0:
	str r6, [r1]
	str r2, [r1, #4]
	str r5, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x20
	subs r3, #1
	cmp r3, #0
	bne _0806B9A0
_0806B9B0:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806B9B8: .4byte 0x040000D4
_0806B9BC: .4byte 0x84000008

	thumb_func_start sub_0806B9C0
sub_0806B9C0: @ 0x0806B9C0
	push {r4, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	adds r0, #0x44
	adds r1, r4, r3
	ldr r3, [r0, #4]
	cmp r3, r1
	ble _0806B9DE
	adds r3, r1, #0
_0806B9DE:
	subs r3, r3, r4
	lsls r1, r4, #5
	ldr r0, [r0, #8]
	adds r1, r0, r1
	lsls r3, r3, #5
	cmp r3, #0
	ble _0806BA00
	ldr r2, _0806BA08 @ =0x040000D4
	ldr r0, [sp, #8]
	str r0, [r2]
	str r1, [r2, #4]
	asrs r0, r3, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806BA00:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806BA08: .4byte 0x040000D4

	thumb_func_start sub_0806BA0C
sub_0806BA0C: @ 0x0806BA0C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0, #0x48]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BA20
sub_0806BA20: @ 0x0806BA20
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, #4
	adds r0, r0, r3
	lsls r2, r2, #5
	ldr r0, [r0, #0x4c]
	adds r0, r0, r2
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BA38
sub_0806BA38: @ 0x0806BA38
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, #4
	adds r0, r0, r3
	str r2, [r0, #0x50]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BA4C
sub_0806BA4C: @ 0x0806BA4C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0, #0x50]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BA60
sub_0806BA60: @ 0x0806BA60
	ldr r1, [r1]
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BA68
sub_0806BA68: @ 0x0806BA68
	str r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_0806BA6C
sub_0806BA6C: @ 0x0806BA6C
	ldr r1, [r1]
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BA74
sub_0806BA74: @ 0x0806BA74
	push {lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	bne _0806BA98
	adds r1, r0, #0
	adds r1, #0x2c
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	ldrh r2, [r1, #0x34]
	movs r0, #1
	orrs r0, r2
	b _0806BAAC
_0806BA98:
	adds r1, r0, #0
	adds r1, #0x2c
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	ldrh r2, [r1, #0x34]
	ldr r0, _0806BAB4 @ =0x0000FFFE
	ands r0, r2
_0806BAAC:
	strh r0, [r1, #0x34]
	pop {r0}
	bx r0
	.align 2, 0
_0806BAB4: .4byte 0x0000FFFE

	thumb_func_start sub_0806BAB8
sub_0806BAB8: @ 0x0806BAB8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, #4
	adds r0, r0, r3
	ldr r1, [r2]
	str r1, [r0, #0x54]
	bx lr

	thumb_func_start sub_0806BACC
sub_0806BACC: @ 0x0806BACC
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, #4
	adds r0, r0, r3
	str r2, [r0, #0x5c]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BAE0
sub_0806BAE0: @ 0x0806BAE0
	ldr r1, [r1, #0x20]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BAE8
sub_0806BAE8: @ 0x0806BAE8
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0806BAEC
sub_0806BAEC: @ 0x0806BAEC
	ldr r1, [r1, #0x28]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BAF4
sub_0806BAF4: @ 0x0806BAF4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r1, [r0, #0x34]
	movs r0, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_0806BB0C
sub_0806BB0C: @ 0x0806BB0C
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r2, #3
	subs r3, r3, r2
	lsls r3, r3, #3
	adds r3, #4
	adds r1, r1, r3
	ldr r1, [r1, #0x54]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0806BB20
sub_0806BB20: @ 0x0806BB20
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0, #0x5c]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BB34
sub_0806BB34: @ 0x0806BB34
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r2, #3
	subs r3, r3, r2
	lsls r3, r3, #3
	adds r3, #4
	adds r1, r1, r3
	ldr r1, [r1, #0x58]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0806BB48
sub_0806BB48: @ 0x0806BB48
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	bl sub_0806BC3C
	movs r7, #0
	ldr r0, [r6, #0x2c]
	cmp r7, r0
	bge _0806BBE4
	ldr r5, _0806BBB4 @ =0x040000D4
	adds r4, r6, #0
	adds r4, #0x30
_0806BB60:
	ldrh r1, [r4, #0x34]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806BB8E
	ldrh r0, [r4]
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r2, r0, r1
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	lsls r0, r0, #1
	cmp r0, #0
	ble _0806BB8E
	str r1, [r5]
	str r2, [r5, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0806BB8E:
	ldrh r0, [r4, #0x34]
	ldr r2, _0806BBB8 @ =0x0000FFFD
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x34]
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #5
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r3, r0, r1
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0806BBBC
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #4
	ldr r2, [r4, #0x20]
	bl sub_0806A67C
	b _0806BBDA
	.align 2, 0
_0806BBB4: .4byte 0x040000D4
_0806BBB8: .4byte 0x0000FFFD
_0806BBBC:
	adds r0, r4, #0
	adds r0, #0x18
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #5
	cmp r0, #0
	ble _0806BBDA
	str r1, [r5]
	str r3, [r5, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0806BBDA:
	adds r4, #0x38
	adds r7, #1
	ldr r0, [r6, #0x2c]
	cmp r7, r0
	blt _0806BB60
_0806BBE4:
	ldr r4, [r6, #0x24]
	cmp r4, #0
	beq _0806BC16
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	lsrs r1, r1, #3
	ldrb r0, [r2, #1]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	orrs r1, r0
	mov r0, sp
	strh r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #0x13
	adds r0, r4, #0
	movs r1, #1
	mov r2, sp
	bl sub_0806A67C
	b _0806BC34
_0806BC16:
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	lsrs r1, r1, #3
	ldrb r0, [r2, #1]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	orrs r1, r0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r1, [r0]
_0806BC34:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806BC3C
sub_0806BC3C: @ 0x0806BC3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	bl sub_0806A9A4
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r1, [sp]
	ldr r0, [r1, #0x2c]
	cmp sl, r0
	blt _0806BC5E
	b _0806BDAE
_0806BC5E:
	adds r1, #0x30
	mov sb, r1
_0806BC62:
	mov r2, sb
	ldrh r1, [r2, #0x34]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806BC70
	b _0806BD80
_0806BC70:
	adds r0, r7, #0
	bl sub_0806AFF0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	mov r2, sl
	lsls r1, r2
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_0806AF2C
	mov r0, sb
	movs r2, #0x2c
	ldrsh r1, [r0, r2]
	cmp r1, r4
	beq _0806BCA2
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0806BCB6
	movs r3, #0
	b _0806BCC4
_0806BCA2:
	mov r1, sb
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	eors r0, r4
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r3, r1, #0x1f
	movs r0, #2
	ands r3, r0
	b _0806BCC4
_0806BCB6:
	mov r1, sb
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	movs r3, #3
	cmp r0, r4
	bne _0806BCC4
	movs r3, #1
_0806BCC4:
	mov r0, sb
	ldr r4, [r0, #0x30]
	asrs r4, r4, #1
	ldrh r5, [r0, #0x10]
	ldrh r1, [r0]
	mov r8, r1
	mov r2, sl
	lsls r6, r2, #0x10
	lsrs r6, r6, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	str r3, [sp, #4]
	bl sub_0806AFF8
	ldr r1, _0806BD7C @ =0x000020F0
	adds r2, r1, #0
	ands r2, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF34
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AFF8
	ldr r3, [sp, #4]
	lsls r2, r3, #0xe
	orrs r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF34
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AFF8
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0806AF34
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AFF8
	lsls r5, r5, #2
	orrs r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0806AF34
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AFF8
	mov r2, r8
	lsls r2, r2, #8
	orrs r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF34
	mov r0, sb
	ldrh r2, [r0, #0x28]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF40
	mov r1, sb
	ldrh r2, [r1, #0x2a]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF4C
	b _0806BD9C
	.align 2, 0
_0806BD7C: .4byte 0x000020F0
_0806BD80:
	adds r0, r7, #0
	bl sub_0806AFF0
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sl
	lsls r0, r2
	bics r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_0806AF2C
_0806BD9C:
	movs r0, #0x38
	add sb, r0
	movs r1, #1
	add sl, r1
	ldr r2, [sp]
	ldr r0, [r2, #0x2c]
	cmp sl, r0
	bge _0806BDAE
	b _0806BC62
_0806BDAE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806BDC0
sub_0806BDC0: @ 0x0806BDC0
	push {r4, lr}
	ldr r4, _0806BDD4 @ =gUnknown_02001CE0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806BDD8 @ =0x09F7F018
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BDD4: .4byte gUnknown_02001CE0
_0806BDD8: .4byte 0x09F7F018

	thumb_func_start sub_0806BDDC
sub_0806BDDC: @ 0x0806BDDC
	ldr r0, _0806BDE0 @ =gUnknown_02001CF4
	bx lr
	.align 2, 0
_0806BDE0: .4byte gUnknown_02001CF4

	thumb_func_start sub_0806BDE4
sub_0806BDE4: @ 0x0806BDE4
	push {r4, lr}
	ldr r1, _0806BE0C @ =gUnknown_02001D00
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806BE02
	ldr r4, _0806BE10 @ =gUnknown_02001D04
	movs r0, #0xb5
	lsls r0, r0, #4
	bl __builtin_new
	bl sub_0806BE68
	str r0, [r4]
_0806BE02:
	ldr r0, _0806BE10 @ =gUnknown_02001D04
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806BE0C: .4byte gUnknown_02001D00
_0806BE10: .4byte gUnknown_02001D04

	thumb_func_start sub_0806BE14
sub_0806BE14: @ 0x0806BE14
	ldr r0, _0806BE1C @ =gUnknown_02001D04
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806BE1C: .4byte gUnknown_02001D04

	thumb_func_start sub_0806BE20
sub_0806BE20: @ 0x0806BE20
	push {r4, r5, lr}
	ldr r1, _0806BE54 @ =gUnknown_02001D00
	ldr r0, [r1]
	cmp r0, #0
	ble _0806BE4C
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806BE4C
	ldr r5, _0806BE58 @ =gUnknown_02001D04
	ldr r2, [r5]
	cmp r2, #0
	beq _0806BE4A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806BE4A:
	str r4, [r5]
_0806BE4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BE54: .4byte gUnknown_02001D00
_0806BE58: .4byte gUnknown_02001D04

	thumb_func_start sub_0806BE5C
sub_0806BE5C: @ 0x0806BE5C
	push {lr}
	bl sub_0806BDDC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806BE68
sub_0806BE68: @ 0x0806BE68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806BF40 @ =0x09F7F030
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #3
	movs r4, #0
	movs r3, #0x81
	lsls r3, r3, #2
	movs r2, #1
	rsbs r2, r2, #0
_0806BE86:
	str r4, [r0]
	adds r0, r0, r3
	subs r1, #1
	cmp r1, r2
	bne _0806BE86
	movs r1, #0x83
	lsls r1, r1, #4
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _0806BF44 @ =0x00000834
	adds r0, r7, r2
	str r1, [r0]
	ldr r2, _0806BF48 @ =0x00000938
	adds r0, r7, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0x10
	adds r0, r7, r2
	str r1, [r0]
	subs r2, #4
	adds r0, r7, r2
	strh r1, [r0]
	ldr r2, _0806BF4C @ =0x00000B4C
	adds r0, r7, r2
	str r1, [r0]
	bl sub_0806A974
	adds r4, r0, #0
	ldr r1, _0806BF50 @ =0x0000EF9F
	bl sub_0806AFA4
	movs r1, #0x82
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_0806AF58
	bl getClock__3Mgr
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806BF54 @ =0x09F44FF0
	ldr r0, _0806BF58 @ =0x09F7EE20
	str r0, [sp, #0x20]
	ldr r0, _0806BF5C @ =gUnknown_080FF3FC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseR4BaseT1UiPFP4Base_v
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getClock__3Mgr
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806BF60 @ =0x09F7EC20
	str r0, [sp, #0x20]
	ldr r0, _0806BF64 @ =gUnknown_080FF404
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseR4BaseT1UiPFP4Base_v
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0806C428
	bl sub_0806C77C
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806BF40: .4byte 0x09F7F030
_0806BF44: .4byte 0x00000834
_0806BF48: .4byte 0x00000938
_0806BF4C: .4byte 0x00000B4C
_0806BF50: .4byte 0x0000EF9F
_0806BF54: .4byte 0x09F44FF0
_0806BF58: .4byte 0x09F7EE20
_0806BF5C: .4byte gUnknown_080FF3FC
_0806BF60: .4byte 0x09F7EC20
_0806BF64: .4byte gUnknown_080FF404

	thumb_func_start sub_0806BF68
sub_0806BF68: @ 0x0806BF68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806BFA4 @ =0x09F7F030
	str r0, [r4, #0x1c]
	bl sub_0806C7B8
	bl sub_0806C464
	bl sub_0806A9A4
	ldr r1, _0806BFA8 @ =0x0000EF9F
	bl sub_0806AFA4
	bl sub_0806A9B0
	ldr r1, _0806BFAC @ =0x00000938
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0806BF96
	bl sub_0805D3F4
_0806BF96:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BFA4: .4byte 0x09F7F030
_0806BFA8: .4byte 0x0000EF9F
_0806BFAC: .4byte 0x00000938

	thumb_func_start sub_0806BFB0
sub_0806BFB0: @ 0x0806BFB0
	push {r4, lr}
	adds r4, r0, #0
	asrs r1, r1, #1
	lsls r3, r1, #7
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r0, r3, r4
	ldr r0, [r0, #0x20]
	adds r3, r3, r4
	adds r2, r0, r2
	str r2, [r3, #0x20]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806BFCC
sub_0806BFCC: @ 0x0806BFCC
	push {r4, r5, r6, lr}
	adds r6, r3, #0
	asrs r1, r1, #1
	lsls r3, r1, #7
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r1, r3, r0
	ldr r5, [r1, #0x20]
	adds r4, r1, #0
	adds r1, r5, r2
	str r1, [r4, #0x20]
	adds r3, r4, #0
	adds r3, #0x20
	lsls r0, r5, #3
	adds r0, #4
	adds r3, r3, r0
	lsls r0, r2, #3
	cmp r0, #0
	ble _0806C004
	ldr r2, _0806C00C @ =0x040000D4
	str r6, [r2]
	str r3, [r2, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C004:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806C00C: .4byte 0x040000D4

	thumb_func_start sub_0806C010
sub_0806C010: @ 0x0806C010
	adds r3, r0, #0
	asrs r1, r1, #1
	lsls r0, r1, #7
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x20
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	bx lr
	.align 2, 0

	thumb_func_start sub_0806C028
sub_0806C028: @ 0x0806C028
	movs r2, #0x83
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0806C034
sub_0806C034: @ 0x0806C034
	movs r2, #0x83
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0806C040
sub_0806C040: @ 0x0806C040
	ldr r2, _0806C050 @ =0x00000834
	adds r0, r0, r2
	ldr r2, [r0]
	adds r1, r2, r1
	str r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0806C050: .4byte 0x00000834

	thumb_func_start sub_0806C054
sub_0806C054: @ 0x0806C054
	push {r4, r5, lr}
	adds r5, r2, #0
	ldr r2, _0806C088 @ =0x00000834
	adds r0, r0, r2
	ldr r3, [r0]
	adds r2, r3, #1
	str r2, [r0]
	lsls r2, r3, #3
	adds r2, #4
	adds r4, r0, r2
	lsls r0, r1, #3
	cmp r0, #0
	ble _0806C080
	ldr r2, _0806C08C @ =0x040000D4
	str r5, [r2]
	str r4, [r2, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C080:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806C088: .4byte 0x00000834
_0806C08C: .4byte 0x040000D4

	thumb_func_start sub_0806C090
sub_0806C090: @ 0x0806C090
	ldr r2, _0806C09C @ =0x00000834
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0806C09C: .4byte 0x00000834

	thumb_func_start sub_0806C0A0
sub_0806C0A0: @ 0x0806C0A0
	ldr r2, _0806C0B0 @ =0x00000944
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0806C0B0: .4byte 0x00000944

	thumb_func_start sub_0806C0B4
sub_0806C0B4: @ 0x0806C0B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0806C148 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r4, _0806C14C @ =0x00000938
	add r4, r8
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0806C118
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C0EA
	adds r0, r1, #0
_0806C0EA:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl sub_0805D3C8
	adds r7, r0, #0
	ldr r6, [r4, #8]
	adds r3, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806C10A
	adds r2, r0, #0
_0806C100:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C100
_0806C10A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806C114
	bl sub_0805D3F4
_0806C114:
	str r5, [r4]
	str r7, [r4, #8]
_0806C118:
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r4, #4]
	ldr r2, _0806C150 @ =0x00000944
	add r2, r8
	ldrh r0, [r2]
	mov r3, sb
	adds r1, r0, r3
	strh r1, [r2]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806C148: .4byte 0xFFFF0000
_0806C14C: .4byte 0x00000938
_0806C150: .4byte 0x00000944

	thumb_func_start sub_0806C154
sub_0806C154: @ 0x0806C154
	lsls r0, r1, #5
	ldr r1, _0806C15C @ =0x06010000
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0806C15C: .4byte 0x06010000

	thumb_func_start sub_0806C160
sub_0806C160: @ 0x0806C160
	ldr r2, _0806C170 @ =0x00000948
	adds r0, r0, r2
	ldr r2, [r0]
	adds r1, r2, r1
	str r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0806C170: .4byte 0x00000948

	thumb_func_start sub_0806C174
sub_0806C174: @ 0x0806C174
	push {r4, r5, lr}
	adds r5, r2, #0
	ldr r2, _0806C1A8 @ =0x00000948
	adds r0, r0, r2
	ldr r3, [r0]
	adds r2, r3, r1
	str r2, [r0]
	lsls r2, r3, #5
	adds r2, #4
	adds r4, r0, r2
	lsls r0, r1, #5
	cmp r0, #0
	ble _0806C1A0
	ldr r2, _0806C1AC @ =0x040000D4
	str r5, [r2]
	str r4, [r2, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C1A0:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806C1A8: .4byte 0x00000948
_0806C1AC: .4byte 0x040000D4

	thumb_func_start sub_0806C1B0
sub_0806C1B0: @ 0x0806C1B0
	ldr r2, _0806C1BC @ =0x00000948
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, #4
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0806C1BC: .4byte 0x00000948

	thumb_func_start sub_0806C1C0
sub_0806C1C0: @ 0x0806C1C0
	ldr r2, _0806C1C8 @ =0x00000B4C
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0806C1C8: .4byte 0x00000B4C

	thumb_func_start sub_0806C1CC
sub_0806C1CC: @ 0x0806C1CC
	ldr r1, _0806C1D4 @ =0x00000B4C
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806C1D4: .4byte 0x00000B4C

	thumb_func_start sub_0806C1D8
sub_0806C1D8: @ 0x0806C1D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	movs r2, #0x83
	lsls r2, r2, #4
	adds r2, r6, r2
	str r2, [sp, #0xc]
_0806C1F8:
	ldr r3, [sp, #0xc]
	ldr r0, [r3]
	mov r5, r8
	lsls r5, r5, #7
	mov sl, r5
	mov r7, r8
	adds r7, #1
	str r7, [sp, #0x14]
	ldr r1, _0806C3A8 @ =0x0000094C
	adds r1, r6, r1
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _0806C278
	movs r2, #0
	mov ip, r2
	mov r0, sl
	add r0, r8
	lsls r3, r0, #2
	adds r0, r3, r6
	ldr r0, [r0, #0x20]
	cmp ip, r0
	bge _0806C278
	adds r1, r3, r6
	movs r5, #0x83
	lsls r5, r5, #4
	adds r5, r5, r6
	mov sb, r5
	adds r0, r1, #0
	adds r3, r0, #0
	adds r3, #0x20
	str r3, [sp, #0x18]
	adds r4, r0, #0
	adds r4, #0x24
	adds r3, r1, #0
	adds r3, #0x26
	ldr r7, _0806C3AC @ =0x00000832
	adds r7, r6, r7
	str r7, [sp, #0x1c]
_0806C244:
	ldrh r2, [r3]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	mov r5, sb
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r1, r1, r0
	ldr r0, _0806C3B0 @ =0x000001FF
	ands r1, r0
	ldr r0, _0806C3B4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	ldrb r2, [r4]
	adds r0, r0, r2
	strb r0, [r4]
	adds r4, #8
	adds r3, #8
	movs r5, #1
	add ip, r5
	ldr r7, [sp, #0x18]
	ldr r0, [r7]
	cmp ip, r0
	blt _0806C244
_0806C278:
	mov r0, sl
	add r0, r8
	lsls r2, r0, #2
	adds r0, r2, r6
	adds r1, r0, #0
	adds r1, #0x24
	ldr r0, [r0, #0x20]
	lsls r0, r0, #3
	cmp r0, #0
	ble _0806C2A0
	ldr r3, _0806C3B8 @ =0x040000D4
	str r1, [r3]
	ldr r5, [sp, #8]
	str r5, [r3, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0806C2A0:
	adds r0, r2, r6
	ldr r0, [r0, #0x20]
	lsls r0, r0, #3
	ldr r7, [sp, #8]
	adds r7, r7, r0
	str r7, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r8, r0
	cmp r0, #3
	ble _0806C1F8
	ldr r0, _0806C3BC @ =0x07000400
	subs r1, r0, r7
	cmp r1, #0
	ble _0806C2D6
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #4]
	ldr r2, _0806C3B8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	str r7, [r2, #4]
	asrs r0, r1, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C2D6:
	movs r3, #0
	adds r0, r6, #0
	adds r0, #0x20
	movs r2, #0x81
	lsls r2, r2, #2
	movs r1, #3
_0806C2E2:
	str r3, [r0]
	adds r0, r0, r2
	subs r1, #1
	cmp r1, #0
	bge _0806C2E2
	movs r2, #0xe0
	lsls r2, r2, #0x13
	ldr r1, _0806C3C0 @ =0x00000834
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _0806C31A
	ldr r3, _0806C3C4 @ =0x00000838
	adds r1, r6, r3
	adds r3, r0, #0
_0806C300:
	ldrh r0, [r1]
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	strh r0, [r2, #0xe]
	ldrh r0, [r1, #4]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #6]
	strh r0, [r2, #0x1e]
	adds r2, #0x20
	adds r1, #8
	subs r3, #1
	cmp r3, #0
	bne _0806C300
_0806C31A:
	ldr r5, _0806C3C0 @ =0x00000834
	adds r0, r6, r5
	movs r1, #0
	str r1, [r0]
	ldr r7, _0806C3C8 @ =0x06010000
	movs r4, #0
	ldr r0, _0806C3CC @ =0x00000938
	adds r1, r6, r0
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _0806C364
	adds r5, r1, #0
	ldr r3, _0806C3B8 @ =0x040000D4
	ldr r2, [r5, #8]
	movs r1, #0x84
	lsls r1, r1, #0x18
	mov r8, r1
_0806C33C:
	ldrh r0, [r2]
	ldr r1, [r2, #4]
	lsls r0, r0, #5
	cmp r0, #0
	ble _0806C354
	str r1, [r3]
	str r7, [r3, #4]
	asrs r0, r0, #2
	mov r1, r8
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0806C354:
	ldrh r0, [r2]
	lsls r0, r0, #5
	adds r7, r7, r0
	adds r2, #8
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0806C33C
_0806C364:
	ldr r2, _0806C3CC @ =0x00000938
	adds r0, r6, r2
	movs r4, #0
	str r4, [r0, #4]
	ldr r3, _0806C3D0 @ =0x00000944
	adds r0, r6, r3
	strh r4, [r0]
	ldr r5, _0806C3D4 @ =0x00000948
	adds r3, r6, r5
	ldr r0, [r3]
	lsls r1, r0, #5
	cmp r1, #0
	ble _0806C394
	ldr r2, _0806C3B8 @ =0x040000D4
	ldr r7, [sp, #0x10]
	str r7, [r2]
	ldr r0, _0806C3D8 @ =0x05000200
	str r0, [r2, #4]
	asrs r0, r1, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C394:
	str r4, [r3]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C3A8: .4byte 0x0000094C
_0806C3AC: .4byte 0x00000832
_0806C3B0: .4byte 0x000001FF
_0806C3B4: .4byte 0xFFFFFE00
_0806C3B8: .4byte 0x040000D4
_0806C3BC: .4byte 0x07000400
_0806C3C0: .4byte 0x00000834
_0806C3C4: .4byte 0x00000838
_0806C3C8: .4byte 0x06010000
_0806C3CC: .4byte 0x00000938
_0806C3D0: .4byte 0x00000944
_0806C3D4: .4byte 0x00000948
_0806C3D8: .4byte 0x05000200

	thumb_func_start sub_0806C3DC
sub_0806C3DC: @ 0x0806C3DC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0806C3FC @ =0x00000B4C
	adds r0, r3, r1
	ldr r0, [r0]
	ldr r2, _0806C400 @ =0x00000948
	adds r1, r3, r2
	ldr r1, [r1]
	lsls r1, r1, #4
	adds r2, #4
	adds r3, r3, r2
	adds r2, r3, #0
	bl sub_0806A67C
	pop {r0}
	bx r0
	.align 2, 0
_0806C3FC: .4byte 0x00000B4C
_0806C400: .4byte 0x00000948

	thumb_func_start sub_0806C404
sub_0806C404: @ 0x0806C404
	push {r4, lr}
	ldr r4, _0806C418 @ =gUnknown_02001CF4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806C41C @ =0x09F7F098
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C418: .4byte gUnknown_02001CF4
_0806C41C: .4byte 0x09F7F098

	thumb_func_start sub_0806C420
sub_0806C420: @ 0x0806C420
	ldr r0, _0806C424 @ =gUnknown_02001D08
	bx lr
	.align 2, 0
_0806C424: .4byte gUnknown_02001D08

	thumb_func_start sub_0806C428
sub_0806C428: @ 0x0806C428
	push {r4, lr}
	ldr r1, _0806C450 @ =gUnknown_02001D14
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806C444
	ldr r4, _0806C454 @ =gUnknown_02001D18
	movs r0, #0x50
	bl __builtin_new
	bl sub_0806C4AC
	str r0, [r4]
_0806C444:
	ldr r0, _0806C454 @ =gUnknown_02001D18
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806C450: .4byte gUnknown_02001D14
_0806C454: .4byte gUnknown_02001D18

	thumb_func_start sub_0806C458
sub_0806C458: @ 0x0806C458
	ldr r0, _0806C460 @ =gUnknown_02001D18
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806C460: .4byte gUnknown_02001D18

	thumb_func_start sub_0806C464
sub_0806C464: @ 0x0806C464
	push {r4, r5, lr}
	ldr r1, _0806C498 @ =gUnknown_02001D14
	ldr r0, [r1]
	cmp r0, #0
	ble _0806C490
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806C490
	ldr r5, _0806C49C @ =gUnknown_02001D18
	ldr r2, [r5]
	cmp r2, #0
	beq _0806C48E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806C48E:
	str r4, [r5]
_0806C490:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C498: .4byte gUnknown_02001D14
_0806C49C: .4byte gUnknown_02001D18

	thumb_func_start sub_0806C4A0
sub_0806C4A0: @ 0x0806C4A0
	push {lr}
	bl sub_0806C420
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C4AC
sub_0806C4AC: @ 0x0806C4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806C50C @ =0x09F7F0B0
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	movs r2, #3
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806C4C6:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, #0xc
	subs r2, #1
	cmp r2, r3
	bne _0806C4C6
	bl getClock__3Mgr
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806C510 @ =0x09F44FF0
	ldr r0, _0806C514 @ =0x09F7EE20
	str r0, [sp, #0x20]
	ldr r0, _0806C518 @ =gUnknown_080FF534
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseR4BaseT1UiPFP4Base_v
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806C50C: .4byte 0x09F7F0B0
_0806C510: .4byte 0x09F44FF0
_0806C514: .4byte 0x09F7EE20
_0806C518: .4byte gUnknown_080FF534

	thumb_func_start sub_0806C51C
sub_0806C51C: @ 0x0806C51C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0806C558 @ =0x09F7F0B0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x20
	cmp r0, #0
	beq _0806C548
	adds r4, r5, #0
	adds r4, #0x50
	cmp r0, r4
	beq _0806C548
	adds r6, r0, #0
_0806C538:
	subs r4, #0xc
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806C544
	bl sub_0805D3F4
_0806C544:
	cmp r6, r4
	bne _0806C538
_0806C548:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C558: .4byte 0x09F7F0B0

	thumb_func_start sub_0806C55C
sub_0806C55C: @ 0x0806C55C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r1, r4, #0
	bl sub_0806C634
	mov r8, r0
	ldr r1, _0806C62C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	lsls r5, r5, #0x10
	ldr r1, _0806C630 @ =0x0000FFFF
	ands r0, r1
	orrs r0, r5
	str r0, [sp]
	str r4, [sp, #4]
	lsrs r4, r4, #4
	movs r0, #3
	ands r4, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r6, r0, r6
	adds r6, #0x20
	ldr r0, [r6, #4]
	adds r4, r0, #1
	ldr r0, [r6]
	cmp r0, r4
	bge _0806C5DA
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C5AC
	adds r0, r1, #0
_0806C5AC:
	adds r4, r0, #0
	lsls r0, r4, #3
	bl sub_0805D3C8
	adds r7, r0, #0
	ldr r5, [r6, #8]
	adds r3, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806C5CC
	adds r2, r0, #0
_0806C5C2:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C5C2
_0806C5CC:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806C5D6
	bl sub_0805D3F4
_0806C5D6:
	str r4, [r6]
	str r7, [r6, #8]
_0806C5DA:
	mov r0, r8
	lsls r2, r0, #3
	ldr r1, [r6, #8]
	adds r1, r2, r1
	ldr r0, [r6, #4]
	mov r3, r8
	subs r5, r0, r3
	adds r3, r1, #0
	adds r3, #8
	lsls r0, r5, #3
	subs r0, #8
	adds r4, r1, r0
	adds r3, r3, r0
	adds r7, r2, #0
	cmp r5, #0
	ble _0806C60E
	adds r2, r5, #0
_0806C5FC:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r3]
	str r1, [r3, #4]
	subs r4, #8
	subs r3, #8
	subs r2, #1
	cmp r2, #0
	bne _0806C5FC
_0806C60E:
	ldr r0, [r6, #8]
	adds r0, r7, r0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C62C: .4byte 0xFFFF0000
_0806C630: .4byte 0x0000FFFF

	thumb_func_start sub_0806C634
sub_0806C634: @ 0x0806C634
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsrs r1, r4, #4
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #2
	adds r0, r1, r5
	ldr r0, [r0, #0x24]
	cmp r0, #0
	ble _0806C678
	movs r3, #0
	adds r2, r0, #0
	cmp r3, r2
	bge _0806C676
	adds r0, r1, r5
	ldr r5, [r0, #0x28]
_0806C65A:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r5, r0
	ldr r0, [r0, #4]
	cmp r0, r4
	bhs _0806C670
	adds r3, r1, #1
	b _0806C672
_0806C670:
	adds r2, r1, #0
_0806C672:
	cmp r3, r2
	blt _0806C65A
_0806C676:
	adds r0, r3, #0
_0806C678:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C680
sub_0806C680: @ 0x0806C680
	push {r4, r5, lr}
	adds r5, r0, #0
	lsrs r4, r1, #4
	movs r0, #3
	ands r4, r0
	adds r0, r5, #0
	bl sub_0806C6C4
	adds r2, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r3, r0, #2
	adds r0, r3, r5
	ldr r0, [r0, #0x24]
	cmp r2, r0
	blt _0806C6A8
	ldr r0, _0806C6A4 @ =0x0000FFFF
	b _0806C6BE
	.align 2, 0
_0806C6A4: .4byte 0x0000FFFF
_0806C6A8:
	adds r0, r3, r5
	lsls r2, r2, #3
	ldr r1, [r0, #0x28]
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r3, r5
	ldr r0, [r0, #0x28]
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_0806C6BE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C6C4
sub_0806C6C4: @ 0x0806C6C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r1, #0
	lsrs r4, r7, #4
	movs r0, #3
	ands r4, r0
	lsls r1, r4, #1
	adds r0, r1, r4
	lsls r6, r0, #2
	mov r2, ip
	adds r0, r6, r2
	ldr r5, [r0, #0x24]
	cmp r5, #0
	bgt _0806C6E8
	adds r0, r5, #0
	b _0806C72E
_0806C6E8:
	movs r3, #0
	subs r2, r5, #1
	mov r8, r1
	cmp r3, r2
	bge _0806C714
	mov r1, ip
	adds r0, r6, r1
	ldr r6, [r0, #0x28]
_0806C6F8:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r6, r0
	ldr r0, [r0, #4]
	cmp r0, r7
	bhs _0806C70E
	adds r3, r1, #1
	b _0806C710
_0806C70E:
	adds r2, r1, #0
_0806C710:
	cmp r3, r2
	blt _0806C6F8
_0806C714:
	mov r2, r8
	adds r0, r2, r4
	lsls r0, r0, #2
	add r0, ip
	lsls r1, r3, #3
	ldr r0, [r0, #0x28]
	adds r0, r0, r1
	ldr r0, [r0, #4]
	adds r1, r5, #0
	cmp r0, r7
	bne _0806C72C
	adds r1, r3, #0
_0806C72C:
	adds r0, r1, #0
_0806C72E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C738
sub_0806C738: @ 0x0806C738
	push {lr}
	movs r2, #0
	adds r0, #0x20
	movs r1, #3
_0806C740:
	str r2, [r0, #4]
	adds r0, #0xc
	subs r1, #1
	cmp r1, #0
	bge _0806C740
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806C750
sub_0806C750: @ 0x0806C750
	push {r4, lr}
	ldr r4, _0806C764 @ =gUnknown_02001D08
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806C768 @ =0x09F7F118
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C764: .4byte gUnknown_02001D08
_0806C768: .4byte 0x09F7F118

	thumb_func_start sub_0806C76C
sub_0806C76C: @ 0x0806C76C
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	bx lr

	thumb_func_start sub_0806C774
sub_0806C774: @ 0x0806C774
	ldr r0, _0806C778 @ =gUnknown_02001D1C
	bx lr
	.align 2, 0
_0806C778: .4byte gUnknown_02001D1C

	thumb_func_start sub_0806C77C
sub_0806C77C: @ 0x0806C77C
	push {r4, lr}
	ldr r1, _0806C7A4 @ =gUnknown_02001D28
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806C798
	ldr r4, _0806C7A8 @ =gUnknown_02001D2C
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0806C800
	str r0, [r4]
_0806C798:
	ldr r0, _0806C7A8 @ =gUnknown_02001D2C
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806C7A4: .4byte gUnknown_02001D28
_0806C7A8: .4byte gUnknown_02001D2C

	thumb_func_start sub_0806C7AC
sub_0806C7AC: @ 0x0806C7AC
	ldr r0, _0806C7B4 @ =gUnknown_02001D2C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806C7B4: .4byte gUnknown_02001D2C

	thumb_func_start sub_0806C7B8
sub_0806C7B8: @ 0x0806C7B8
	push {r4, r5, lr}
	ldr r1, _0806C7EC @ =gUnknown_02001D28
	ldr r0, [r1]
	cmp r0, #0
	ble _0806C7E4
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806C7E4
	ldr r5, _0806C7F0 @ =gUnknown_02001D2C
	ldr r2, [r5]
	cmp r2, #0
	beq _0806C7E2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806C7E2:
	str r4, [r5]
_0806C7E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C7EC: .4byte gUnknown_02001D28
_0806C7F0: .4byte gUnknown_02001D2C

	thumb_func_start sub_0806C7F4
sub_0806C7F4: @ 0x0806C7F4
	push {lr}
	bl sub_0806C774
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C800
sub_0806C800: @ 0x0806C800
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0806C860 @ =0x09F7F130
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	str r0, [r5, #0x20]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl getClock__3Mgr
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806C864 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0806C868 @ =0x09F7EE20
	str r0, [sp, #0x20]
	ldr r0, _0806C86C @ =gUnknown_080FF664
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseR4BaseT1UiPFP4Base_v
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
_0806C860: .4byte 0x09F7F130
_0806C864: .4byte 0x09F44FF0
_0806C868: .4byte 0x09F7EE20
_0806C86C: .4byte gUnknown_080FF664

	thumb_func_start sub_0806C870
sub_0806C870: @ 0x0806C870
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806C894 @ =0x09F7F130
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0806C884
	bl sub_0805D3F4
_0806C884:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C894: .4byte 0x09F7F130

	thumb_func_start sub_0806C898
sub_0806C898: @ 0x0806C898
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r3, _0806C95C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	movs r3, #1
	orrs r0, r3
	lsls r1, r1, #0x10
	ldr r3, _0806C960 @ =0x0000FFFF
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0806C964
	adds r6, r4, #0
	adds r6, #0x20
	mov r8, r0
	ldr r0, [r6, #4]
	adds r5, r0, #1
	ldr r0, [r4, #0x20]
	cmp r0, r5
	bge _0806C908
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C8DA
	adds r0, r1, #0
_0806C8DA:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl sub_0805D3C8
	adds r7, r0, #0
	ldr r4, [r6, #8]
	adds r3, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806C8FA
	adds r2, r0, #0
_0806C8F0:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C8F0
_0806C8FA:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806C904
	bl sub_0805D3F4
_0806C904:
	str r5, [r6]
	str r7, [r6, #8]
_0806C908:
	mov r0, r8
	lsls r2, r0, #3
	ldr r1, [r6, #8]
	adds r1, r2, r1
	ldr r0, [r6, #4]
	mov r3, r8
	subs r5, r0, r3
	adds r3, r1, #0
	adds r3, #8
	lsls r0, r5, #3
	subs r0, #8
	adds r4, r1, r0
	adds r3, r3, r0
	adds r7, r2, #0
	cmp r5, #0
	ble _0806C93C
	adds r2, r5, #0
_0806C92A:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r3]
	str r1, [r3, #4]
	subs r4, #8
	subs r3, #8
	subs r2, #1
	cmp r2, #0
	bne _0806C92A
_0806C93C:
	ldr r0, [r6, #8]
	adds r0, r7, r0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C95C: .4byte 0xFFFF0000
_0806C960: .4byte 0x0000FFFF

	thumb_func_start sub_0806C964
sub_0806C964: @ 0x0806C964
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0806C99A
	movs r3, #0
	adds r2, r0, #0
	cmp r3, r2
	bge _0806C998
	ldr r4, [r1, #8]
_0806C97C:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, r5
	bhs _0806C992
	adds r3, r1, #1
	b _0806C994
_0806C992:
	adds r2, r1, #0
_0806C994:
	cmp r3, r2
	blt _0806C97C
_0806C998:
	adds r0, r3, #0
_0806C99A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C9A0
sub_0806C9A0: @ 0x0806C9A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806C9D4
	adds r2, r0, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r2, r0
	blt _0806C9BC
	ldr r0, _0806C9B8 @ =0x0000FFFF
	b _0806C9CE
	.align 2, 0
_0806C9B8: .4byte 0x0000FFFF
_0806C9BC:
	lsls r2, r2, #3
	ldr r1, [r4, #8]
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_0806C9CE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C9D4
sub_0806C9D4: @ 0x0806C9D4
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r0, #0x20
	ldr r4, [r0, #4]
	cmp r4, #0
	bgt _0806C9E4
	adds r0, r4, #0
	b _0806CA1E
_0806C9E4:
	movs r3, #0
	subs r2, r4, #1
	adds r7, r0, #0
	cmp r3, r2
	bge _0806CA0C
	ldr r6, [r7, #8]
_0806C9F0:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r6, r0
	ldr r0, [r0, #4]
	cmp r0, r5
	bhs _0806CA06
	adds r3, r1, #1
	b _0806CA08
_0806CA06:
	adds r2, r1, #0
_0806CA08:
	cmp r3, r2
	blt _0806C9F0
_0806CA0C:
	lsls r0, r3, #3
	ldr r1, [r7, #8]
	adds r1, r1, r0
	ldr r0, [r1, #4]
	adds r1, r4, #0
	cmp r0, r5
	bne _0806CA1C
	adds r1, r3, #0
_0806CA1C:
	adds r0, r1, #0
_0806CA1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806CA24
sub_0806CA24: @ 0x0806CA24
	movs r1, #0
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806CA2C
sub_0806CA2C: @ 0x0806CA2C
	push {r4, lr}
	ldr r4, _0806CA40 @ =gUnknown_02001D1C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806CA44 @ =0x09F7F198
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA40: .4byte gUnknown_02001D1C
_0806CA44: .4byte 0x09F7F198

	thumb_func_start sub_0806CA48
sub_0806CA48: @ 0x0806CA48
	ldr r0, _0806CA4C @ =gUnknown_02001E20
	bx lr
	.align 2, 0
_0806CA4C: .4byte gUnknown_02001E20

	thumb_func_start sub_0806CA50
sub_0806CA50: @ 0x0806CA50
	push {lr}
	bl sub_0806CA48
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CA5C
sub_0806CA5C: @ 0x0806CA5C
	ldr r0, _0806CA60 @ =gUnknown_02001E14
	bx lr
	.align 2, 0
_0806CA60: .4byte gUnknown_02001E14

	thumb_func_start sub_0806CA64
sub_0806CA64: @ 0x0806CA64
	push {lr}
	bl sub_0806CA5C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CA70
sub_0806CA70: @ 0x0806CA70
	ldr r0, _0806CA74 @ =gUnknown_02001E08
	bx lr
	.align 2, 0
_0806CA74: .4byte gUnknown_02001E08

	thumb_func_start sub_0806CA78
sub_0806CA78: @ 0x0806CA78
	push {lr}
	bl sub_0806CA70
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CA84
sub_0806CA84: @ 0x0806CA84
	ldr r0, _0806CA88 @ =gUnknown_02001DFC
	bx lr
	.align 2, 0
_0806CA88: .4byte gUnknown_02001DFC

	thumb_func_start sub_0806CA8C
sub_0806CA8C: @ 0x0806CA8C
	push {lr}
	bl sub_0806CA84
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CA98
sub_0806CA98: @ 0x0806CA98
	ldr r0, _0806CA9C @ =gUnknown_02001DF0
	bx lr
	.align 2, 0
_0806CA9C: .4byte gUnknown_02001DF0

	thumb_func_start sub_0806CAA0
sub_0806CAA0: @ 0x0806CAA0
	push {lr}
	bl sub_0806CA98
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CAAC
sub_0806CAAC: @ 0x0806CAAC
	ldr r0, _0806CAB0 @ =gUnknown_02001DE4
	bx lr
	.align 2, 0
_0806CAB0: .4byte gUnknown_02001DE4

	thumb_func_start sub_0806CAB4
sub_0806CAB4: @ 0x0806CAB4
	push {lr}
	bl sub_0806CAAC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CAC0
sub_0806CAC0: @ 0x0806CAC0
	ldr r0, _0806CAC4 @ =gUnknown_02001DD8
	bx lr
	.align 2, 0
_0806CAC4: .4byte gUnknown_02001DD8

	thumb_func_start sub_0806CAC8
sub_0806CAC8: @ 0x0806CAC8
	push {lr}
	bl sub_0806CAC0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CAD4
sub_0806CAD4: @ 0x0806CAD4
	ldr r0, _0806CAD8 @ =gUnknown_02001DCC
	bx lr
	.align 2, 0
_0806CAD8: .4byte gUnknown_02001DCC

	thumb_func_start sub_0806CADC
sub_0806CADC: @ 0x0806CADC
	push {lr}
	bl sub_0806CAD4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CAE8
sub_0806CAE8: @ 0x0806CAE8
	ldr r0, _0806CAEC @ =gUnknown_02001DC0
	bx lr
	.align 2, 0
_0806CAEC: .4byte gUnknown_02001DC0

	thumb_func_start sub_0806CAF0
sub_0806CAF0: @ 0x0806CAF0
	push {lr}
	bl sub_0806CAE8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CAFC
sub_0806CAFC: @ 0x0806CAFC
	ldr r0, _0806CB00 @ =gUnknown_02001DB4
	bx lr
	.align 2, 0
_0806CB00: .4byte gUnknown_02001DB4

	thumb_func_start sub_0806CB04
sub_0806CB04: @ 0x0806CB04
	push {lr}
	bl sub_0806CAFC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CB10
sub_0806CB10: @ 0x0806CB10
	ldr r0, _0806CB14 @ =gUnknown_02001DA8
	bx lr
	.align 2, 0
_0806CB14: .4byte gUnknown_02001DA8

	thumb_func_start sub_0806CB18
sub_0806CB18: @ 0x0806CB18
	push {lr}
	bl sub_0806CB10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CB24
sub_0806CB24: @ 0x0806CB24
	ldr r0, _0806CB28 @ =gUnknown_02001D9C
	bx lr
	.align 2, 0
_0806CB28: .4byte gUnknown_02001D9C

	thumb_func_start sub_0806CB2C
sub_0806CB2C: @ 0x0806CB2C
	push {lr}
	bl sub_0806CB24
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CB38
sub_0806CB38: @ 0x0806CB38
	ldr r0, _0806CB3C @ =gUnknown_02001D90
	bx lr
	.align 2, 0
_0806CB3C: .4byte gUnknown_02001D90

	thumb_func_start sub_0806CB40
sub_0806CB40: @ 0x0806CB40
	push {lr}
	bl sub_0806CB38
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CB4C
sub_0806CB4C: @ 0x0806CB4C
	ldr r0, _0806CB50 @ =gUnknown_02001D84
	bx lr
	.align 2, 0
_0806CB50: .4byte gUnknown_02001D84

	thumb_func_start sub_0806CB54
sub_0806CB54: @ 0x0806CB54
	push {lr}
	bl sub_0806CB4C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CB60
sub_0806CB60: @ 0x0806CB60
	ldr r0, _0806CB64 @ =gUnknown_02001D78
	bx lr
	.align 2, 0
_0806CB64: .4byte gUnknown_02001D78

	thumb_func_start sub_0806CB68
sub_0806CB68: @ 0x0806CB68
	push {lr}
	bl sub_0806CB60
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CB74
sub_0806CB74: @ 0x0806CB74
	ldr r0, _0806CB78 @ =gUnknown_02001D6C
	bx lr
	.align 2, 0
_0806CB78: .4byte gUnknown_02001D6C

	thumb_func_start sub_0806CB7C
sub_0806CB7C: @ 0x0806CB7C
	push {lr}
	bl sub_0806CB74
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CB88
sub_0806CB88: @ 0x0806CB88
	ldr r0, _0806CB8C @ =gUnknown_02001D60
	bx lr
	.align 2, 0
_0806CB8C: .4byte gUnknown_02001D60

	thumb_func_start sub_0806CB90
sub_0806CB90: @ 0x0806CB90
	push {lr}
	bl sub_0806CB88
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CB9C
sub_0806CB9C: @ 0x0806CB9C
	ldr r0, _0806CBA0 @ =gUnknown_02001D54
	bx lr
	.align 2, 0
_0806CBA0: .4byte gUnknown_02001D54

	thumb_func_start sub_0806CBA4
sub_0806CBA4: @ 0x0806CBA4
	push {lr}
	bl sub_0806CB9C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CBB0
sub_0806CBB0: @ 0x0806CBB0
	ldr r0, _0806CBB4 @ =gUnknown_02001D48
	bx lr
	.align 2, 0
_0806CBB4: .4byte gUnknown_02001D48

	thumb_func_start sub_0806CBB8
sub_0806CBB8: @ 0x0806CBB8
	push {lr}
	bl sub_0806CBB0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CBC4
sub_0806CBC4: @ 0x0806CBC4
	ldr r0, _0806CBC8 @ =gUnknown_02001D3C
	bx lr
	.align 2, 0
_0806CBC8: .4byte gUnknown_02001D3C

	thumb_func_start sub_0806CBCC
sub_0806CBCC: @ 0x0806CBCC
	push {lr}
	bl sub_0806CBC4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CBD8__Fv
sub_0806CBD8__Fv: @ 0x0806CBD8
	ldr r0, _0806CBDC @ =gUnknown_02001D30
	bx lr
	.align 2, 0
_0806CBDC: .4byte gUnknown_02001D30

	thumb_func_start sub_0806CBE0
sub_0806CBE0: @ 0x0806CBE0
	push {r4, lr}
	ldr r1, _0806CC08 @ =gUnknown_02001E2C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806CBFC
	ldr r4, _0806CC0C @ =gUnknown_02001E30
	movs r0, #0x4c
	bl __builtin_new
	bl __6KeyPad
	str r0, [r4]
_0806CBFC:
	ldr r0, _0806CC0C @ =gUnknown_02001E30
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806CC08: .4byte gUnknown_02001E2C
_0806CC0C: .4byte gUnknown_02001E30

	thumb_func_start sub_0806CC10
sub_0806CC10: @ 0x0806CC10
	ldr r0, _0806CC18 @ =gUnknown_02001E30
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806CC18: .4byte gUnknown_02001E30

	thumb_func_start sub_0806CC1C
sub_0806CC1C: @ 0x0806CC1C
	push {r4, r5, lr}
	ldr r1, _0806CC50 @ =gUnknown_02001E2C
	ldr r0, [r1]
	cmp r0, #0
	ble _0806CC48
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806CC48
	ldr r5, _0806CC54 @ =gUnknown_02001E30
	ldr r2, [r5]
	cmp r2, #0
	beq _0806CC46
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806CC46:
	str r4, [r5]
_0806CC48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CC50: .4byte gUnknown_02001E2C
_0806CC54: .4byte gUnknown_02001E30
