.include "asm/macros.inc"

.syntax unified
.section .text

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
	bl __builtin_vec_delete
_0806B1C0:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0806B1CA
	bl __builtin_vec_delete
_0806B1CA:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806B1D4
	bl __builtin_vec_delete
_0806B1D4:
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0806B1E0
	bl __builtin_vec_delete
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
	bl get__12ClockManager
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
	bl __builtin_vec_delete
_0806B2A2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806B2AC
	bl __builtin_vec_delete
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
	bl __builtin_vec_new
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
	bl __builtin_vec_delete
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
	bl __builtin_vec_new
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
	bl __builtin_vec_delete
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
	bl sub_0806A67C__15struct_0806A57CiPUsT2
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
	bl sub_0806A67C__15struct_0806A57CiPUsT2
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
