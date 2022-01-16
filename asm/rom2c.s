.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806D2CC
sub_0806D2CC: @ 0x0806D2CC
	push {r4, lr}
	ldr r4, _0806D3D0 @ =gUnknown_02001E20
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3D4 @ =0x09F7FB98
	str r0, [r4, #8]
	ldr r4, _0806D3D8 @ =gUnknown_02001E14
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3DC @ =0x09F7FB18
	str r0, [r4, #8]
	ldr r4, _0806D3E0 @ =gUnknown_02001E08
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3E4 @ =0x09F7FA98
	str r0, [r4, #8]
	ldr r4, _0806D3E8 @ =gUnknown_02001DFC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3EC @ =0x09F7FA18
	str r0, [r4, #8]
	ldr r4, _0806D3F0 @ =gUnknown_02001DF0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3F4 @ =0x09F7F998
	str r0, [r4, #8]
	ldr r4, _0806D3F8 @ =gUnknown_02001DE4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3FC @ =0x09F7F918
	str r0, [r4, #8]
	ldr r4, _0806D400 @ =gUnknown_02001DD8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D404 @ =0x09F7F898
	str r0, [r4, #8]
	ldr r4, _0806D408 @ =gUnknown_02001DCC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D40C @ =0x09F7F818
	str r0, [r4, #8]
	ldr r4, _0806D410 @ =gUnknown_02001DC0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D414 @ =0x09F7F798
	str r0, [r4, #8]
	ldr r4, _0806D418 @ =gUnknown_02001DB4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D41C @ =0x09F7F718
	str r0, [r4, #8]
	ldr r4, _0806D420 @ =gUnknown_02001DA8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D424 @ =0x09F7F698
	str r0, [r4, #8]
	ldr r4, _0806D428 @ =gUnknown_02001D9C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D42C @ =0x09F7F618
	str r0, [r4, #8]
	ldr r4, _0806D430 @ =gUnknown_02001D90
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D434 @ =0x09F7F598
	str r0, [r4, #8]
	ldr r4, _0806D438 @ =gUnknown_02001D84
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D43C @ =0x09F7F518
	str r0, [r4, #8]
	ldr r4, _0806D440 @ =gUnknown_02001D78
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D444 @ =0x09F7F498
	str r0, [r4, #8]
	ldr r4, _0806D448 @ =gUnknown_02001D6C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D44C @ =0x09F7F418
	str r0, [r4, #8]
	ldr r4, _0806D450 @ =gUnknown_02001D60
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D454 @ =0x09F7F398
	str r0, [r4, #8]
	ldr r4, _0806D458 @ =gUnknown_02001D54
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D45C @ =0x09F7F318
	str r0, [r4, #8]
	ldr r4, _0806D460 @ =gUnknown_02001D48
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D464 @ =0x09F7F298
	str r0, [r4, #8]
	ldr r4, _0806D468 @ =gUnknown_02001D3C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D46C @ =0x09F7F218
	str r0, [r4, #8]
	ldr r4, _0806D470 @ =gUnknown_02001D30
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D474 @ =0x09F7FC18
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D3D0: .4byte gUnknown_02001E20
_0806D3D4: .4byte 0x09F7FB98
_0806D3D8: .4byte gUnknown_02001E14
_0806D3DC: .4byte 0x09F7FB18
_0806D3E0: .4byte gUnknown_02001E08
_0806D3E4: .4byte 0x09F7FA98
_0806D3E8: .4byte gUnknown_02001DFC
_0806D3EC: .4byte 0x09F7FA18
_0806D3F0: .4byte gUnknown_02001DF0
_0806D3F4: .4byte 0x09F7F998
_0806D3F8: .4byte gUnknown_02001DE4
_0806D3FC: .4byte 0x09F7F918
_0806D400: .4byte gUnknown_02001DD8
_0806D404: .4byte 0x09F7F898
_0806D408: .4byte gUnknown_02001DCC
_0806D40C: .4byte 0x09F7F818
_0806D410: .4byte gUnknown_02001DC0
_0806D414: .4byte 0x09F7F798
_0806D418: .4byte gUnknown_02001DB4
_0806D41C: .4byte 0x09F7F718
_0806D420: .4byte gUnknown_02001DA8
_0806D424: .4byte 0x09F7F698
_0806D428: .4byte gUnknown_02001D9C
_0806D42C: .4byte 0x09F7F618
_0806D430: .4byte gUnknown_02001D90
_0806D434: .4byte 0x09F7F598
_0806D438: .4byte gUnknown_02001D84
_0806D43C: .4byte 0x09F7F518
_0806D440: .4byte gUnknown_02001D78
_0806D444: .4byte 0x09F7F498
_0806D448: .4byte gUnknown_02001D6C
_0806D44C: .4byte 0x09F7F418
_0806D450: .4byte gUnknown_02001D60
_0806D454: .4byte 0x09F7F398
_0806D458: .4byte gUnknown_02001D54
_0806D45C: .4byte 0x09F7F318
_0806D460: .4byte gUnknown_02001D48
_0806D464: .4byte 0x09F7F298
_0806D468: .4byte gUnknown_02001D3C
_0806D46C: .4byte 0x09F7F218
_0806D470: .4byte gUnknown_02001D30
_0806D474: .4byte 0x09F7FC18

	thumb_func_start sub_0806D478
sub_0806D478: @ 0x0806D478
	ldr r1, _0806D488 @ =0x09F7FC30
	str r1, [r0, #8]
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0806D488: .4byte 0x09F7FC30

	thumb_func_start sub_0806D48C
sub_0806D48C: @ 0x0806D48C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806D4AC @ =0x09F7FC30
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0806D4D0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806D4AC: .4byte 0x09F7FC30

	thumb_func_start sub_0806D4B0
sub_0806D4B0: @ 0x0806D4B0
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806D4CC @ =0x09F7FC30
	str r0, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806D4C6
	adds r0, r2, #0
	bl __builtin_delete
_0806D4C6:
	pop {r0}
	bx r0
	.align 2, 0
_0806D4CC: .4byte 0x09F7FC30

	thumb_func_start sub_0806D4D0
sub_0806D4D0: @ 0x0806D4D0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806D504
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #1
	beq _0806D4E8
	cmp r0, #2
	beq _0806D4F2
	b _0806D4FA
_0806D4E8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D520
	b _0806D4FA
_0806D4F2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D52C
_0806D4FA:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D504
sub_0806D504: @ 0x0806D504
	push {lr}
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _0806D514 @ =0x206C6363
	cmp r1, r0
	bne _0806D518
	ldrh r0, [r2, #4]
	b _0806D51A
	.align 2, 0
_0806D514: .4byte 0x206C6363
_0806D518:
	movs r0, #1
_0806D51A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D520
sub_0806D520: @ 0x0806D520
	ldr r2, [r1, #4]
	lsrs r2, r2, #5
	strh r2, [r0, #2]
	ldr r1, [r1]
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_0806D52C
sub_0806D52C: @ 0x0806D52C
	ldr r1, [r1]
	ldrh r2, [r1, #8]
	strh r2, [r0, #2]
	adds r1, #0xc
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_0806D538
sub_0806D538: @ 0x0806D538
	ldrh r0, [r0, #2]
	bx lr

	thumb_func_start sub_0806D53C
sub_0806D53C: @ 0x0806D53C
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start sub_0806D540
sub_0806D540: @ 0x0806D540
	lsls r1, r1, #5
	ldr r0, [r0, #4]
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_0806D548
sub_0806D548: @ 0x0806D548
	ldr r1, _0806D558 @ =0x09F7FC40
	str r1, [r0, #0x10]
	movs r1, #0
	strh r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0806D558: .4byte 0x09F7FC40

	thumb_func_start sub_0806D55C
sub_0806D55C: @ 0x0806D55C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806D57C @ =0x09F7FC40
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4]
	str r0, [r4, #4]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806D5AC
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806D57C: .4byte 0x09F7FC40

	thumb_func_start sub_0806D580
sub_0806D580: @ 0x0806D580
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806D5A8 @ =0x09F7FC40
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0806D594
	bl __builtin_vec_delete
_0806D594:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0806D5A2
	adds r0, r4, #0
	bl __builtin_delete
_0806D5A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D5A8: .4byte 0x09F7FC40

	thumb_func_start sub_0806D5AC
sub_0806D5AC: @ 0x0806D5AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0806D5BC
	bl __builtin_vec_delete
_0806D5BC:
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D5F0
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #1
	beq _0806D5D6
	cmp r0, #2
	beq _0806D5E0
	b _0806D5E8
_0806D5D6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D60C
	b _0806D5E8
_0806D5E0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D618
_0806D5E8:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806D5F0
sub_0806D5F0: @ 0x0806D5F0
	push {lr}
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _0806D600 @ =0x20676363
	cmp r1, r0
	bne _0806D604
	ldrh r0, [r2, #4]
	b _0806D606
	.align 2, 0
_0806D600: .4byte 0x20676363
_0806D604:
	movs r0, #1
_0806D606:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D60C
sub_0806D60C: @ 0x0806D60C
	ldr r2, [r1, #4]
	lsrs r2, r2, #5
	strh r2, [r0, #8]
	ldr r1, [r1]
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_0806D618
sub_0806D618: @ 0x0806D618
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r1]
	ldrh r0, [r4, #8]
	strh r0, [r5, #8]
	ldr r0, [r4, #0xc]
	lsrs r0, r0, #8
	adds r0, #0x20
	bl __builtin_vec_new
	adds r1, r0, #0
	str r1, [r5, #4]
	adds r4, #0xc
	adds r0, r4, #0
	bl sub_08090F8C
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D644
sub_0806D644: @ 0x0806D644
	ldrh r0, [r0, #8]
	bx lr

	thumb_func_start sub_0806D648
sub_0806D648: @ 0x0806D648
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_0806D64C
sub_0806D64C: @ 0x0806D64C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806D6D0 @ =0x09F7FC50
	str r0, [r7, #0x1c]
	movs r4, #0
	strh r4, [r7, #0x24]
	strh r4, [r7, #0x26]
	adds r0, r7, #0
	adds r0, #0x28
	strh r4, [r7, #0x28]
	strh r4, [r0, #2]
	adds r0, #4
	strh r4, [r7, #0x2c]
	strh r4, [r0, #2]
	adds r0, #4
	bl sub_08087ED8
	adds r0, r7, #0
	adds r0, #0x44
	bl sub_0806D548
	adds r0, r7, #0
	adds r0, #0x58
	bl sub_0806D478
	adds r0, r7, #0
	adds r0, #0x64
	bl sub_08088018
	strh r4, [r7, #0x20]
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #2
	strh r0, [r1]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806D6D4 @ =0x09F44FF0
	ldr r0, _0806D6D8 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0806D6DC @ =gUnknown_080FFD3C
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
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806D6D0: .4byte 0x09F7FC50
_0806D6D4: .4byte 0x09F44FF0
_0806D6D8: .4byte 0x09F7ED20
_0806D6DC: .4byte gUnknown_080FFD3C

	thumb_func_start sub_0806D6E0
sub_0806D6E0: @ 0x0806D6E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806D740 @ =0x09F7FC50
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806D7D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D70A
	adds r0, r4, #0
	adds r0, #0x64
	ldrh r1, [r4, #0x20]
	adds r2, r4, #0
	adds r2, #0x24
	adds r3, r4, #0
	adds r3, #0x28
	bl sub_08088044
_0806D70A:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #2
	bl sub_08088024
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #2
	bl sub_08087F10
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D740: .4byte 0x09F7FC50

	thumb_func_start sub_0806D744
sub_0806D744: @ 0x0806D744
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	strh r1, [r4, #0x20]
	adds r0, #0x30
	adds r1, r2, #0
	bl sub_08087F3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D794
	adds r0, r4, #0
	adds r0, #0x44
	adds r1, r5, #0
	bl sub_0806D5AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D794
	adds r0, r4, #0
	adds r0, #0x58
	ldr r1, [sp, #0xc]
	bl sub_0806D4D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D794
	adds r2, r4, #0
	adds r2, #0x68
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	b _0806D796
_0806D794:
	movs r0, #0
_0806D796:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806D79C
sub_0806D79C: @ 0x0806D79C
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4, #0x20]
	adds r0, #0x30
	adds r1, r2, #0
	bl sub_08087F3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D7C6
	adds r2, r4, #0
	adds r2, #0x68
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	b _0806D7C8
_0806D7C6:
	movs r0, #0
_0806D7C8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D7D0
sub_0806D7D0: @ 0x0806D7D0
	adds r0, #0x68
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D7DC
sub_0806D7DC: @ 0x0806D7DC
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806D7F4
	adds r2, r0, #0
	adds r2, #0x68
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #0x10
	b _0806D804
_0806D7F4:
	adds r2, r0, #0
	adds r2, #0x68
	ldrh r1, [r2]
	ldr r0, _0806D80C @ =0x0000FFFD
	ands r0, r1
	ldr r1, _0806D810 @ =0x0000FFEF
	ands r0, r1
	movs r1, #8
_0806D804:
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0806D80C: .4byte 0x0000FFFD
_0806D810: .4byte 0x0000FFEF

	thumb_func_start sub_0806D814
sub_0806D814: @ 0x0806D814
	ldr r1, [r1]
	str r1, [r0, #0x24]
	adds r0, #0x68
	ldrh r2, [r0]
	movs r1, #8
	orrs r1, r2
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0]
	bx lr

	thumb_func_start sub_0806D828
sub_0806D828: @ 0x0806D828
	ldr r1, [r1]
	str r1, [r0, #0x28]
	adds r0, #0x68
	ldrh r2, [r0]
	movs r1, #8
	orrs r1, r2
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0]
	bx lr

	thumb_func_start sub_0806D83C
sub_0806D83C: @ 0x0806D83C
	ldr r1, [r1]
	str r1, [r0, #0x2c]
	adds r0, #0x68
	ldrh r2, [r0]
	movs r1, #8
	orrs r1, r2
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0]
	bx lr

	thumb_func_start sub_0806D850
sub_0806D850: @ 0x0806D850
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806D854
sub_0806D854: @ 0x0806D854
	adds r0, #0x68
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_0806D860
sub_0806D860: @ 0x0806D860
	ldr r1, [r1, #0x24]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D868
sub_0806D868: @ 0x0806D868
	ldr r1, [r1, #0x28]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D870
sub_0806D870: @ 0x0806D870
	ldr r1, [r1, #0x2c]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D878
sub_0806D878: @ 0x0806D878
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x68
	ldrh r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806D8A6
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r5, #0x20]
	adds r2, r5, #0
	adds r2, #0x24
	adds r3, r5, #0
	adds r3, #0x28
	bl sub_08088044
	ldrh r1, [r6]
	ldr r0, _0806D8E4 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r6]
_0806D8A6:
	ldrh r1, [r6]
	movs r0, #0x12
	ands r0, r1
	cmp r0, #0x12
	bne _0806D8DC
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r5, #0x20]
	adds r2, r5, #0
	adds r2, #0x30
	adds r3, r5, #0
	adds r3, #0x44
	adds r4, r5, #0
	adds r4, #0x58
	str r4, [sp]
	subs r4, #0x2c
	str r4, [sp, #4]
	subs r4, #8
	str r4, [sp, #8]
	adds r4, #4
	str r4, [sp, #0xc]
	bl sub_080881AC
	ldrh r1, [r6]
	ldr r0, _0806D8E8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r6]
_0806D8DC:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D8E4: .4byte 0x0000FFF7
_0806D8E8: .4byte 0x0000FFEF

	thumb_func_start sub_0806D8EC
sub_0806D8EC: @ 0x0806D8EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806D990 @ =0x09F7FD18
	str r0, [r7, #0x1c]
	movs r4, #0
	strh r4, [r7, #0x24]
	strh r4, [r7, #0x26]
	strh r4, [r7, #0x2c]
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r7, #0x30]
	strh r5, [r7, #0x32]
	adds r0, r7, #0
	adds r0, #0x38
	bl sub_080887B0
	adds r0, r7, #0
	adds r0, #0x54
	bl sub_0806D548
	adds r0, r7, #0
	adds r0, #0x68
	bl sub_0806D478
	adds r0, r7, #0
	adds r0, #0x74
	bl sub_08088628
	adds r0, r7, #0
	adds r0, #0x7c
	bl sub_080888B4
	strh r4, [r7, #0x20]
	add r0, sp, #0x28
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x28]
	str r0, [r7, #0x24]
	str r4, [r7, #0x28]
	ldr r0, _0806D994 @ =0xFFFF0000
	ands r6, r0
	str r6, [r7, #0x2c]
	add r0, sp, #0x2c
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x2c]
	str r0, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x34
	movs r0, #2
	strb r0, [r1]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806D998 @ =0x09F44FF0
	ldr r0, _0806D99C @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0806D9A0 @ =gUnknown_080FFE6C
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
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806D990: .4byte 0x09F7FD18
_0806D994: .4byte 0xFFFF0000
_0806D998: .4byte 0x09F44FF0
_0806D99C: .4byte 0x09F7ED20
_0806D9A0: .4byte gUnknown_080FFE6C

	thumb_func_start sub_0806D9A4
sub_0806D9A4: @ 0x0806D9A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806D9F0 @ =0x09F7FD18
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x7c
	movs r1, #2
	bl sub_080888D4
	adds r0, r5, #0
	adds r0, #0x74
	movs r1, #2
	bl sub_08088638
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r5, #0
	adds r0, #0x54
	movs r1, #2
	bl sub_0806D580
	adds r0, r5, #0
	adds r0, #0x38
	movs r1, #2
	bl sub_080887CC
	adds r0, r5, #0
	adds r1, r4, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D9F0: .4byte 0x09F7FD18

	thumb_func_start sub_0806D9F4
sub_0806D9F4: @ 0x0806D9F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	mov sl, r1
	mov r8, r2
	mov sb, r3
	adds r7, r6, #0
	adds r7, #0x34
	ldrb r1, [r7]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7]
	ldr r0, [r6, #0x50]
	str r0, [sp]
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_080887B0
	adds r1, r6, #0
	adds r1, #0x38
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [sp]
	str r0, [r6, #0x50]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080887CC
	ldr r0, [r6, #0x70]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806D478
	adds r1, r6, #0
	adds r1, #0x68
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [sp]
	str r0, [r6, #0x70]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806D4B0
	ldr r0, [r6, #0x78]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08088628
	adds r1, r6, #0
	adds r1, #0x74
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r6, #0x78]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088638
	adds r0, r6, #0
	adds r0, #0x38
	mov r1, sl
	bl sub_080887EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DAC8
	adds r0, r6, #0
	adds r0, #0x54
	mov r1, r8
	bl sub_0806D5AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DAC8
	adds r0, r6, #0
	adds r0, #0x68
	mov r1, sb
	bl sub_0806D4D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DAC8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0806DADC
	ldrb r0, [r7]
	movs r1, #1
	orrs r0, r1
	strb r0, [r7]
	movs r0, #1
	b _0806DACA
_0806DAC8:
	movs r0, #0
_0806DACA:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806DADC
sub_0806DADC: @ 0x0806DADC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0x20]
	ldr r0, [r5, #0x78]
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0x38
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_08088830
	adds r1, r5, #0
	adds r1, #0x74
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r5, #0x78]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088638
	adds r0, r5, #0
	adds r0, #0x7c
	adds r1, r5, #0
	adds r1, #0x74
	adds r2, r5, #0
	adds r2, #0x54
	adds r3, r5, #0
	adds r3, #0x68
	bl sub_08088900
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806DB2C
sub_0806DB2C: @ 0x0806DB2C
	adds r0, #0x34
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DB38
sub_0806DB38: @ 0x0806DB38
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806DB4E
	adds r2, r0, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0806DB58
_0806DB4E:
	adds r2, r0, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0806DB58:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806DB60
sub_0806DB60: @ 0x0806DB60
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r0, #0x20]
	cmp r1, r2
	beq _0806DB70
	bl sub_0806DADC
_0806DB70:
	pop {r0}
	bx r0

	thumb_func_start sub_0806DB74
sub_0806DB74: @ 0x0806DB74
	ldr r1, [r1]
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DB7C
sub_0806DB7C: @ 0x0806DB7C
	str r1, [r0, #0x28]
	bx lr

	thumb_func_start sub_0806DB80
sub_0806DB80: @ 0x0806DB80
	ldr r1, [r1]
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DB88
sub_0806DB88: @ 0x0806DB88
	ldr r1, [r1]
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DB90
sub_0806DB90: @ 0x0806DB90
	adds r0, #0x34
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_0806DB9C
sub_0806DB9C: @ 0x0806DB9C
	push {lr}
	adds r0, #0x38
	bl sub_0808882C
	pop {r1}
	bx r1

	thumb_func_start sub_0806DBA8
sub_0806DBA8: @ 0x0806DBA8
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806DBAC
sub_0806DBAC: @ 0x0806DBAC
	ldr r1, [r1, #0x24]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DBB4
sub_0806DBB4: @ 0x0806DBB4
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0806DBB8
sub_0806DBB8: @ 0x0806DBB8
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0806DBBC
sub_0806DBBC: @ 0x0806DBBC
	ldr r1, [r1, #0x30]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DBC4
sub_0806DBC4: @ 0x0806DBC4
	push {lr}
	adds r0, #0x74
	bl sub_08088660
	pop {r1}
	bx r1

	thumb_func_start sub_0806DBD0
sub_0806DBD0: @ 0x0806DBD0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x74
	bl sub_08088678
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806DBE4
sub_0806DBE4: @ 0x0806DBE4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x74
	bl sub_080886D8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806DBF8
sub_0806DBF8: @ 0x0806DBF8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DC70
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DC70
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0806DC5A
	movs r0, #0x80
	lsls r0, r0, #1
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r1, r0
	bne _0806DC5A
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r0, r1
	bne _0806DC5A
	adds r0, r4, #0
	adds r0, #0x7c
	adds r1, r4, #0
	adds r1, #0x24
	ldr r2, [r4, #0x28]
	bl sub_08088930
	b _0806DC70
_0806DC5A:
	adds r0, r4, #0
	adds r0, #0x7c
	adds r1, r4, #0
	adds r1, #0x24
	ldr r2, [r4, #0x28]
	adds r3, r4, #0
	adds r3, #0x2c
	adds r4, #0x30
	str r4, [sp]
	bl sub_080889F0
_0806DC70:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806DC78
sub_0806DC78: @ 0x0806DC78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806DD34 @ =0x09F7FE10
	str r0, [r7, #0x1c]
	movs r4, #0
	strh r4, [r7, #0x28]
	strh r4, [r7, #0x2a]
	strh r4, [r7, #0x30]
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r7, #0x34]
	strh r5, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x3c
	bl sub_080887B0
	adds r0, r7, #0
	adds r0, #0x58
	bl sub_0806D548
	adds r0, r7, #0
	adds r0, #0x6c
	bl sub_0806D478
	adds r0, r7, #0
	adds r0, #0x78
	bl sub_080886E0
	adds r0, r7, #0
	adds r0, #0x80
	bl sub_08088628
	adds r0, r7, #0
	adds r0, #0x90
	bl sub_080888B4
	strh r4, [r7, #0x20]
	movs r0, #1
	strh r0, [r7, #0x22]
	strh r4, [r7, #0x24]
	add r0, sp, #0x28
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x28]
	str r0, [r7, #0x28]
	str r4, [r7, #0x2c]
	ldr r0, _0806DD38 @ =0xFFFF0000
	ands r6, r0
	str r6, [r7, #0x30]
	add r0, sp, #0x2c
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x2c]
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x88
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806DD3C @ =0x09F44FF0
	ldr r0, _0806DD40 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0806DD44 @ =gUnknown_080FFF9C
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
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806DD34: .4byte 0x09F7FE10
_0806DD38: .4byte 0xFFFF0000
_0806DD3C: .4byte 0x09F44FF0
_0806DD40: .4byte 0x09F7ED20
_0806DD44: .4byte gUnknown_080FFF9C

	thumb_func_start sub_0806DD48
sub_0806DD48: @ 0x0806DD48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806DD9C @ =0x09F7FE10
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x90
	movs r1, #2
	bl sub_080888D4
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #2
	bl sub_08088638
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #2
	bl sub_080886F0
	adds r0, r5, #0
	adds r0, #0x6c
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #2
	bl sub_0806D580
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #2
	bl sub_080887CC
	adds r0, r5, #0
	adds r1, r4, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806DD9C: .4byte 0x09F7FE10

	thumb_func_start sub_0806DDA0
sub_0806DDA0: @ 0x0806DDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	str r3, [sp, #0x20]
	adds r6, r7, #0
	adds r6, #0x38
	ldrb r1, [r6]
	movs r0, #0xfe
	ands r0, r1
	movs r1, #0
	mov sl, r1
	strb r0, [r6]
	ldr r0, [r7, #0x54]
	str r0, [sp]
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_080887B0
	adds r1, r7, #0
	adds r1, #0x3c
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [sp]
	str r0, [r7, #0x54]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080887CC
	ldr r0, [r7, #0x74]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806D478
	adds r1, r7, #0
	adds r1, #0x6c
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [sp]
	str r0, [r7, #0x74]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806D4B0
	ldr r0, [r7, #0x7c]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_080886E0
	adds r1, r7, #0
	adds r1, #0x78
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r7, #0x7c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080886F0
	adds r5, r7, #0
	adds r5, #0x84
	ldr r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08088628
	adds r1, r7, #0
	adds r1, #0x80
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088638
	adds r0, r7, #0
	adds r0, #0x88
	mov r5, sl
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	subs r0, #0x50
	mov r1, r8
	bl sub_080887EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DEA6
	adds r0, r7, #0
	adds r0, #0x58
	mov r1, sb
	bl sub_0806D5AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DEA6
	adds r0, r7, #0
	adds r0, #0x6c
	ldr r1, [sp, #0x20]
	bl sub_0806D4D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DEA6
	adds r0, r7, #0
	movs r1, #0
	bl sub_0806E098
	ldrb r0, [r6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #1
	b _0806DEA8
_0806DEA6:
	movs r0, #0
_0806DEA8:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806DEB8
sub_0806DEB8: @ 0x0806DEB8
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DEC4
sub_0806DEC4: @ 0x0806DEC4
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806DEDA
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0806DEE4
_0806DEDA:
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0806DEE4:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806DEEC
sub_0806DEEC: @ 0x0806DEEC
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r0, #0x20]
	cmp r1, r2
	beq _0806DEFC
	bl sub_0806E098
_0806DEFC:
	pop {r0}
	bx r0

	thumb_func_start sub_0806DF00
sub_0806DF00: @ 0x0806DF00
	strh r1, [r0, #0x22]
	bx lr

	thumb_func_start sub_0806DF04
sub_0806DF04: @ 0x0806DF04
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806DF1A
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	b _0806DF24
_0806DF1A:
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_0806DF24:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806DF2C
sub_0806DF2C: @ 0x0806DF2C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x24]
	cmp r1, r0
	beq _0806DF42
	adds r0, r4, #0
	bl sub_0806E0FC
	adds r0, r4, #0
	bl sub_0806E150
_0806DF42:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806DF48
sub_0806DF48: @ 0x0806DF48
	ldr r1, [r1]
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DF50
sub_0806DF50: @ 0x0806DF50
	str r1, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0806DF54
sub_0806DF54: @ 0x0806DF54
	ldr r1, [r1]
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DF5C
sub_0806DF5C: @ 0x0806DF5C
	ldr r1, [r1]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DF64
sub_0806DF64: @ 0x0806DF64
	adds r0, #0x38
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_0806DF70
sub_0806DF70: @ 0x0806DF70
	push {lr}
	adds r0, #0x3c
	bl sub_08088870
	pop {r1}
	bx r1

	thumb_func_start sub_0806DF7C
sub_0806DF7C: @ 0x0806DF7C
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806DF80
sub_0806DF80: @ 0x0806DF80
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DF88
sub_0806DF88: @ 0x0806DF88
	adds r0, #0x38
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_0806DF94
sub_0806DF94: @ 0x0806DF94
	ldrh r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0806DF98
sub_0806DF98: @ 0x0806DF98
	push {lr}
	adds r0, #0x78
	bl sub_08088718
	pop {r1}
	bx r1

	thumb_func_start sub_0806DFA4
sub_0806DFA4: @ 0x0806DFA4
	ldr r1, [r1, #0x28]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DFAC
sub_0806DFAC: @ 0x0806DFAC
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0806DFB0
sub_0806DFB0: @ 0x0806DFB0
	ldr r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_0806DFB4
sub_0806DFB4: @ 0x0806DFB4
	ldr r1, [r1, #0x34]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806DFBC
sub_0806DFBC: @ 0x0806DFBC
	push {lr}
	adds r0, #0x80
	bl sub_08088660
	pop {r1}
	bx r1

	thumb_func_start sub_0806DFC8
sub_0806DFC8: @ 0x0806DFC8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x80
	bl sub_08088678
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806DFDC
sub_0806DFDC: @ 0x0806DFDC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x80
	bl sub_080886D8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806DFF0
sub_0806DFF0: @ 0x0806DFF0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E08E
	ldr r1, [r5, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E08E
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _0806E08E
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0806E05C
	movs r0, #0x80
	lsls r0, r0, #1
	movs r2, #0x34
	ldrsh r1, [r5, r2]
	cmp r1, r0
	bne _0806E05C
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	cmp r0, r1
	bne _0806E05C
	adds r0, r5, #0
	adds r0, #0x90
	adds r1, r5, #0
	adds r1, #0x28
	ldr r2, [r5, #0x2c]
	bl sub_08088930
	b _0806E074
_0806E05C:
	adds r0, r5, #0
	adds r0, #0x90
	adds r1, r5, #0
	adds r1, #0x28
	ldr r2, [r5, #0x2c]
	adds r3, r5, #0
	adds r3, #0x30
	adds r4, r5, #0
	adds r4, #0x34
	str r4, [sp]
	bl sub_080889F0
_0806E074:
	ldrh r4, [r5, #0x24]
	movs r0, #0x22
	ldrsh r1, [r5, r0]
	adds r1, r4, r1
	adds r0, r5, #0
	bl sub_0806E0FC
	ldrh r0, [r5, #0x24]
	cmp r0, r4
	beq _0806E08E
	adds r0, r5, #0
	bl sub_0806E150
_0806E08E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E098
sub_0806E098: @ 0x0806E098
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r7, r5, #0
	adds r7, #0x3c
	adds r0, r7, #0
	bl sub_08088870
	cmp r6, r0
	bge _0806E0F2
	movs r1, #0
	strh r6, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x88
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldr r0, [r5, #0x7c]
	str r0, [sp]
	add r4, sp, #4
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08088874
	adds r1, r5, #0
	adds r1, #0x78
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r5, #0x7c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080886F0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806E0FC
	adds r0, r5, #0
	bl sub_0806E150
_0806E0F2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E0FC
sub_0806E0FC: @ 0x0806E0FC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r5, r4
	blt _0806E146
	cmp r4, #0
	bgt _0806E120
	movs r5, #0
	b _0806E146
_0806E120:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E144
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08090F80
	adds r5, r0, #0
	b _0806E146
_0806E144:
	adds r5, r4, #0
_0806E146:
	strh r5, [r6, #0x24]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E150
sub_0806E150: @ 0x0806E150
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r0, #0x78
	ldrh r1, [r6, #0x24]
	bl sub_0808875C
	adds r2, r0, #0
	movs r0, #0x8c
	adds r0, r0, r6
	mov r8, r0
	str r2, [r0]
	adds r7, r6, #0
	adds r7, #0x88
	ldr r0, [r7]
	cmp r2, r0
	beq _0806E1B6
	adds r5, r6, #0
	adds r5, #0x84
	ldr r0, [r5]
	str r0, [sp]
	adds r1, r6, #0
	adds r1, #0x3c
	ldrh r2, [r2, #2]
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_08088830
	adds r1, r6, #0
	adds r1, #0x80
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088638
	adds r0, r6, #0
	adds r0, #0x90
	adds r1, r6, #0
	adds r1, #0x80
	adds r2, r6, #0
	adds r2, #0x58
	adds r3, r6, #0
	adds r3, #0x6c
	bl sub_08088900
_0806E1B6:
	mov r1, r8
	ldr r0, [r1]
	str r0, [r7]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806E1C8
sub_0806E1C8: @ 0x0806E1C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	add r6, sp, #0xc
_0806E1D4:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F80
	adds r2, r5, #0
	adds r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	mov r3, sp
	adds r1, r3, r2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F7C
	adds r4, r0, #0
	cmp r4, #0
	bgt _0806E1D4
	adds r0, r6, #0
	bl sub_0806E274
	adds r2, r5, #0
	cmp r2, #0
	beq _0806E21C
_0806E204:
	subs r4, r2, #1
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r1, #0xcb
	adds r0, r6, #0
	bl sub_0806E34C
	lsls r4, r4, #0x18
	lsrs r2, r4, #0x18
	cmp r2, #0
	bne _0806E204
_0806E21C:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806E2B8
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E238
sub_0806E238: @ 0x0806E238
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	movs r2, #0
	cmp r2, r1
	bge _0806E260
	ldrh r0, [r4]
	ldr r3, _0806E270 @ =0x0000FFFF
	cmp r0, r3
	beq _0806E260
	adds r5, r3, #0
	adds r3, r4, #0
_0806E252:
	adds r3, #2
	adds r2, #1
	cmp r2, r1
	bge _0806E260
	ldrh r0, [r3]
	cmp r0, r5
	bne _0806E252
_0806E260:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806E288
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806E270: .4byte 0x0000FFFF

	thumb_func_start sub_0806E274
sub_0806E274: @ 0x0806E274
	ldr r1, _0806E284 @ =0x09F7FF40
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_0806E284: .4byte 0x09F7FF40

	thumb_func_start sub_0806E288
sub_0806E288: @ 0x0806E288
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _0806E2B4 @ =0x09F7FF40
	str r0, [r4, #8]
	lsls r0, r5, #1
	bl __builtin_vec_new
	str r0, [r4]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0806E454
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806E2B4: .4byte 0x09F7FF40

	thumb_func_start sub_0806E2B8
sub_0806E2B8: @ 0x0806E2B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806E2E4 @ =0x09F7FF40
	str r0, [r5, #8]
	ldrh r0, [r4, #6]
	lsls r0, r0, #1
	bl __builtin_vec_new
	str r0, [r5]
	ldrh r0, [r4, #6]
	strh r0, [r5, #4]
	ldr r1, [r4]
	ldrh r2, [r4, #6]
	adds r0, r5, #0
	bl sub_0806E454
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806E2E4: .4byte 0x09F7FF40

	thumb_func_start sub_0806E2E8
sub_0806E2E8: @ 0x0806E2E8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4, #6]
	bl sub_0806E418
	ldr r1, [r4]
	ldrh r2, [r4, #6]
	adds r0, r5, #0
	bl sub_0806E454
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E308
sub_0806E308: @ 0x0806E308
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E330 @ =0x09F7FF40
	str r0, [r4, #8]
	ldr r0, [r4]
	cmp r0, #0
	beq _0806E31C
	bl __builtin_vec_delete
_0806E31C:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0806E32A
	adds r0, r4, #0
	bl __builtin_delete
_0806E32A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E330: .4byte 0x09F7FF40

	thumb_func_start sub_0806E334
sub_0806E334: @ 0x0806E334
	lsls r1, r1, #1
	ldr r0, [r0]
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_0806E33C
sub_0806E33C: @ 0x0806E33C
	lsls r1, r1, #1
	ldr r0, [r0]
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_0806E344
sub_0806E344: @ 0x0806E344
	movs r1, #0
	strh r1, [r0, #6]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806E34C
sub_0806E34C: @ 0x0806E34C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldrh r1, [r4, #6]
	adds r1, #1
	bl sub_0806E418
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	ldr r1, [r4]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	strh r5, [r0]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E374
sub_0806E374: @ 0x0806E374
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r1, [r4, #6]
	ldrh r0, [r5, #6]
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806E418
	movs r3, #0
	ldrh r0, [r5, #6]
	cmp r3, r0
	bge _0806E3AC
	ldr r6, [r4]
	ldr r2, [r5]
_0806E392:
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r6
	ldrh r1, [r2]
	strh r1, [r0]
	adds r2, #2
	adds r3, #1
	ldrh r0, [r5, #6]
	cmp r3, r0
	blt _0806E392
_0806E3AC:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E3B4
sub_0806E3B4: @ 0x0806E3B4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	ldrh r1, [r7, #6]
	ldrh r0, [r4, #6]
	adds r1, r1, r0
	adds r0, r7, #0
	bl sub_0806E418
	ldrh r0, [r7, #6]
	subs r2, r0, #1
	cmp r2, r6
	blt _0806E3EC
	ldr r5, [r7]
	lsls r0, r2, #1
	adds r3, r0, r5
_0806E3D6:
	ldrh r0, [r4, #6]
	adds r0, r6, r0
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r3]
	strh r1, [r0]
	subs r3, #2
	subs r2, #1
	cmp r2, r6
	bge _0806E3D6
_0806E3EC:
	movs r3, #0
	ldrh r0, [r4, #6]
	cmp r3, r0
	bge _0806E40C
	ldr r1, [r7]
	ldr r2, [r4]
	lsls r0, r6, #1
	adds r1, r0, r1
_0806E3FC:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	ldrh r0, [r4, #6]
	cmp r3, r0
	blt _0806E3FC
_0806E40C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E414
sub_0806E414: @ 0x0806E414
	ldrh r0, [r0, #6]
	bx lr

	thumb_func_start sub_0806E418
sub_0806E418: @ 0x0806E418
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r5, #4]
	cmp r0, r4
	bge _0806E44E
	lsls r0, r0, #1
	cmp r0, r4
	bge _0806E42C
	adds r0, r4, #0
_0806E42C:
	adds r4, r0, #0
	ldr r6, [r5]
	lsls r0, r4, #1
	bl __builtin_vec_new
	str r0, [r5]
	strh r4, [r5, #4]
	ldrh r2, [r5, #6]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0806E454
	cmp r6, #0
	beq _0806E44E
	adds r0, r6, #0
	bl __builtin_vec_delete
_0806E44E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806E454
sub_0806E454: @ 0x0806E454
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	movs r0, #0
	strh r0, [r3, #6]
	cmp r0, r2
	bge _0806E47A
	ldr r4, [r3]
_0806E464:
	lsls r0, r0, #1
	adds r1, r0, r4
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r3, #6]
	adds r0, #1
	strh r0, [r3, #6]
	ldrh r0, [r3, #6]
	cmp r0, r2
	blt _0806E464
_0806E47A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806E480
sub_0806E480: @ 0x0806E480
	ldr r0, _0806E484 @ =gUnknown_02001E58
	bx lr
	.align 2, 0
_0806E484: .4byte gUnknown_02001E58

	thumb_func_start sub_0806E488
sub_0806E488: @ 0x0806E488
	push {r4, lr}
	ldr r1, _0806E4B0 @ =gUnknown_02001E64
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806E4A4
	ldr r4, _0806E4B4 @ =gUnknown_02001E68
	movs r0, #0xa4
	bl __builtin_new
	bl sub_0806E50C
	str r0, [r4]
_0806E4A4:
	ldr r0, _0806E4B4 @ =gUnknown_02001E68
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806E4B0: .4byte gUnknown_02001E64
_0806E4B4: .4byte gUnknown_02001E68

	thumb_func_start sub_0806E4B8
sub_0806E4B8: @ 0x0806E4B8
	ldr r0, _0806E4C0 @ =gUnknown_02001E68
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806E4C0: .4byte gUnknown_02001E68

	thumb_func_start sub_0806E4C4
sub_0806E4C4: @ 0x0806E4C4
	push {r4, r5, lr}
	ldr r1, _0806E4F8 @ =gUnknown_02001E64
	ldr r0, [r1]
	cmp r0, #0
	ble _0806E4F0
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806E4F0
	ldr r5, _0806E4FC @ =gUnknown_02001E68
	ldr r2, [r5]
	cmp r2, #0
	beq _0806E4EE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806E4EE:
	str r4, [r5]
_0806E4F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E4F8: .4byte gUnknown_02001E64
_0806E4FC: .4byte gUnknown_02001E68

	thumb_func_start sub_0806E500
sub_0806E500: @ 0x0806E500
	push {lr}
	bl sub_0806E480
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E50C
sub_0806E50C: @ 0x0806E50C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806E608 @ =0x09F7FF50
	str r0, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0x20
	movs r0, #0xf
	add r3, sp, #0x28
	add r1, sp, #0x2c
	mov ip, r1
	add r1, sp, #0x34
	mov sl, r1
	movs r1, #1
	rsbs r1, r1, #0
_0806E536:
	subs r0, #1
	cmp r0, r1
	bne _0806E536
	movs r0, #0
	str r0, [r2]
	movs r0, #0x20
	adds r0, r0, r7
	mov sb, r0
	adds r5, r3, #0
	movs r4, #0
	movs r6, #0xf
	add r1, sp, #0x28
	mov r8, r1
_0806E550:
	mov r0, r8
	strb r4, [r0]
	strb r4, [r5, #1]
	strb r4, [r5, #2]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r1, ip
	strh r4, [r1, #4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r0, [r7, #0x20]
	adds r3, r0, #1
	cmp r3, #0x10
	bgt _0806E576
	lsls r0, r0, #3
	add r0, sb
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r7, #0x20]
_0806E576:
	subs r6, #1
	cmp r6, #0
	bge _0806E550
	bl sub_0806B040
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	add r0, sp, #0x34
	strh r1, [r0]
	mov r0, sl
	strh r1, [r0, #2]
	adds r0, r4, #0
	movs r1, #0
	mov r2, sl
	bl sub_0806B2CC
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0806BACC
	adds r0, r7, #0
	bl sub_0806E640
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806E60C @ =0x09F44FF0
	ldr r0, _0806E610 @ =0x09F7ECA0
	str r0, [sp, #0x20]
	ldr r0, _0806E614 @ =gUnknown_0810019C
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
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806E608: .4byte 0x09F7FF50
_0806E60C: .4byte 0x09F44FF0
_0806E610: .4byte 0x09F7ECA0
_0806E614: .4byte gUnknown_0810019C

	thumb_func_start sub_0806E618
sub_0806E618: @ 0x0806E618
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E63C @ =0x09F7FF50
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806E640
	bl sub_0806B07C
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E63C: .4byte 0x09F7FF50

	thumb_func_start sub_0806E640
sub_0806E640: @ 0x0806E640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_0806B070
	mov r8, r0
	movs r1, #0
	bl sub_0806B95C
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_0806B680
	adds r5, r0, #0
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_0806B828
	adds r4, r0, #0
	mov r0, r8
	movs r1, #0
	bl sub_0806B744
	adds r1, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r3, _0806E6D0 @ =0x040000D4
	add r7, sp, #4
	ldr r2, _0806E6D4 @ =0x85000008
	mov ip, r2
_0806E68C:
	adds r6, r0, #0
	adds r6, #8
	movs r2, #0xf8
_0806E692:
	mov r0, sl
	str r0, [sp, #4]
	str r7, [r3]
	str r4, [r3, #4]
	mov r0, ip
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r0, sb
	orrs r0, r1
	strh r0, [r5]
	adds r5, #2
	adds r4, #0x20
	adds r1, #1
	subs r2, #8
	cmp r2, #0
	bge _0806E692
	adds r0, r6, #0
	cmp r0, #0xaf
	ble _0806E68C
	mov r0, r8
	movs r1, #0
	bl sub_0806B3F4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E6D0: .4byte 0x040000D4
_0806E6D4: .4byte 0x85000008

	thumb_func_start sub_0806E6D8
sub_0806E6D8: @ 0x0806E6D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r4, #1
	ldr r0, [r5, #0x20]
	cmp r4, r0
	bge _0806E71A
	ldr r6, _0806E70C @ =0x00FFFFFF
	ldr r1, [r7]
	ands r1, r6
	adds r2, r5, #0
	adds r2, #0x2c
_0806E6F0:
	movs r3, #0
	ldr r0, [r2]
	ands r0, r6
	cmp r0, r1
	bne _0806E6FC
	movs r3, #1
_0806E6FC:
	cmp r3, #0
	beq _0806E710
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	b _0806E746
	.align 2, 0
_0806E70C: .4byte 0x00FFFFFF
_0806E710:
	adds r2, #8
	adds r4, #1
	ldr r0, [r5, #0x20]
	cmp r4, r0
	blt _0806E6F0
_0806E71A:
	movs r3, #1
	ldr r0, [r5, #0x20]
	cmp r3, r0
	bge _0806E744
	movs r1, #1
	adds r2, r5, #0
	adds r2, #0x2c
	adds r4, r0, #0
_0806E72A:
	ldrh r0, [r2, #4]
	cmp r0, #0
	bne _0806E73C
	ldr r0, [r7]
	str r0, [r2]
	strh r1, [r2, #4]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	b _0806E746
_0806E73C:
	adds r2, #8
	adds r3, #1
	cmp r3, r4
	blt _0806E72A
_0806E744:
	movs r0, #0x10
_0806E746:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E74C
sub_0806E74C: @ 0x0806E74C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	movs r5, #1
	ldr r0, [r0, #0x20]
	cmp r5, r0
	bge _0806E7A4
	ldr r0, _0806E794 @ =0x00FFFFFF
	mov ip, r0
	ldr r4, [r1]
	ands r4, r0
	mov r1, sp
	movs r7, #0
	mov r2, r8
	adds r2, #0x2c
_0806E76E:
	movs r3, #0
	ldr r0, [r2]
	mov r6, ip
	ands r0, r6
	cmp r0, r4
	bne _0806E77C
	movs r3, #1
_0806E77C:
	cmp r3, #0
	beq _0806E798
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	ldr r0, [sp]
	str r0, [r2]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	movs r0, #1
	b _0806E7A6
	.align 2, 0
_0806E794: .4byte 0x00FFFFFF
_0806E798:
	adds r2, #8
	adds r5, #1
	mov r3, r8
	ldr r0, [r3, #0x20]
	cmp r5, r0
	blt _0806E76E
_0806E7A4:
	movs r0, #0
_0806E7A6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E7B4
sub_0806E7B4: @ 0x0806E7B4
	push {r4, r5, lr}
	sub sp, #0x24
	movs r4, #0
	ldr r1, [r0, #0x20]
	cmp r4, r1
	bge _0806E7E8
	adds r5, r1, #0
	add r3, sp, #4
	adds r2, r0, #0
	adds r2, #0x24
_0806E7C8:
	ldrb r0, [r2]
	lsrs r0, r0, #3
	ldrb r1, [r2, #1]
	lsrs r1, r1, #3
	lsls r1, r1, #5
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsrs r1, r1, #3
	lsls r1, r1, #0xa
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	adds r2, #8
	adds r4, #1
	cmp r4, r5
	blt _0806E7C8
_0806E7E8:
	bl sub_0806B070
	add r1, sp, #4
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806B970
	add sp, #0x24
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E804
sub_0806E804: @ 0x0806E804
	push {r4, lr}
	ldr r4, _0806E818 @ =gUnknown_02001E58
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806E81C @ =0x09F7FFC8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E818: .4byte gUnknown_02001E58
_0806E81C: .4byte 0x09F7FFC8

	thumb_func_start sub_0806E820
sub_0806E820: @ 0x0806E820
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806E8AC @ =0x09F7FFE0
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	bl sub_08088E18
	adds r0, r7, #0
	adds r0, #0x2c
	bl sub_0806E274
	movs r4, #0
	movs r0, #0
	strh r0, [r7, #0x38]
	strh r0, [r7, #0x3a]
	adds r1, r7, #0
	adds r1, #0x44
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r7, #0
	adds r0, #0x4c
	bl sub_08088ED4
	add r0, sp, #0x28
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	ldr r0, [sp, #0x28]
	str r0, [r7, #0x3c]
	adds r0, r7, #0
	adds r0, #0x40
	strb r4, [r0]
	adds r0, #8
	strb r4, [r0]
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #2
	strb r0, [r1]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806E8B0 @ =0x09F44FF0
	ldr r0, _0806E8B4 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0806E8B8 @ =gUnknown_081002E4
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
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806E8AC: .4byte 0x09F7FFE0
_0806E8B0: .4byte 0x09F44FF0
_0806E8B4: .4byte 0x09F7ED20
_0806E8B8: .4byte gUnknown_081002E4

	thumb_func_start sub_0806E8BC
sub_0806E8BC: @ 0x0806E8BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E908 @ =0x09F7FFE0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806E93C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E8DA
	adds r0, r4, #0
	bl sub_0806EAC8
_0806E8DA:
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #2
	bl sub_08088EE0
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #2
	bl sub_08088E2C
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E908: .4byte 0x09F7FFE0

	thumb_func_start sub_0806E90C
sub_0806E90C: @ 0x0806E90C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x49
	ldrb r4, [r5]
	movs r3, #0xfe
	ands r3, r4
	strb r3, [r5]
	adds r0, #0x20
	bl sub_08088E4C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E934
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	b _0806E936
_0806E934:
	movs r0, #0
_0806E936:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E93C
sub_0806E93C: @ 0x0806E93C
	adds r0, #0x49
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0806E948
sub_0806E948: @ 0x0806E948
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806E960
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #8
	b _0806E970
_0806E960:
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xf7
	ands r0, r1
	movs r1, #4
_0806E970:
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start sub_0806E978
sub_0806E978: @ 0x0806E978
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	bl sub_0806E2E8
	adds r4, #0x49
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E998
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
_0806E998:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E9A0
sub_0806E9A0: @ 0x0806E9A0
	push {lr}
	ldr r1, [r1]
	str r1, [r0, #0x38]
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E9BE
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806E9BE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E9C4
sub_0806E9C4: @ 0x0806E9C4
	push {lr}
	ldr r1, [r1]
	str r1, [r0, #0x3c]
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E9E2
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806E9E2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E9E8
sub_0806E9E8: @ 0x0806E9E8
	push {lr}
	adds r2, r0, #0
	adds r2, #0x40
	strb r1, [r2]
	adds r2, #9
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806EA06
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806EA06:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806EA0C
sub_0806EA0C: @ 0x0806EA0C
	adds r0, #0x49
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_0806EA18
sub_0806EA18: @ 0x0806EA18
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x2c
	bl sub_0806E2B8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806EA2C
sub_0806EA2C: @ 0x0806EA2C
	ldr r1, [r1, #0x38]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EA34
sub_0806EA34: @ 0x0806EA34
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r1, #0x20
	mov r5, sp
	mov r0, sp
	bl sub_08088E58
	adds r0, r6, #0
	adds r0, #0x2c
	bl sub_0806E414
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r6, #0
	adds r2, #0x40
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	muls r0, r1, r0
	movs r2, #2
	ldrsh r1, [r5, r2]
	strh r0, [r4]
	strh r1, [r4, #2]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0806EA74
sub_0806EA74: @ 0x0806EA74
	ldr r1, [r1, #0x3c]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EA7C
sub_0806EA7C: @ 0x0806EA7C
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EA88
sub_0806EA88: @ 0x0806EA88
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x49
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806EAA8
	adds r0, r5, #0
	bl sub_0806EAC8
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_0806EAA8:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806EAC0
	adds r0, r5, #0
	bl sub_0806EB2C
	ldrb r1, [r4]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4]
_0806EAC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806EAC8
sub_0806EAC8: @ 0x0806EAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	str r0, [sp]
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r7, r0
	bge _0806EB18
	adds r6, r4, #0
	adds r6, #0x20
	mov r5, sp
_0806EAE4:
	adds r0, r4, #0
	adds r0, #0x4c
	adds r1, r6, #0
	mov r2, sp
	bl sub_08088F00
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_08088E58
	ldr r1, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	adds r7, #1
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r7, r0
	blt _0806EAE4
_0806EB18:
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #0
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806EB2C
sub_0806EB2C: @ 0x0806EB2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	str r0, [sp, #4]
	bl sub_0806E4B8
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r5, #0
	movs r0, #0x2c
	adds r0, r0, r4
	mov sl, r0
	mov r8, sl
	adds r7, r4, #0
	adds r7, #0x20
	add r6, sp, #4
	b _0806EBA6
_0806EB6E:
	mov r0, r8
	adds r1, r5, #0
	bl sub_0806E334
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x4c
	adds r1, r7, #0
	add r2, sp, #4
	mov r3, sb
	bl sub_08089178
	add r0, sp, #8
	adds r1, r7, #0
	bl sub_08088E58
	ldr r1, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	adds r5, #1
_0806EBA6:
	mov r0, r8
	bl sub_0806E414
	cmp r5, r0
	blt _0806EB6E
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x44]
	mov r0, sl
	bl sub_0806E414
	adds r1, r4, #0
	adds r1, #0x48
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806EBD0
sub_0806EBD0: @ 0x0806EBD0
	ldr r0, _0806EBD4 @ =gUnknown_02001E6C
	bx lr
	.align 2, 0
_0806EBD4: .4byte gUnknown_02001E6C

	thumb_func_start sub_0806EBD8
sub_0806EBD8: @ 0x0806EBD8
	push {r4, lr}
	ldr r1, _0806EC00 @ =gUnknown_02001E78
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806EBF4
	ldr r4, _0806EC04 @ =gUnknown_02001E7C
	movs r0, #0x38
	bl __builtin_new
	bl sub_0806EC5C
	str r0, [r4]
_0806EBF4:
	ldr r0, _0806EC04 @ =gUnknown_02001E7C
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806EC00: .4byte gUnknown_02001E78
_0806EC04: .4byte gUnknown_02001E7C

	thumb_func_start sub_0806EC08
sub_0806EC08: @ 0x0806EC08
	ldr r0, _0806EC10 @ =gUnknown_02001E7C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806EC10: .4byte gUnknown_02001E7C

	thumb_func_start sub_0806EC14
sub_0806EC14: @ 0x0806EC14
	push {r4, r5, lr}
	ldr r1, _0806EC48 @ =gUnknown_02001E78
	ldr r0, [r1]
	cmp r0, #0
	ble _0806EC40
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806EC40
	ldr r5, _0806EC4C @ =gUnknown_02001E7C
	ldr r2, [r5]
	cmp r2, #0
	beq _0806EC3E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806EC3E:
	str r4, [r5]
_0806EC40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806EC48: .4byte gUnknown_02001E78
_0806EC4C: .4byte gUnknown_02001E7C

	thumb_func_start sub_0806EC50
sub_0806EC50: @ 0x0806EC50
	push {lr}
	bl sub_0806EBD0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806EC5C
sub_0806EC5C: @ 0x0806EC5C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	bl __4Base
	ldr r0, _0806ECFC @ =0x09F800B0
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x30
	bl sub_0805D2A4
	movs r0, #0
	strh r0, [r6, #0x20]
	strh r0, [r6, #0x28]
	bl sub_0806B040
	adds r4, r0, #0
	mov r1, sp
	movs r5, #0x80
	lsls r5, r5, #1
	mov r0, sp
	strh r5, [r0]
	strh r5, [r1, #2]
	adds r0, r4, #0
	movs r1, #2
	mov r2, sp
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #2
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #2
	movs r2, #6
	bl sub_0806BACC
	add r2, sp, #4
	strh r5, [r2]
	strh r5, [r2, #2]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #3
	movs r2, #6
	bl sub_0806BACC
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806ECFC: .4byte 0x09F800B0

	thumb_func_start sub_0806ED00
sub_0806ED00: @ 0x0806ED00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806ED28 @ =0x09F800B0
	str r0, [r4, #0x1c]
	bl sub_0806B07C
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #2
	bl sub_0805D2B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806ED28: .4byte 0x09F800B0

	thumb_func_start sub_0806ED2C
sub_0806ED2C: @ 0x0806ED2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _0806ED84 @ =0x20736172
	cmp r1, r0
	bne _0806ED8C
	ldrh r0, [r2, #4]
	strh r0, [r4, #0x28]
	adds r0, r2, #0
	adds r0, #8
	str r0, [r4, #0x2c]
	ldrh r0, [r2, #6]
	strh r0, [r4, #0x20]
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x28]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	adds r2, #0x78
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r0]
	ldr r0, _0806ED88 @ =0x7361727E
	cmp r1, r0
	bne _0806ED8C
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r5, #0
	bl sub_0805D2D4
	b _0806ED8E
	.align 2, 0
_0806ED84: .4byte 0x20736172
_0806ED88: .4byte 0x7361727E
_0806ED8C:
	movs r0, #0
_0806ED8E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806ED94
sub_0806ED94: @ 0x0806ED94
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806ED98
sub_0806ED98: @ 0x0806ED98
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r0, #0x24]
	adds r0, r0, r2
	bx lr

	thumb_func_start sub_0806EDA4
sub_0806EDA4: @ 0x0806EDA4
	ldrh r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0806EDA8
sub_0806EDA8: @ 0x0806EDA8
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #4
	ldr r0, [r0, #0x2c]
	adds r0, r0, r2
	bx lr

	thumb_func_start sub_0806EDB4
sub_0806EDB4: @ 0x0806EDB4
	push {lr}
	adds r0, #0x30
	bl sub_0805D2DC
	pop {r1}
	bx r1

	thumb_func_start sub_0806EDC0
sub_0806EDC0: @ 0x0806EDC0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x30
	bl sub_0805D2F0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806EDD4
sub_0806EDD4: @ 0x0806EDD4
	push {r4, lr}
	ldr r4, _0806EDE8 @ =gUnknown_02001E6C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806EDEC @ =0x09F80150
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806EDE8: .4byte gUnknown_02001E6C
_0806EDEC: .4byte 0x09F80150

	thumb_func_start sub_0806EDF0
sub_0806EDF0: @ 0x0806EDF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	bl sub_080894BC
	ldr r0, _0806EE80 @ =0x09F80168
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x3c
	ldr r1, _0806EE84 @ =0x00000141
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806EE0C:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, r3
	bne _0806EE0C
	movs r4, #0
	strh r6, [r5, #0x2c]
	bl sub_0806EC08
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [r5, #0x30]
	ldrh r1, [r0, #8]
	strh r1, [r5, #0x34]
	ldrh r0, [r0, #0xa]
	strh r0, [r5, #0x36]
	strh r4, [r5, #0x38]
	movs r6, #0
_0806EE40:
	ldr r0, [r5, #0x30]
	lsls r4, r6, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	beq _0806EE62
	ldr r0, _0806EE88 @ =0x000004AC
	bl __builtin_new
	ldr r1, [r5, #0x30]
	adds r1, r1, r4
	ldrh r2, [r1]
	lsls r3, r6, #0x10
	lsrs r3, r3, #0x10
	adds r1, r5, #0
	bl sub_0806F030
_0806EE62:
	adds r6, #1
	cmp r6, #1
	ble _0806EE40
	bl get__10IrcManager
	ldr r1, _0806EE8C @ =gUnknown_0810056C
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r5, #0
	bl sub_08069A50__3IrcUiG5Intr2
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806EE80: .4byte 0x09F80168
_0806EE84: .4byte 0x00000141
_0806EE88: .4byte 0x000004AC
_0806EE8C: .4byte gUnknown_0810056C

	thumb_func_start sub_0806EE90
sub_0806EE90: @ 0x0806EE90
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0806EF04 @ =0x09F80168
	str r0, [r6, #0x1c]
	bl get__10IrcManager
	ldr r1, _0806EF08 @ =gUnknown_0810056C
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r6, #0
	bl sub_08069C84__3IrcUiG5Intr2
	ldr r1, _0806EF0C @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0806EF10 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0806EF14 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r0, r6, #0
	bl sub_0808959C
	adds r4, r0, #0
	cmp r4, #0
	beq _0806EEF6
_0806EECA:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _0806EEF0
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806EEF0:
	adds r4, r5, #0
	cmp r4, #0
	bne _0806EECA
_0806EEF6:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080894DC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EF04: .4byte 0x09F80168
_0806EF08: .4byte gUnknown_0810056C
_0806EF0C: .4byte 0x040000B0
_0806EF10: .4byte 0x0000C5FF
_0806EF14: .4byte 0x00007FFF

	thumb_func_start sub_0806EF18
sub_0806EF18: @ 0x0806EF18
	strh r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_0806EF1C
sub_0806EF1C: @ 0x0806EF1C
	strh r1, [r0, #0x36]
	bx lr

	thumb_func_start sub_0806EF20
sub_0806EF20: @ 0x0806EF20
	ldrh r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0806EF24
sub_0806EF24: @ 0x0806EF24
	ldrh r0, [r0, #0x34]
	bx lr

	thumb_func_start sub_0806EF28
sub_0806EF28: @ 0x0806EF28
	ldrh r0, [r0, #0x36]
	bx lr

	thumb_func_start sub_0806EF2C
sub_0806EF2C: @ 0x0806EF2C
	adds r0, #0x3c
	bx lr

	thumb_func_start sub_0806EF30
sub_0806EF30: @ 0x0806EF30
	adds r0, #0x3c
	bx lr

	thumb_func_start sub_0806EF34
sub_0806EF34: @ 0x0806EF34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0806A9A4
	adds r4, r0, #0
	movs r1, #1
	bl sub_0806AB98
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806AB9C
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806ABA0
	ldr r0, [r7, #0x30]
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	bl sub_0806ABA4
	ldr r0, [r7, #0x30]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	bl sub_0806ABA8
	adds r0, r4, #0
	movs r1, #0x33
	bl sub_0806ABB4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806ABC0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x3f
	bl sub_0806ABCC
	ldrh r3, [r7, #0x34]
	mov r2, sp
	movs r1, #0x78
	rsbs r1, r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r3, [r2, #2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806ABD8
	ldrh r1, [r7, #0x36]
	ldrh r0, [r7, #0x34]
	subs r1, r1, r0
	add r2, sp, #4
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r2]
	strh r1, [r2, #2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806ABE4
	bl sub_0806B070
	mov r8, r0
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x3c
	movs r5, #0x80
	lsls r5, r5, #0xa
_0806EFC8:
	lsrs r1, r5, #0x10
	mov r0, r8
	adds r2, r4, #0
	bl sub_0806BAB8
	adds r4, #4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #1
	ble _0806EFC8
	movs r3, #0
	ldr r1, _0806F018 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0806F01C @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0806F020 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0806F024 @ =0x040000BA
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	str r0, [r1]
	ldr r0, _0806F028 @ =0x04000018
	str r0, [r1, #4]
	ldr r0, _0806F02C @ =0xA6600002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F018: .4byte 0x040000B0
_0806F01C: .4byte 0x0000C5FF
_0806F020: .4byte 0x00007FFF
_0806F024: .4byte 0x040000BA
_0806F028: .4byte 0x04000018
_0806F02C: .4byte 0xA6600002

	thumb_func_start sub_0806F030
sub_0806F030: @ 0x0806F030
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080894BC
	ldr r0, _0806F178 @ =0x09F80238
	str r0, [r7, #0x1c]
	movs r0, #0x34
	adds r0, r0, r7
	mov sb, r0
	bl sub_0806D64C
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl _call_via_r2
	bl sub_0806EC08
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	strh r5, [r7, #0x2c]
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0xa0
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x74
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa8
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0xaa
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0806F1EC
	ldr r3, [r4, #0x1c]
	adds r3, #0x98
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0, #2]
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	ldr r3, [r4, #0x1c]
	adds r3, #0x98
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r2, sp, #0x1c
	ldr r0, [r7, #0x30]
	adds r0, #4
	movs r1, #0x40
	ldr r4, _0806F17C @ =0x09F44F08
	str r4, [sp, #0x24]
	str r0, [sp, #0x1c]
	str r1, [r2, #4]
	adds r5, #2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r2, [sp]
	mov r0, sb
	adds r1, r5, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_0806D744
	str r4, [sp, #0x24]
	str r4, [sp, #0x18]
	str r4, [sp, #0xc]
	add r1, sp, #0x28
	mov r2, r8
	strh r2, [r1]
	strh r2, [r1, #2]
	mov r0, sb
	bl sub_0806D814
	add r1, sp, #0x2c
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D828
	add r1, sp, #0x30
	mov r0, r8
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D83C
	movs r5, #0x44
	movs r4, #3
_0806F14A:
	movs r0, #0x34
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, r2, r5
	adds r1, r7, #0
	bl sub_0806F56C
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bge _0806F14A
	ldr r0, [r7, #0x30]
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #1
	beq _0806F180
	cmp r0, #1
	ble _0806F1A2
	cmp r0, #2
	beq _0806F192
	b _0806F1A2
	.align 2, 0
_0806F178: .4byte 0x09F80238
_0806F17C: .4byte 0x09F44F08
_0806F180:
	movs r0, #0x38
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, #0x88
	adds r1, r7, #0
	bl sub_0806F97C
	b _0806F1A2
_0806F192:
	movs r0, #0x38
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, #0x88
	adds r1, r7, #0
	bl sub_0806F7EC
_0806F1A2:
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806F1E0 @ =0x09F44FF0
	ldr r0, _0806F1E4 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0806F1E8 @ =gUnknown_081006B4
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
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806F1E0: .4byte 0x09F44FF0
_0806F1E4: .4byte 0x09F7ED20
_0806F1E8: .4byte gUnknown_081006B4

	thumb_func_start sub_0806F1EC
sub_0806F1EC: @ 0x0806F1EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	movs r6, #0
	ldr r0, _0806F268 @ =gUnknown_081006BC
	mov r8, r0
	movs r5, #0xab
	lsls r5, r5, #2
	add r5, ip
_0806F200:
	lsls r3, r6, #1
	mov r0, ip
	adds r0, #0xac
	adds r4, r0, r3
	mov r2, ip
	ldr r1, [r2, #0x30]
	adds r0, r1, #0
	adds r0, #0x7c
	movs r7, #0
	ldrsh r2, [r0, r7]
	ldr r0, [r1, #0x78]
	lsls r0, r0, #9
	adds r0, r3, r0
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _0806F228
	adds r0, #0xff
_0806F228:
	asrs r0, r0, #8
	adds r0, #8
	strh r0, [r4]
	mov r2, ip
	ldr r0, [r2, #0x30]
	adds r1, r0, #0
	adds r1, #0x7e
	movs r7, #0
	ldrsh r1, [r1, r7]
	ldr r0, [r0, #0x78]
	lsls r0, r0, #9
	adds r0, r3, r0
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0806F24E
	adds r0, #0xff
_0806F24E:
	asrs r0, r0, #8
	adds r0, #0x30
	strh r0, [r5]
	adds r5, #2
	adds r6, #1
	cmp r6, #0xff
	ble _0806F200
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F268: .4byte gUnknown_081006BC

	thumb_func_start sub_0806F26C
sub_0806F26C: @ 0x0806F26C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0806F2C8 @ =0x09F80238
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_0808959C
	adds r4, r0, #0
	cmp r4, #0
	beq _0806F2AE
_0806F282:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _0806F2A8
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806F2A8:
	adds r4, r5, #0
	cmp r4, #0
	bne _0806F282
_0806F2AE:
	adds r0, r6, #0
	adds r0, #0x34
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080894DC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F2C8: .4byte 0x09F80238

	thumb_func_start sub_0806F2CC
sub_0806F2CC: @ 0x0806F2CC
	adds r0, #0xa0
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2D4
sub_0806F2D4: @ 0x0806F2D4
	adds r0, #0xa2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2DC
sub_0806F2DC: @ 0x0806F2DC
	adds r0, #0xa4
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2E4
sub_0806F2E4: @ 0x0806F2E4
	adds r0, #0xa6
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2EC
sub_0806F2EC: @ 0x0806F2EC
	adds r0, #0xa8
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2F4
sub_0806F2F4: @ 0x0806F2F4
	adds r0, #0xaa
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2FC
sub_0806F2FC: @ 0x0806F2FC
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F304
sub_0806F304: @ 0x0806F304
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F30C
sub_0806F30C: @ 0x0806F30C
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F314
sub_0806F314: @ 0x0806F314
	adds r0, #0xa6
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F31C
sub_0806F31C: @ 0x0806F31C
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F324
sub_0806F324: @ 0x0806F324
	adds r0, #0xaa
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F32C
sub_0806F32C: @ 0x0806F32C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806B070
	ldrh r1, [r4, #0x2c]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r5, #0
	bl sub_0806BA20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F34C
sub_0806F34C: @ 0x0806F34C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	bl sub_0806B070
	ldrh r1, [r4, #0x2c]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	mov r3, r8
	bl sub_0806B9C0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F380
sub_0806F380: @ 0x0806F380
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0xc0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, r0, #0
	ldrh r0, [r7, #0x2c]
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806F42C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806F52C
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r7, #0x30]
	adds r0, #0x84
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r7, #0x30]
	adds r0, #0x86
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r7, #0
	adds r0, #0xa8
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r7, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F42C
sub_0806F42C: @ 0x0806F42C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r6, r1, #0
	mov r8, r2
	str r3, [sp, #8]
	adds r0, #0xa4
	movs r1, #0
	ldrsh r4, [r0, r1]
	asrs r4, r4, #8
	bl sub_0806B070
	adds r1, r0, #0
	mov r0, sp
	bl sub_0806BAEC
	ldr r5, [sp]
	adds r5, r5, r4
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, sl
	adds r0, #0xa6
	movs r1, #0
	ldrsh r4, [r0, r1]
	asrs r4, r4, #8
	bl sub_0806B070
	adds r1, r0, #0
	add r0, sp, #4
	bl sub_0806BAEC
	ldr r2, [sp, #4]
	asrs r2, r2, #0x10
	adds r2, r2, r4
	mov r1, sl
	ldr r0, [r1, #0x30]
	adds r1, r0, #0
	adds r1, #0x80
	ldrb r1, [r1]
	mov sb, r1
	adds r0, #0x82
	ldrb r0, [r0]
	mov ip, r0
	mov r0, sl
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #8
	adds r0, r0, r6
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, sl
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #8
	adds r0, r0, r6
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sb
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, ip
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x18
	mov ip, r0
	movs r0, #1
	add r8, r0
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	str r5, [sp, #0xc]
	movs r5, #0xab
	lsls r5, r5, #2
	add r5, sl
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r0, r6, #3
	ldr r1, [sp, #8]
	adds r3, r0, r1
	b _0806F510
_0806F4E2:
	lsls r1, r7, #1
	mov r0, sl
	adds r0, #0xac
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r0, r4, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, r0, r2
	strh r0, [r3, #2]
	mov r1, sb
	adds r0, r7, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, ip
	adds r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, #0x10
	adds r6, #2
_0806F510:
	movs r0, #0xa0
	cmp r0, r8
	ble _0806F518
	mov r0, r8
_0806F518:
	cmp r6, r0
	blt _0806F4E2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F52C
sub_0806F52C: @ 0x0806F52C
	push {r4, lr}
	adds r4, r2, #0
	adds r2, r1, #1
	cmp r2, r4
	bge _0806F558
	lsls r0, r2, #3
	subs r0, #8
	adds r3, r0, r3
_0806F53C:
	ldrh r0, [r3]
	ldrh r1, [r3, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #8]
	ldrh r0, [r3, #2]
	ldrh r1, [r3, #0x12]
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #0xa]
	adds r3, #0x10
	adds r2, #2
	cmp r2, r4
	blt _0806F53C
_0806F558:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F560
sub_0806F560: @ 0x0806F560
	push {lr}
	bl sub_08089580
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F56C
sub_0806F56C: @ 0x0806F56C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080894BC
	ldr r0, _0806F5DC @ =0x09F80340
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	str r6, [r5, #0x2c]
	movs r0, #0
	strh r0, [r5, #0x30]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806F5E0 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0806F5E4 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0806F5E8 @ =gUnknown_081017FC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
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
_0806F5DC: .4byte 0x09F80340
_0806F5E0: .4byte 0x09F44FF0
_0806F5E4: .4byte 0x09F7ED20
_0806F5E8: .4byte gUnknown_081017FC

	thumb_func_start sub_0806F5EC
sub_0806F5EC: @ 0x0806F5EC
	push {lr}
	ldr r2, _0806F5FC @ =0x09F80340
	str r2, [r0, #0x1c]
	bl sub_080894DC
	pop {r0}
	bx r0
	.align 2, 0
_0806F5FC: .4byte 0x09F80340

	thumb_func_start sub_0806F600
sub_0806F600: @ 0x0806F600
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r5, #0x2c]
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _0806F6C0
	ldrh r0, [r5, #0x30]
	cmp r0, #0
	bne _0806F6C0
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #4]
	subs r0, r2, #1
	subs r4, r1, r0
	ldr r0, [r3]
	cmp r0, #2
	beq _0806F63C
	cmp r0, #2
	bgt _0806F62C
	cmp r0, #1
	beq _0806F636
	b _0806F6C0
_0806F62C:
	cmp r0, #3
	beq _0806F644
	cmp r0, #4
	beq _0806F67A
	b _0806F6C0
_0806F636:
	adds r0, r5, #0
	adds r1, r2, #0
	b _0806F6A4
_0806F63C:
	subs r3, r4, #1
	adds r0, r5, #0
	adds r1, r2, #0
	b _0806F672
_0806F644:
	ldrh r0, [r5, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	cmp r1, #0
	beq _0806F652
	bl sub_08090F7C
_0806F652:
	adds r2, r0, #0
	lsls r1, r4, #1
	cmp r1, #0
	beq _0806F662
	adds r0, r2, #0
	bl sub_08090F80
	adds r2, r0, #0
_0806F662:
	cmp r2, r4
	blt _0806F69E
	cmp r2, r4
	ble _0806F6C0
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	subs r3, r4, #1
	adds r0, r5, #0
_0806F672:
	adds r2, r4, #0
	bl sub_0806F6E0
	b _0806F6C0
_0806F67A:
	ldrh r0, [r5, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	cmp r1, #0
	beq _0806F688
	bl sub_08090F7C
_0806F688:
	adds r2, r0, #0
	lsls r0, r4, #1
	adds r1, r0, #1
	cmp r1, #0
	beq _0806F69A
	adds r0, r2, #0
	bl sub_08090F80
	adds r2, r0, #0
_0806F69A:
	cmp r2, r4
	bge _0806F6AE
_0806F69E:
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	adds r0, r5, #0
_0806F6A4:
	adds r2, r4, #0
	movs r3, #1
	bl sub_0806F6E0
	b _0806F6C0
_0806F6AE:
	cmp r2, r4
	ble _0806F6C0
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	subs r3, r4, #1
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0806F6E0
_0806F6C0:
	ldrh r0, [r5, #0x30]
	adds r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5, #0x2c]
	movs r2, #8
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _0806F6D8
	movs r0, #0
	strh r0, [r5, #0x30]
_0806F6D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F6E0
sub_0806F6E0: @ 0x0806F6E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r3, r0, #0
	ldr r0, _0806F7C4 @ =gUnknown_02001EC0
	mov sl, r0
	ldr r4, _0806F7C8 @ =0x040000D4
	str r3, [r4]
	str r0, [r4, #4]
	ldr r0, _0806F7CC @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r8
	lsls r7, r1, #1
	adds r0, r7, r3
	ldr r2, _0806F7D0 @ =gUnknown_02001E80
	mov ip, r2
	lsls r2, r5, #1
	cmp r2, #0
	ble _0806F748
	str r0, [r4]
	mov r0, ip
	str r0, [r4, #4]
	asrs r0, r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F748:
	subs r6, r6, r5
	mov r1, r8
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r3, r0, r3
	mov r0, sl
	adds r1, r7, r0
	lsls r0, r6, #1
	cmp r0, #0
	ble _0806F76C
	str r3, [r4]
	str r1, [r4, #4]
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F76C:
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #1
	add r0, sl
	cmp r2, #0
	ble _0806F78A
	mov r3, ip
	str r3, [r4]
	str r0, [r4, #4]
	asrs r0, r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F78A:
	mov r0, sb
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r4, [r1, #4]
	movs r1, #0
	movs r2, #2
	mov r3, sl
	bl _call_via_r4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F7C4: .4byte gUnknown_02001EC0
_0806F7C8: .4byte 0x040000D4
_0806F7CC: .4byte 0x80000020
_0806F7D0: .4byte gUnknown_02001E80

	thumb_func_start sub_0806F7D4
sub_0806F7D4: @ 0x0806F7D4
	push {lr}
	bl sub_08089594
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F7E0
sub_0806F7E0: @ 0x0806F7E0
	push {lr}
	bl sub_08089580
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F7EC
sub_0806F7EC: @ 0x0806F7EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080894BC
	ldr r0, _0806F888 @ =0x09F803D8
	str r0, [r5, #0x1c]
	movs r0, #0
	strh r0, [r5, #0x34]
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	str r6, [r5, #0x2c]
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	strh r0, [r5, #0x30]
	ldr r0, [r4, #0x1c]
	adds r0, #0xf0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	strh r0, [r5, #0x32]
	ldr r0, _0806F88C @ =0xFFFF0000
	ands r7, r0
	str r7, [r5, #0x34]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806F890 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0806F894 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0806F898 @ =gUnknown_08101944
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806F888: .4byte 0x09F803D8
_0806F88C: .4byte 0xFFFF0000
_0806F890: .4byte 0x09F44FF0
_0806F894: .4byte 0x09F7ED20
_0806F898: .4byte gUnknown_08101944

	thumb_func_start sub_0806F89C
sub_0806F89C: @ 0x0806F89C
	push {lr}
	ldr r2, _0806F8AC @ =0x09F803D8
	str r2, [r0, #0x1c]
	bl sub_080894DC
	pop {r0}
	bx r0
	.align 2, 0
_0806F8AC: .4byte 0x09F803D8

	thumb_func_start sub_0806F8B0
sub_0806F8B0: @ 0x0806F8B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x30
	ldrsh r2, [r5, r0]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0806F8C2
	adds r0, #0x1f
_0806F8C2:
	ldr r7, _0806F968 @ =gUnknown_080EF880
	asrs r0, r0, #5
	ldr r4, _0806F96C @ =0x000003FF
	ands r0, r4
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08069594
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0806F8F2
	adds r0, #0x1f
_0806F8F2:
	asrs r0, r0, #5
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08069594
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #4]
	ldrh r2, [r5, #0x34]
	adds r0, r0, r2
	strh r0, [r5, #0x34]
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F968: .4byte gUnknown_080EF880
_0806F96C: .4byte 0x000003FF

	thumb_func_start sub_0806F970
sub_0806F970: @ 0x0806F970
	push {lr}
	bl sub_08089594
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F97C
sub_0806F97C: @ 0x0806F97C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080894BC
	ldr r0, _0806F9F0 @ =0x09F80470
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	str r6, [r5, #0x2c]
	movs r0, #0
	strh r0, [r5, #0x30]
	strh r0, [r5, #0x32]
	strh r0, [r5, #0x34]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806F9F4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0806F9F8 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0806F9FC @ =gUnknown_08101A8C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
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
_0806F9F0: .4byte 0x09F80470
_0806F9F4: .4byte 0x09F44FF0
_0806F9F8: .4byte 0x09F7ED20
_0806F9FC: .4byte gUnknown_08101A8C

	thumb_func_start sub_0806FA00
sub_0806FA00: @ 0x0806FA00
	push {lr}
	ldr r2, _0806FA10 @ =0x09F80470
	str r2, [r0, #0x1c]
	bl sub_080894DC
	pop {r0}
	bx r0
	.align 2, 0
_0806FA10: .4byte 0x09F80470

	thumb_func_start sub_0806FA14
sub_0806FA14: @ 0x0806FA14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r7, #0x34]
	subs r0, #1
	strh r0, [r7, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806FB0A
	ldr r5, _0806FB5C @ =0x000003FF
	movs r0, #0
	adds r1, r5, #0
	bl sub_0805D234
	adds r4, r0, #0
	ldr r3, [sp]
	lsls r6, r3, #0x10
	asrs r6, r6, #0x10
	ldr r0, _0806FB60 @ =gUnknown_080EF880
	mov r8, r0
	ands r4, r5
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08069594
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_08069594
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [r7, #0x2c]
	ldrh r0, [r1, #6]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x34]
	movs r0, #0
	movs r1, #0xff
	bl sub_0805D234
	ldrh r1, [r7, #0x34]
	muls r0, r1, r0
	strh r0, [r7, #0x34]
	movs r3, #0x34
	ldrsh r0, [r7, r3]
	ldr r1, [r7, #0x2c]
	asrs r0, r0, #8
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r7, #0x34]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r0, r5, r6
	ldrh r1, [r7, #0x34]
	cmp r1, #0
	beq _0806FAF0
	bl sub_08090F7C
_0806FAF0:
	strh r0, [r7, #0x30]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	ldrh r1, [r7, #0x34]
	cmp r1, #0
	beq _0806FB08
	bl sub_08090F7C
_0806FB08:
	strh r0, [r7, #0x32]
_0806FB0A:
	mov r3, sb
	ldr r2, [r3, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r7, #0x30]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r7, [r7, #0x32]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FB5C: .4byte 0x000003FF
_0806FB60: .4byte gUnknown_080EF880

	thumb_func_start sub_0806FB64
sub_0806FB64: @ 0x0806FB64
	push {lr}
	bl sub_08089594
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FB70
sub_0806FB70: @ 0x0806FB70
	ldr r0, _0806FB74 @ =gUnknown_02001F00
	bx lr
	.align 2, 0
_0806FB74: .4byte gUnknown_02001F00

	thumb_func_start sub_0806FB78
sub_0806FB78: @ 0x0806FB78
	push {r4, lr}
	ldr r1, _0806FBA0 @ =gUnknown_02001F0C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806FB94
	ldr r4, _0806FBA4 @ =gUnknown_02001F10
	movs r0, #0x40
	bl __builtin_new
	bl sub_0806FBFC
	str r0, [r4]
_0806FB94:
	ldr r0, _0806FBA4 @ =gUnknown_02001F10
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FBA0: .4byte gUnknown_02001F0C
_0806FBA4: .4byte gUnknown_02001F10

	thumb_func_start sub_0806FBA8
sub_0806FBA8: @ 0x0806FBA8
	ldr r0, _0806FBB0 @ =gUnknown_02001F10
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806FBB0: .4byte gUnknown_02001F10

	thumb_func_start sub_0806FBB4
sub_0806FBB4: @ 0x0806FBB4
	push {r4, r5, lr}
	ldr r1, _0806FBE8 @ =gUnknown_02001F0C
	ldr r0, [r1]
	cmp r0, #0
	ble _0806FBE0
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806FBE0
	ldr r5, _0806FBEC @ =gUnknown_02001F10
	ldr r2, [r5]
	cmp r2, #0
	beq _0806FBDE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806FBDE:
	str r4, [r5]
_0806FBE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FBE8: .4byte gUnknown_02001F0C
_0806FBEC: .4byte gUnknown_02001F10

	thumb_func_start sub_0806FBF0
sub_0806FBF0: @ 0x0806FBF0
	push {lr}
	bl sub_0806FB70
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FBFC
sub_0806FBFC: @ 0x0806FBFC
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0806FC24 @ =0x09F80508
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x20
	bl sub_0805D2A4
	movs r0, #0
	strh r0, [r4, #0x28]
	strh r0, [r4, #0x30]
	strh r0, [r4, #0x38]
	bl sub_0806B040
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FC24: .4byte 0x09F80508

	thumb_func_start sub_0806FC28
sub_0806FC28: @ 0x0806FC28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806FC50 @ =0x09F80508
	str r0, [r4, #0x1c]
	bl sub_0806B07C
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #2
	bl sub_0805D2B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FC50: .4byte 0x09F80508

	thumb_func_start sub_0806FC54
sub_0806FC54: @ 0x0806FC54
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, #0x20
	bl sub_0805D2D4
	ldr r5, [r5]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0x28]
	adds r0, r5, #0
	adds r0, #0xc
	str r0, [r4, #0x2c]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0x30]
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x28]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x34]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x38]
	ldr r2, [r4, #0x1c]
	adds r2, #0x98
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x30]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x3c]
	ldr r2, [r4, #0x1c]
	adds r2, #0xa8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x38]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r0]
	ldr r0, _0806FCBC @ =0x6366657E
	cmp r1, r0
	bne _0806FCC0
	movs r0, #1
	b _0806FCC2
	.align 2, 0
_0806FCBC: .4byte 0x6366657E
_0806FCC0:
	movs r0, #0
_0806FCC2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806FCC8
sub_0806FCC8: @ 0x0806FCC8
	push {lr}
	adds r0, #0x20
	bl sub_0805D2DC
	pop {r1}
	bx r1

	thumb_func_start sub_0806FCD4
sub_0806FCD4: @ 0x0806FCD4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x20
	bl sub_0805D2F0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FCE8
sub_0806FCE8: @ 0x0806FCE8
	ldrh r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0806FCEC
sub_0806FCEC: @ 0x0806FCEC
	push {lr}
	ldr r2, [r0, #0x2c]
	cmp r1, #0
	ble _0806FD08
_0806FCF4:
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x12
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	adds r2, r2, r0
	subs r1, #1
	cmp r1, #0
	bne _0806FCF4
_0806FD08:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FD10
sub_0806FD10: @ 0x0806FD10
	ldrh r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_0806FD14
sub_0806FD14: @ 0x0806FD14
	lsls r1, r1, #3
	ldr r0, [r0, #0x34]
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_0806FD1C
sub_0806FD1C: @ 0x0806FD1C
	ldrh r0, [r0, #0x38]
	bx lr

	thumb_func_start sub_0806FD20
sub_0806FD20: @ 0x0806FD20
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0x3c]
	movs r2, #0
	cmp r2, r5
	bge _0806FD52
_0806FD2C:
	adds r3, r1, #0
	adds r3, #0x10
	ldrh r0, [r1, #0xa]
	adds r4, r2, #1
	cmp r0, #0
	beq _0806FD44
	adds r2, r0, #0
_0806FD3A:
	ldrh r0, [r3]
	adds r3, r3, r0
	subs r2, #1
	cmp r2, #0
	bne _0806FD3A
_0806FD44:
	subs r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r1, r0
	adds r2, r4, #0
	cmp r2, r5
	blt _0806FD2C
_0806FD52:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FD5C
sub_0806FD5C: @ 0x0806FD5C
	push {r4, lr}
	ldr r4, _0806FD70 @ =gUnknown_02001F00
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806FD74 @ =0x09F805B8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806FD70: .4byte gUnknown_02001F00
_0806FD74: .4byte 0x09F805B8

	thumb_func_start sub_0806FD78
sub_0806FD78: @ 0x0806FD78
	ldr r0, _0806FD7C @ =gUnknown_02001F14
	bx lr
	.align 2, 0
_0806FD7C: .4byte gUnknown_02001F14

	thumb_func_start sub_0806FD80
sub_0806FD80: @ 0x0806FD80
	push {r4, lr}
	ldr r1, _0806FDA8 @ =gUnknown_02001F20
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806FD9C
	ldr r4, _0806FDAC @ =gUnknown_02001F24
	movs r0, #0x24
	bl __builtin_new
	bl sub_0806FE04
	str r0, [r4]
_0806FD9C:
	ldr r0, _0806FDAC @ =gUnknown_02001F24
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FDA8: .4byte gUnknown_02001F20
_0806FDAC: .4byte gUnknown_02001F24

	thumb_func_start sub_0806FDB0
sub_0806FDB0: @ 0x0806FDB0
	ldr r0, _0806FDB8 @ =gUnknown_02001F24
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806FDB8: .4byte gUnknown_02001F24

	thumb_func_start sub_0806FDBC
sub_0806FDBC: @ 0x0806FDBC
	push {r4, r5, lr}
	ldr r1, _0806FDF0 @ =gUnknown_02001F20
	ldr r0, [r1]
	cmp r0, #0
	ble _0806FDE8
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806FDE8
	ldr r5, _0806FDF4 @ =gUnknown_02001F24
	ldr r2, [r5]
	cmp r2, #0
	beq _0806FDE6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806FDE6:
	str r4, [r5]
_0806FDE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FDF0: .4byte gUnknown_02001F20
_0806FDF4: .4byte gUnknown_02001F24

	thumb_func_start sub_0806FDF8
sub_0806FDF8: @ 0x0806FDF8
	push {lr}
	bl sub_0806FD78
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FE04
sub_0806FE04: @ 0x0806FE04
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0806FE58 @ =0x09F805D0
	str r0, [r4, #0x1c]
	bl sub_0808FB50
	movs r0, #0x50
	strh r0, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	bl get__10IrcManager
	ldr r1, _0806FE5C @ =gUnknown_08101CBC
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069AC0__3IrcUiG5Intr2
	bl get__10IrcManager
	ldrh r2, [r4, #0x20]
	movs r1, #0xa0
	subs r1, r1, r2
	bl sub_08069AF8__3IrcUi
	bl get__10IrcManager
	ldr r1, _0806FE60 @ =gUnknown_08101CC4
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069A50__3IrcUiG5Intr2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FE58: .4byte 0x09F805D0
_0806FE5C: .4byte gUnknown_08101CBC
_0806FE60: .4byte gUnknown_08101CC4

	thumb_func_start sub_0806FE64
sub_0806FE64: @ 0x0806FE64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806FEB0 @ =0x09F805D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806FE82
	bl sub_08090FBC
	adds r0, r4, #0
	bl sub_0806FEC8
_0806FE82:
	bl get__10IrcManager
	ldr r1, _0806FEB4 @ =gUnknown_08101CBC
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069CF4__3IrcUiG5Intr2
	bl get__10IrcManager
	ldr r1, _0806FEB8 @ =gUnknown_08101CC4
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069C84__3IrcUiG5Intr2
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FEB0: .4byte 0x09F805D0
_0806FEB4: .4byte gUnknown_08101CBC
_0806FEB8: .4byte gUnknown_08101CC4

	thumb_func_start sub_0806FEBC
sub_0806FEBC: @ 0x0806FEBC
	push {lr}
	bl sub_0809008C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FEC8
sub_0806FEC8: @ 0x0806FEC8
	push {lr}
	bl sub_0809000C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FED4
sub_0806FED4: @ 0x0806FED4
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4, #0x20]
	bl get__10IrcManager
	ldrh r2, [r4, #0x20]
	movs r1, #0xa0
	subs r1, r1, r2
	bl sub_08069AF8__3IrcUi
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FEF0
sub_0806FEF0: @ 0x0806FEF0
	adds r0, #0x22
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806FEF8
sub_0806FEF8: @ 0x0806FEF8
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806FEFC
sub_0806FEFC: @ 0x0806FEFC
	adds r0, #0x22
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806FF04
sub_0806FF04: @ 0x0806FF04
	push {lr}
	bl sub_0808FA10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FF10
sub_0806FF10: @ 0x0806FF10
	push {lr}
	bl sub_08090104
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FF1C
sub_0806FF1C: @ 0x0806FF1C
	push {r4, lr}
	ldr r4, _0806FF30 @ =gUnknown_02001F14
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806FF34 @ =0x09F80668
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806FF30: .4byte gUnknown_02001F14
_0806FF34: .4byte 0x09F80668

	thumb_func_start sub_0806FF38
sub_0806FF38: @ 0x0806FF38
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0806FF68 @ =0x09F80680
	str r0, [r4, #0x1c]
	movs r2, #0
	movs r1, #0
	strh r1, [r4, #0x20]
	str r1, [r4, #0x24]
	movs r0, #0x64
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x30
	strb r2, [r0]
	str r1, [r4, #0x34]
	adds r0, r4, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FF68: .4byte 0x09F80680

	thumb_func_start sub_0806FF6C
sub_0806FF6C: @ 0x0806FF6C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	bl __4Base
	ldr r0, _0806FFA4 @ =0x09F80680
	str r0, [r4, #0x1c]
	movs r2, #0
	movs r1, #0
	strh r1, [r4, #0x20]
	str r1, [r4, #0x24]
	movs r0, #0x64
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x30
	strb r2, [r0]
	str r1, [r4, #0x34]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806FFA4: .4byte 0x09F80680

	thumb_func_start sub_0806FFA8
sub_0806FFA8: @ 0x0806FFA8
	push {lr}
	ldr r2, _0806FFB8 @ =0x09F80680
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0806FFB8: .4byte 0x09F80680

	thumb_func_start sub_0806FFBC
sub_0806FFBC: @ 0x0806FFBC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0
	ldr r0, _0806FFD8 @ =0x000007B0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0806FFDC
	movs r0, #0
	strh r0, [r4, #0x20]
	b _08070038
	.align 2, 0
_0806FFD8: .4byte 0x000007B0
_0806FFDC:
	cmp r1, #0
	bne _0806FFE4
	movs r0, #0
	b _08070038
_0806FFE4:
	movs r2, #0
	strh r3, [r4, #0x20]
	ldr r1, _08070040 @ =gUnknown_08120E94
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08070044 @ =gUnknown_08120E1C
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r0, [r0]
	str r2, [r0, #0xc]
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x64
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x64
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
_08070038:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08070040: .4byte gUnknown_08120E94
_08070044: .4byte gUnknown_08120E1C

	thumb_func_start sub_08070048
sub_08070048: @ 0x08070048
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _080700D0
	bl get__12ClockManager
	bl getTime__5Clock
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0xc]
	cmp r6, #0
	bgt _08070072
	ldrh r0, [r5, #0x20]
	bl sub_0808FA1C
	b _080700AC
_08070072:
	ldrh r0, [r5, #0x20]
	bl sub_0808FA1C
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl sub_0808FC14
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	ldr r1, _080700D8 @ =0x0000FFFF
	movs r2, #0
	bl sub_08090AA4
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl sub_080902E0
	ldr r0, [r5, #0x24]
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0808FBE8
_080700AC:
	ldr r2, _080700DC @ =gUnknown_02001F28
	ldr r1, [r5, #0x24]
	ldr r0, _080700E0 @ =gUnknown_08120E1C
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r5, #0x20]
	strh r1, [r0]
_080700D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080700D8: .4byte 0x0000FFFF
_080700DC: .4byte gUnknown_02001F28
_080700E0: .4byte gUnknown_08120E1C

	thumb_func_start sub_080700E4
sub_080700E4: @ 0x080700E4
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070112
	cmp r1, #0
	bgt _080700FC
	ldr r0, [r2, #0x24]
	ldr r0, [r0]
	bl sub_080902E0
	b _08070112
_080700FC:
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	adds r0, r2, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0808FBC4
_08070112:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08070118
sub_08070118: @ 0x08070118
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070146
	cmp r1, #0
	bgt _08070130
	ldr r0, [r2, #0x24]
	ldr r0, [r0]
	bl sub_0808FB7C
	b _08070146
_08070130:
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	adds r0, r2, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0808FBE8
_08070146:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807014C
sub_0807014C: @ 0x0807014C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0807019E
	cmp r1, #0
	bgt _08070164
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl sub_080902E0
	b _0807017A
_08070164:
	ldr r0, [r5, #0x24]
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0808FBC4
_0807017A:
	ldr r2, _080701A4 @ =gUnknown_02001F28
	ldr r1, [r5, #0x24]
	ldr r0, _080701A8 @ =gUnknown_08120E1C
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
_0807019E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080701A4: .4byte gUnknown_02001F28
_080701A8: .4byte gUnknown_08120E1C

	thumb_func_start sub_080701AC
sub_080701AC: @ 0x080701AC
	push {r4, lr}
	ldrh r4, [r0, #0x20]
	cmp r4, #0
	beq _080701DA
	ldr r2, _080701E0 @ =gUnknown_02001F28
	ldr r3, [r0, #0x24]
	ldr r1, _080701E4 @ =gUnknown_08120E1C
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	beq _080701E8
_080701DA:
	movs r0, #0
	b _080701F2
	.align 2, 0
_080701E0: .4byte gUnknown_02001F28
_080701E4: .4byte gUnknown_08120E1C
_080701E8:
	ldr r0, [r3]
	ldr r0, [r0, #4]
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
_080701F2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080701F8
sub_080701F8: @ 0x080701F8
	push {r4, lr}
	ldrh r4, [r0, #0x20]
	cmp r4, #0
	beq _08070248
	ldr r2, _0807023C @ =gUnknown_02001F28
	ldr r3, [r0, #0x24]
	ldr r1, _08070240 @ =gUnknown_08120E1C
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	bne _08070248
	ldr r0, [r3]
	ldr r1, [r0, #4]
	cmp r1, #0
	bge _08070248
	ldr r0, _08070244 @ =0x0000FFFF
	ands r1, r0
	cmp r1, #0
	beq _08070248
	movs r0, #1
	b _0807024A
	.align 2, 0
_0807023C: .4byte gUnknown_02001F28
_08070240: .4byte gUnknown_08120E1C
_08070244: .4byte 0x0000FFFF
_08070248:
	movs r0, #0
_0807024A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08070250
sub_08070250: @ 0x08070250
	push {r4, lr}
	ldrh r4, [r0, #0x20]
	cmp r4, #0
	beq _080702A0
	ldr r2, _08070294 @ =gUnknown_02001F28
	ldr r3, [r0, #0x24]
	ldr r1, _08070298 @ =gUnknown_08120E1C
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	bne _080702A0
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldr r1, _0807029C @ =0x8000FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, r1
	beq _080702A0
	movs r0, #0
	b _080702A2
	.align 2, 0
_08070294: .4byte gUnknown_02001F28
_08070298: .4byte gUnknown_08120E1C
_0807029C: .4byte 0x8000FFFF
_080702A0:
	movs r0, #1
_080702A2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080702A8
sub_080702A8: @ 0x080702A8
	push {lr}
	cmp r1, #0
	bge _080702B0
	adds r1, #0xf
_080702B0:
	asrs r1, r1, #4
	movs r0, #1
	cmp r0, r1
	bge _080702BA
	adds r0, r1, #0
_080702BA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080702C0
sub_080702C0: @ 0x080702C0
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _080702E4
	str r1, [r2, #0x28]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	lsls r0, r1, #8
	movs r1, #0x64
	bl sub_08090F7C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08090A80
_080702E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080702EC
sub_080702EC: @ 0x080702EC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070314
	str r1, [r2, #0x2c]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	ldr r5, _0807031C @ =0x0000FFFF
	lsls r0, r1, #8
	movs r1, #0x64
	bl sub_08090F7C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08090AA4
_08070314:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807031C: .4byte 0x0000FFFF

	thumb_func_start sub_08070320
sub_08070320: @ 0x08070320
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070352
	adds r1, r2, #0
	adds r1, #0x30
	strb r3, [r1]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	ldr r5, _08070358 @ =0x0000FFFF
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	movs r1, #0x64
	bl sub_08090F7C
	adds r2, r0, #0
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08090B80
_08070352:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08070358: .4byte 0x0000FFFF

	thumb_func_start sub_0807035C
sub_0807035C: @ 0x0807035C
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_08070360
sub_08070360: @ 0x08070360
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_08070364
sub_08070364: @ 0x08070364
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_08070368
sub_08070368: @ 0x08070368
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08070374
sub_08070374: @ 0x08070374
	push {r4, lr}
	adds r4, r0, #0
	bl get__12ClockManager
	bl getTime__5Clock
	ldr r1, [r4, #0x34]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807038C
sub_0807038C: @ 0x0807038C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x20]
	cmp r0, #0
	beq _0807039E
	ldr r0, [r1, #0x24]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	b _080703A0
_0807039E:
	movs r0, #0
_080703A0:
	pop {r1}
	bx r1

	thumb_func_start sub_080703A4
sub_080703A4: @ 0x080703A4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _08070404 @ =0x09F80770
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	str r0, [r5, #0x20]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08070408 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0807040C @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _08070410 @ =gUnknown_08101E6C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_08070404: .4byte 0x09F80770
_08070408: .4byte 0x09F44FF0
_0807040C: .4byte 0x09F7ED20
_08070410: .4byte gUnknown_08101E6C

	thumb_func_start sub_08070414
sub_08070414: @ 0x08070414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _08070474 @ =0x09F80770
	str r0, [r7, #0x1c]
	movs r5, #0
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r5, r0
	bge _08070456
	adds r4, r1, #0
	movs r6, #0
_08070432:
	ldr r0, [r4, #8]
	adds r0, r0, r6
	ldr r2, [r0]
	cmp r2, #0
	beq _0807044C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807044C:
	adds r6, #0xc
	adds r5, #1
	ldr r0, [r4, #4]
	cmp r5, r0
	blt _08070432
_08070456:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	beq _08070460
	bl __builtin_vec_delete
_08070460:
	adds r0, r7, #0
	mov r1, r8
	bl _._4Base
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070474: .4byte 0x09F80770

	thumb_func_start sub_08070478
sub_08070478: @ 0x08070478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov sb, r3
	add r0, sp, #0x2c
	ldrb r0, [r0]
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080704BC
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #8]
	strh r5, [r0, #6]
	ldr r1, [r4, #8]
	movs r0, #2
	str r0, [r1, #8]
_080704BC:
	cmp r6, #0
	beq _08070564
	str r6, [sp]
	mov r0, sp
	movs r1, #0
	mov r4, sb
	strh r4, [r0, #4]
	strh r1, [r0, #6]
	mov r6, r8
	cmp r6, #1
	bne _080704EC
	ldr r0, [sp]
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1, #4]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r6, [sp, #8]
	b _080704EE
_080704EC:
	str r1, [sp, #8]
_080704EE:
	adds r5, r7, #0
	adds r5, #0x20
	mov r8, sp
	ldr r0, [r5, #4]
	adds r0, #1
	mov sb, r0
	ldr r0, [r7, #0x20]
	cmp r0, sb
	bge _0807054E
	mov r4, sb
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0807050C
	adds r0, r1, #0
_0807050C:
	mov sb, r0
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #2
	bl __builtin_vec_new
	mov sl, r0
	ldr r6, [r5, #8]
	mov ip, r6
	mov r3, sl
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0807053C
	adds r2, r0, #0
_08070528:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	movs r7, #0xc
	add ip, r7
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08070528
_0807053C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08070546
	bl __builtin_vec_delete
_08070546:
	mov r0, sb
	str r0, [r5]
	mov r1, sl
	str r1, [r5, #8]
_0807054E:
	ldr r2, [r5, #4]
	ldr r0, [r5, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r0, r8
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	adds r2, #1
	str r2, [r5, #4]
_08070564:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070578
sub_08070578: @ 0x08070578
	push {lr}
	ldr r0, [r0, #0x24]
	movs r1, #0
	cmp r0, #0
	ble _08070584
	movs r1, #1
_08070584:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807058C
sub_0807058C: @ 0x0807058C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0807059E
	ldr r0, [r1, #8]
	ldr r0, [r0]
	b _080705A0
_0807059E:
	movs r0, #0
_080705A0:
	pop {r1}
	bx r1

	thumb_func_start sub_080705A4
sub_080705A4: @ 0x080705A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08070644
	ldr r3, [r4, #8]
	ldr r0, [r3, #8]
	cmp r0, #1
	beq _08070644
	cmp r0, #1
	bgt _080705C6
	cmp r0, #0
	beq _080705CC
	b _08070644
_080705C6:
	cmp r0, #2
	beq _080705E8
	b _08070644
_080705CC:
	ldr r0, [r3]
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r5, #0
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldrh r1, [r3, #4]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r4, #8]
	movs r0, #1
	str r0, [r1, #8]
	b _08070644
_080705E8:
	ldrh r0, [r3, #6]
	ldr r6, _08070650 @ =0x0000FFFF
	adds r1, r0, r6
	strh r1, [r3, #6]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08070644
	ldr r0, [r4, #8]
	ldr r2, [r0]
	cmp r2, #0
	beq _08070610
	ldr r1, [r2, #0x1c]
	movs r7, #8
	ldrsh r0, [r1, r7]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08070610:
	mov ip, r4
	ldr r2, [r4, #4]
	cmp r6, r2
	bge _08070644
	ldr r0, [r4, #8]
	subs r1, r2, #1
	adds r4, r0, #0
	adds r4, #0xc
	adds r3, r0, #0
	mov r8, r2
	cmp r1, #0
	ble _0807063C
	adds r2, r1, #0
_0807062A:
	adds r1, r3, #0
	adds r0, r4, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r4, #0xc
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _0807062A
_0807063C:
	mov r0, r8
	subs r0, #1
	mov r1, ip
	str r0, [r1, #4]
_08070644:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070650: .4byte 0x0000FFFF

	thumb_func_start sub_08070654
sub_08070654: @ 0x08070654
	push {lr}
	bl sub_08069318
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070660
sub_08070660: @ 0x08070660
	push {lr}
	bl sub_08069454
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807066C
sub_0807066C: @ 0x0807066C
	push {lr}
	cmp r1, #0
	beq _08070676
	bl sub_08090F7C
_08070676:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807067C
sub_0807067C: @ 0x0807067C
	push {lr}
	cmp r1, #0
	beq _08070686
	bl sub_08090F80
_08070686:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807068C
sub_0807068C: @ 0x0807068C
	push {r4, lr}
	adds r4, r0, #0
	bl get__12ClockManager
	adds r1, r4, #0
	bl sub_0806A1F8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080706A0
sub_080706A0: @ 0x080706A0
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0805D2F0
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080706D0
sub_080706D0: @ 0x080706D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r5, sp, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0805D2F0
	mov r0, sp
	adds r1, r5, #0
	bl sub_08088D58
	mov r0, r8
	mov r1, sp
	adds r2, r6, #0
	bl sub_08088DF0
	mov r0, sp
	movs r1, #2
	bl sub_08088D7C
	ldr r0, _08070734 @ =0x09F44F08
	str r0, [sp, #0x18]
	mov r0, r8
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08070734: .4byte 0x09F44F08

	thumb_func_start sub_08070738
sub_08070738: @ 0x08070738
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070754
sub_08070754: @ 0x08070754
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070770
sub_08070770: @ 0x08070770
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807078C
sub_0807078C: @ 0x0807078C
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080707A8
sub_080707A8: @ 0x080707A8
	push {lr}
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080707C4
sub_080707C4: @ 0x080707C4
	push {r4, lr}
	adds r4, r0, #0
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080707E4
sub_080707E4: @ 0x080707E4
	push {lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0807081C
	mov r0, sp
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	b _08070806
_08070800:
	movs r0, #1
	bl sub_0807068C
_08070806:
	mov r0, sp
	bl sub_080701AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08070800
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
_0807081C:
	add sp, #0x38
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070824
sub_08070824: @ 0x08070824
	push {lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08070846
	mov r0, sp
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
_08070846:
	add sp, #0x38
	pop {r0}
	bx r0

	thumb_func_start sub_0807084C
sub_0807084C: @ 0x0807084C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	bl __4Base
	ldr r0, _080708A4 @ =0x09F807F0
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x30]
	strh r0, [r7, #0x32]
	adds r1, r7, #0
	adds r1, #0x34
	strh r0, [r7, #0x34]
	strh r0, [r1, #2]
	str r0, [r7, #0x24]
	str r0, [r7, #0x28]
	str r0, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r5, [r7, #0x32]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r7, #0x34]
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r7, #0x36]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #7
	strb r0, [r1]
	cmp r6, #0
	beq _0807089C
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080708E0
_0807089C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080708A4: .4byte 0x09F807F0

	thumb_func_start sub_080708A8
sub_080708A8: @ 0x080708A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080708DC @ =0x09F807F0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _080708BE
	adds r1, r4, #0
	bl sub_08070904
_080708BE:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _080708CE
	movs r1, #0
_080708C6:
	str r1, [r0, #0x24]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _080708C6
_080708CE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080708DC: .4byte 0x09F807F0

	thumb_func_start sub_080708E0
sub_080708E0: @ 0x080708E0
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x2c]
	cmp r0, #0
	bne _080708EE
	str r1, [r3, #0x2c]
	b _080708FC
_080708EE:
	adds r2, r0, #0
	b _080708F4
_080708F2:
	ldr r2, [r2, #0x28]
_080708F4:
	ldr r0, [r2, #0x28]
	cmp r0, #0
	bne _080708F2
	str r1, [r2, #0x28]
_080708FC:
	str r3, [r1, #0x24]
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08070904
sub_08070904: @ 0x08070904
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	cmp r0, r1
	bne _08070926
	ldr r0, [r1, #0x28]
	str r0, [r2, #0x2c]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	b _0807093A
_0807091A:
	ldr r0, [r2, #0x28]
	str r0, [r3, #0x28]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	b _0807093A
_08070926:
	adds r3, r0, #0
	b _08070932
_0807092A:
	ldr r2, [r3, #0x28]
	cmp r2, r1
	beq _0807091A
	adds r3, r2, #0
_08070932:
	ldr r0, [r3, #0x28]
	cmp r0, #0
	bne _0807092A
	movs r0, #0
_0807093A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070940
sub_08070940: @ 0x08070940
	push {r4, lr}
	b _08070954
_08070944:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08070954:
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _08070944
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070974
sub_08070974: @ 0x08070974
	push {r4, lr}
	b _08070988
_08070978:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08070988:
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _08070978
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080709A8
sub_080709A8: @ 0x080709A8
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_080709AC
sub_080709AC: @ 0x080709AC
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_080709B0
sub_080709B0: @ 0x080709B0
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_080709B4
sub_080709B4: @ 0x080709B4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r6, #1
	bne _080709D0
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _080709DA
_080709D0:
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_080709DA:
	strb r0, [r2]
	cmp r5, #1
	bne _08070A00
	ldr r4, [r3, #0x2c]
	cmp r4, #0
	beq _08070A00
_080709E6:
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _080709E6
_08070A00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070A08
sub_08070A08: @ 0x08070A08
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r6, #1
	bne _08070A24
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _08070A2E
_08070A24:
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_08070A2E:
	strb r0, [r2]
	cmp r5, #1
	bne _08070A54
	ldr r4, [r3, #0x2c]
	cmp r4, #0
	beq _08070A54
_08070A3A:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _08070A3A
_08070A54:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070A5C
sub_08070A5C: @ 0x08070A5C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r6, #1
	bne _08070A78
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	b _08070A82
_08070A78:
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_08070A82:
	strb r0, [r2]
	cmp r5, #1
	bne _08070AA8
	ldr r4, [r3, #0x2c]
	cmp r4, #0
	beq _08070AA8
_08070A8E:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _08070A8E
_08070AA8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070AB0
sub_08070AB0: @ 0x08070AB0
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08070AC6
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	b _08070AD0
_08070AC6:
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
_08070AD0:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070AD8
sub_08070AD8: @ 0x08070AD8
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08070AEE
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	b _08070AF8
_08070AEE:
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
_08070AF8:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070B00
sub_08070B00: @ 0x08070B00
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08070B16
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	b _08070B20
_08070B16:
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
_08070B20:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070B28
sub_08070B28: @ 0x08070B28
	ldr r1, [r1]
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B30
sub_08070B30: @ 0x08070B30
	strh r1, [r0, #0x30]
	strh r2, [r0, #0x32]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B38
sub_08070B38: @ 0x08070B38
	ldr r1, [r1]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B40
sub_08070B40: @ 0x08070B40
	strh r1, [r0, #0x34]
	strh r2, [r0, #0x36]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B48
sub_08070B48: @ 0x08070B48
	adds r0, #0x38
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B50
sub_08070B50: @ 0x08070B50
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08070B5C
sub_08070B5C: @ 0x08070B5C
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B68
sub_08070B68: @ 0x08070B68
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B74
sub_08070B74: @ 0x08070B74
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B80
sub_08070B80: @ 0x08070B80
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B8C
sub_08070B8C: @ 0x08070B8C
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08070B98
sub_08070B98: @ 0x08070B98
	ldr r1, [r1, #0x30]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070BA0
sub_08070BA0: @ 0x08070BA0
	ldr r1, [r1, #0x34]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08070BA8
sub_08070BA8: @ 0x08070BA8
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08070BB4
sub_08070BB4: @ 0x08070BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r7, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r5, sp, #4
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	blt _08070C2E
	adds r2, r1, #0
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	cmp r2, r0
	bge _08070C2E
	ldrh r0, [r7, #2]
	movs r2, #2
	ldrsh r1, [r6, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08070C2E
	adds r0, r1, #0
	movs r2, #2
	ldrsh r1, [r7, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	adds r1, r1, r2
	cmp r0, r1
	bge _08070C2E
	movs r0, #1
	b _08070C30
_08070C2E:
	movs r0, #0
_08070C30:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08070C38
sub_08070C38: @ 0x08070C38
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0, #0x2c]
	cmp r4, #0
	beq _08070C9A
_08070C42:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	ldr r1, [r4, #0x1c]
	adds r1, #0xf8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	ldr r1, [r4, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	adds r0, r4, #0
	b _08070C9C
_08070C94:
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _08070C42
_08070C9A:
	movs r0, #0
_08070C9C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070CA4
sub_08070CA4: @ 0x08070CA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	ldr r6, [r0, #0x2c]
	cmp r6, #0
	beq _08070D16
	mov r8, sp
	add r7, sp, #4
_08070CBE:
	ldr r0, [r6, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	str r4, [sp, #8]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r0, r3
	movs r4, #0
	ldrsh r1, [r2, r4]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	mov r0, sb
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	mov r0, sb
	movs r3, #2
	ldrsh r1, [r0, r3]
	mov r4, r8
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	strh r2, [r7]
	strh r1, [r7, #2]
	ldr r2, [r5, #4]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	bl _call_via_r2
	cmp r0, #0
	bne _08070D2E
	ldr r6, [r6, #0x28]
	cmp r6, #0
	bne _08070CBE
_08070D16:
	mov r4, sl
	ldr r1, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r2, [r1, #4]
	mov r1, sb
	bl _call_via_r2
_08070D2E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070D40
sub_08070D40: @ 0x08070D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	mov r8, r1
	adds r4, r3, #0
	ldr r0, [r2]
	str r0, [sp, #4]
	cmp r4, #0
	beq _08070DB2
	mov sl, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x14]
	add r5, sp, #8
_08070D64:
	ldr r2, [r4, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r6, [sp, #0x14]
	movs r7, #0
	ldrsh r1, [r6, r7]
	mov r0, sl
	movs r2, #0
	ldrsh r3, [r0, r2]
	movs r7, #2
	ldrsh r0, [r6, r7]
	mov r6, sl
	movs r7, #2
	ldrsh r2, [r6, r7]
	adds r1, r1, r3
	adds r0, r0, r2
	strh r1, [r5]
	strh r0, [r5, #2]
	ldr r0, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070D64
_08070DB2:
	mov r4, r8
	cmp r4, #0
	beq _08070E06
	add r5, sp, #0xc
	add r7, sp, #4
	add r6, sp, #0x10
_08070DBE:
	ldr r2, [r4, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	movs r1, #0
	ldrsh r2, [r7, r1]
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r2, r2, r0
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	strh r2, [r6]
	strh r1, [r6, #2]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070DBE
_08070E06:
	ldr r0, [sp, #4]
	mov r3, sb
	str r0, [r3]
	mov r0, sb
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070E20
sub_08070E20: @ 0x08070E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	mov r8, r3
	adds r4, r1, #0
	ldr r0, [r2]
	str r0, [sp, #4]
	cmp r4, #0
	beq _08070E92
	mov sl, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x14]
	add r5, sp, #8
_08070E44:
	ldr r2, [r4, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r6, [sp, #0x14]
	movs r7, #0
	ldrsh r1, [r6, r7]
	mov r0, sl
	movs r2, #0
	ldrsh r3, [r0, r2]
	movs r7, #2
	ldrsh r0, [r6, r7]
	mov r6, sl
	movs r7, #2
	ldrsh r2, [r6, r7]
	adds r1, r1, r3
	adds r0, r0, r2
	strh r1, [r5]
	strh r0, [r5, #2]
	ldr r0, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070E44
_08070E92:
	mov r4, r8
	cmp r4, #0
	beq _08070EE6
	add r5, sp, #0xc
	add r7, sp, #4
	add r6, sp, #0x10
_08070E9E:
	ldr r2, [r4, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	movs r1, #0
	ldrsh r2, [r7, r1]
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r2, r2, r0
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	strh r2, [r6]
	strh r1, [r6, #2]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070E9E
_08070EE6:
	ldr r0, [sp, #4]
	mov r3, sb
	str r0, [r3]
	mov r0, sb
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070F00
sub_08070F00: @ 0x08070F00
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _08070F38
_08070F0C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070F0C
_08070F38:
	adds r4, r6, #0
	cmp r4, #0
	beq _08070F6A
_08070F3E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070F3E
_08070F6A:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08070F74
sub_08070F74: @ 0x08070F74
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	b _08070FA2
_08070F7C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08070FA2:
	adds r4, r0, #0
	cmp r4, #0
	bne _08070F7C
	adds r4, r6, #0
	cmp r4, #0
	beq _08070FDA
_08070FAE:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070FAE
_08070FDA:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_105
nullsub_105: @ 0x08070FE4
	bx lr
	.align 2, 0

	thumb_func_start sub_08070FE8
sub_08070FE8: @ 0x08070FE8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, [sp, #0x40]
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0807084C
	ldr r0, _0807104C @ =0x09F80960
	str r0, [r5, #0x1c]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08071050 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08071054 @ =0x09F7EDA0
	str r0, [sp, #0x24]
	ldr r0, _08071058 @ =gUnknown_08102A9C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807104C: .4byte 0x09F80960
_08071050: .4byte 0x09F44FF0
_08071054: .4byte 0x09F7EDA0
_08071058: .4byte gUnknown_08102A9C

	thumb_func_start sub_0807105C
sub_0807105C: @ 0x0807105C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _080710AC @ =0x09F80960
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_080709B0
	adds r4, r0, #0
	cmp r4, #0
	beq _0807109E
_08071072:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _08071098
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08071098:
	adds r4, r5, #0
	cmp r4, #0
	bne _08071072
_0807109E:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080708A8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080710AC: .4byte 0x09F80960

	thumb_func_start sub_080710B0
sub_080710B0: @ 0x080710B0
	push {lr}
	adds r1, r0, #0
	bl sub_080710BC
	pop {r0}
	bx r0

	thumb_func_start sub_080710BC
sub_080710BC: @ 0x080710BC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	b _080710F6
_080710E2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080710BC
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
_080710F6:
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _080710E2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071108
sub_08071108: @ 0x08071108
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_0806E820
	ldr r0, _08071138 @ =0x09F80AD0
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0806E90C
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071138: .4byte 0x09F80AD0

	thumb_func_start sub_0807113C
sub_0807113C: @ 0x0807113C
	push {lr}
	ldr r2, _0807114C @ =0x09F80AD0
	str r2, [r0, #0x1c]
	bl sub_0806E8BC
	pop {r0}
	bx r0
	.align 2, 0
_0807114C: .4byte 0x09F80AD0

	thumb_func_start sub_08071150
sub_08071150: @ 0x08071150
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0806E978
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711C4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0806E9A0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071174
sub_08071174: @ 0x08071174
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	str r1, [r4, #0x54]
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711C4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0806E9A0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08071194
sub_08071194: @ 0x08071194
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r1]
	str r0, [r4, #0x58]
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711C4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0806E9A0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080711B8
sub_080711B8: @ 0x080711B8
	ldr r0, [r0, #0x54]
	bx lr

	thumb_func_start sub_080711BC
sub_080711BC: @ 0x080711BC
	ldr r1, [r1, #0x58]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080711C4
sub_080711C4: @ 0x080711C4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080711F6
	cmp r0, #1
	bgt _080711EA
	cmp r0, #0
	beq _080711F0
	b _08071258
_080711EA:
	cmp r0, #2
	beq _0807122A
	b _08071258
_080711F0:
	ldr r0, [r5, #0x58]
	str r0, [r6]
	b _0807125E
_080711F6:
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r2, [r5, #0x1c]
	adds r2, #0xb8
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	subs r4, r4, r1
	adds r0, r5, #0
	adds r0, #0x5a
	movs r1, #0
	ldrsh r0, [r0, r1]
	strh r4, [r6]
	b _0807125C
_0807122A:
	adds r0, r5, #0
	adds r0, #0x58
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r2, [r5, #0x1c]
	adds r2, #0xb8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	adds r0, r5, #0
	adds r0, #0x5a
	movs r1, #0
	ldrsh r0, [r0, r1]
	strh r4, [r6]
	b _0807125C
_08071258:
	movs r0, #0
	strh r0, [r6]
_0807125C:
	strh r0, [r6, #2]
_0807125E:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08071268
sub_08071268: @ 0x08071268
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0807131C @ =0x09F80BB0
	str r0, [r7, #0x1c]
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #0x38]
	strh r4, [r7, #0x3a]
	adds r6, r7, #0
	adds r6, #0x48
	adds r0, r6, #0
	bl sub_0806D548
	movs r0, #0x5c
	adds r0, r0, r7
	mov r8, r0
	bl sub_0806D478
	str r4, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x28
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	strh r4, [r7, #0x32]
	str r4, [r7, #0x40]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #1
	strb r0, [r1]
	add r0, sp, #4
	movs r1, #0
	bl sub_080706A0
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0806D5AC
	ldr r4, _08071320 @ =0x09F44F08
	str r4, [sp, #0xc]
	ldr r1, _08071324 @ =0x0000027B
	add r0, sp, #4
	bl sub_080706A0
	mov r0, r8
	add r1, sp, #4
	bl sub_0806D4D0
	str r4, [sp, #0xc]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #0x10
	bl __4Base
	ldr r0, _08071328 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0807132C @ =0x09F7ED20
	str r0, [sp, #0x2c]
	add r5, sp, #0x10
	ldr r0, _08071330 @ =gUnknown_081032D4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r5, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807131C: .4byte 0x09F80BB0
_08071320: .4byte 0x09F44F08
_08071324: .4byte 0x0000027B
_08071328: .4byte 0x09F44FF0
_0807132C: .4byte 0x09F7ED20
_08071330: .4byte gUnknown_081032D4

	thumb_func_start sub_08071334
sub_08071334: @ 0x08071334
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08071360 @ =0x09F80BB0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071360: .4byte 0x09F80BB0

	thumb_func_start sub_08071364
sub_08071364: @ 0x08071364
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0807137A
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _08071384
_0807137A:
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_08071384:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807138C
sub_0807138C: @ 0x0807138C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, r1, #0
	ldr r2, _080713F0 @ =0x05F5E0FF
	movs r1, #0
	cmp r0, #0
	blt _080713AA
	adds r1, r0, #0
	cmp r1, r2
	ble _080713AA
	adds r1, r2, #0
_080713AA:
	str r1, [r7, #0x24]
	ldr r0, _080713F4 @ =0x000003E7
	cmp r1, r0
	bgt _080713FC
	adds r4, r7, #0
	adds r4, #0x2a
	movs r3, #7
	mov sl, r4
	lsls r0, r1, #1
	movs r2, #0x28
	adds r2, r2, r7
	mov r8, r2
	movs r2, #0x29
	adds r2, r2, r7
	mov sb, r2
	ldr r2, _080713F8 @ =gUnknown_080F0C80
	subs r1, #5
	adds r0, r0, r1
	adds r0, r0, r2
	adds r2, r0, #7
_080713D2:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	subs r2, #1
	subs r3, #1
	cmp r3, #5
	bge _080713D2
	movs r1, #4
	movs r2, #0
_080713E4:
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #1
	cmp r1, #0
	bge _080713E4
	b _0807142E
	.align 2, 0
_080713F0: .4byte 0x05F5E0FF
_080713F4: .4byte 0x000003E7
_080713F8: .4byte gUnknown_080F0C80
_080713FC:
	adds r4, r1, #0
	adds r6, r7, #0
	adds r6, #0x2a
	movs r5, #7
	mov sl, r6
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x29
	adds r1, r1, r7
	mov sb, r1
_08071412:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F80
	adds r1, r6, r5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F7C
	adds r4, r0, #0
	subs r5, #1
	cmp r5, #0
	bge _08071412
_0807142E:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08071454
	mov r3, sl
_0807143E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r1, #1
	cmp r0, #7
	bgt _08071454
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807143E
_08071454:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	subs r0, r0, r1
	movs r1, #0
	mov r2, sb
	strb r0, [r2]
	strh r1, [r7, #0x32]
	mov r0, r8
	ldrb r4, [r0]
	ldrb r0, [r2]
	adds r0, r4, r0
	cmp r4, r0
	bge _08071492
_08071470:
	mov r1, sl
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_0807163C
	ldrh r1, [r7, #0x32]
	adds r1, r1, r0
	strh r1, [r7, #0x32]
	adds r4, #1
	mov r2, r8
	ldrb r0, [r2]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r0, r1
	cmp r4, r0
	blt _08071470
_08071492:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080714A0
sub_080714A0: @ 0x080714A0
	str r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_080714A4
sub_080714A4: @ 0x080714A4
	ldr r1, [r1]
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0

	thumb_func_start sub_080714AC
sub_080714AC: @ 0x080714AC
	str r1, [r0, #0x3c]
	bx lr

	thumb_func_start sub_080714B0
sub_080714B0: @ 0x080714B0
	str r1, [r0, #0x40]
	bx lr

	thumb_func_start sub_080714B4
sub_080714B4: @ 0x080714B4
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_080714C0
sub_080714C0: @ 0x080714C0
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_080714C4
sub_080714C4: @ 0x080714C4
	adds r0, #0x29
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080714CC
sub_080714CC: @ 0x080714CC
	ldrh r0, [r0, #0x32]
	bx lr

	thumb_func_start sub_080714D0
sub_080714D0: @ 0x080714D0
	ldr r0, [r0, #0x34]
	bx lr

	thumb_func_start sub_080714D4
sub_080714D4: @ 0x080714D4
	ldr r1, [r1, #0x38]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080714DC
sub_080714DC: @ 0x080714DC
	ldr r0, [r0, #0x3c]
	bx lr

	thumb_func_start sub_080714E0
sub_080714E0: @ 0x080714E0
	ldr r0, [r0, #0x40]
	bx lr

	thumb_func_start sub_080714E4
sub_080714E4: @ 0x080714E4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080714FA
	adds r0, r2, #0
	bl sub_08071500
_080714FA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071500
sub_08071500: @ 0x08071500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
	bl sub_0806BE14
	adds r4, r0, #0
	ldr r5, [r6, #0x3c]
	movs r0, #0x29
	adds r0, r0, r6
	mov sb, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	adds r4, r0, #0
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_080715E0
	ldr r0, [sp, #4]
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0807165C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	bl sub_080716CC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r7, #0
	mov r1, sb
	ldrb r1, [r1]
	cmp r7, r1
	bge _080715CC
	mov r5, sp
_0807156C:
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0x10
	ldr r0, _080715DC @ =0x01FF0000
	ands r1, r0
	str r1, [r4]
	ldrh r2, [r5, #2]
	movs r0, #0xff
	ands r0, r2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r4]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #1
	lsls r0, r0, #0xa
	mov r1, r8
	orrs r0, r1
	mov r2, sl
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r1, r1, r7
	adds r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_0807163C
	ldrh r1, [r5]
	adds r1, r1, r0
	strh r1, [r5]
	mov r0, r8
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r4, #8
	adds r7, #1
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r7, r0
	blt _0807156C
_080715CC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080715DC: .4byte 0x01FF0000

	thumb_func_start sub_080715E0
sub_080715E0: @ 0x080715E0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xc0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _08071618
	cmp r0, #1
	ble _0807162E
	cmp r0, #2
	beq _08071622
	b _0807162E
_08071618:
	ldrh r1, [r4, #0x32]
	lsrs r1, r1, #1
	mov r0, sp
	ldrh r0, [r0]
	b _08071628
_08071622:
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
_08071628:
	subs r0, r0, r1
	mov r1, sp
	strh r0, [r1]
_0807162E:
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807163C
sub_0807163C: @ 0x0807163C
	push {lr}
	ldr r0, [r0, #0x40]
	cmp r0, #1
	beq _0807164C
	ldr r0, _08071648 @ =gUnknown_081032DC
	b _0807164E
	.align 2, 0
_08071648: .4byte gUnknown_081032DC
_0807164C:
	ldr r0, _08071658 @ =gUnknown_081032E6
_0807164E:
	adds r0, r1, r0
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_08071658: .4byte gUnknown_081032E6

	thumb_func_start sub_0807165C
sub_0807165C: @ 0x0807165C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0806BE14
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0x48
	bl sub_0806D648
	ldr r2, _080716C8 @ =gUnknown_081032F0
	ldr r1, [r5, #0x40]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	adds r6, r0, r1
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r0, r4, r0
	cmp r4, r0
	bge _080716B6
_0807168E:
	adds r0, r5, #0
	adds r0, #0x2a
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r2, r2, #7
	adds r2, r6, r2
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806C0B4
	adds r2, r0, #0
	adds r4, #1
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r1, r0
	cmp r4, r1
	blt _0807168E
_080716B6:
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	subs r0, r2, r0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080716C8: .4byte gUnknown_081032F0

	thumb_func_start sub_080716CC
sub_080716CC: @ 0x080716CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0806C7AC
	adds r6, r0, #0
	adds r4, #0x5c
	adds r0, r4, #0
	bl sub_0806D53C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0
	adds r4, r0, #0
	ldr r0, _08071710 @ =0x0000FFFF
	cmp r4, r0
	bne _08071708
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_08071708:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071710: .4byte 0x0000FFFF

	thumb_func_start sub_08071714
sub_08071714: @ 0x08071714
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r6, r1, #0
	bl __4Base
	ldr r0, _080717DC @ =0x09F80C88
	str r0, [r7, #0x1c]
	movs r4, #0
	strh r4, [r7, #0x38]
	strh r4, [r7, #0x3a]
	adds r0, r7, #0
	adds r0, #0x44
	bl sub_0806D548
	adds r0, r7, #0
	adds r0, #0x58
	bl sub_0806D478
	str r4, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x34
	movs r0, #2
	strb r0, [r1]
	str r4, [r7, #0x3c]
	adds r1, #0xc
	movs r0, #7
	strb r0, [r1]
	add r0, sp, #0x10
	mov r8, r0
	movs r2, #0
	movs r1, #2
	adds r0, r7, #0
	adds r0, #0x30
_0807175C:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0807175C
	movs r5, #0
	adds r4, r7, #0
	adds r4, #0x44
	add r0, sp, #4
	movs r1, #0
	bl sub_080706A0
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_0806D5AC
	ldr r0, _080717E0 @ =0x09F44F08
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r0, #0x58
	adds r1, r6, #0
	bl sub_0806D4D0
	adds r1, r7, #0
	adds r1, #0x64
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _080717E4 @ =0x040000D4
	add r2, sp, #4
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _080717E8 @ =0x81000040
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #0x10
	bl __4Base
	ldr r6, _080717EC @ =0x09F44FF0
	ldr r0, _080717F0 @ =0x09F7ED20
	str r0, [sp, #0x2c]
	ldr r0, _080717F4 @ =gUnknown_08103710
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, r8
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	str r6, [sp, #0x2c]
	mov r0, r8
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080717DC: .4byte 0x09F80C88
_080717E0: .4byte 0x09F44F08
_080717E4: .4byte 0x040000D4
_080717E8: .4byte 0x81000040
_080717EC: .4byte 0x09F44FF0
_080717F0: .4byte 0x09F7ED20
_080717F4: .4byte gUnknown_08103710

	thumb_func_start sub_080717F8
sub_080717F8: @ 0x080717F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08071824 @ =0x09F80C88
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071824: .4byte 0x09F80C88

	thumb_func_start sub_08071828
sub_08071828: @ 0x08071828
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r0, [r3, #0x24]
	cmp r0, r1
	beq _080718B2
	str r1, [r3, #0x24]
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	movs r5, #1
	movs r4, #2
	movs r0, #0x28
	adds r0, r0, r3
	mov ip, r0
	adds r7, r3, #0
	adds r7, #0x34
	movs r0, #0x40
	adds r0, r0, r3
	mov r8, r0
	asrs r1, r1, #0x10
	ldr r2, _080718BC @ =gUnknown_080F0C80
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	adds r1, r0, #2
	adds r2, r3, #0
	adds r2, #0x30
_08071860:
	ldrb r3, [r1]
	lsls r0, r3, #0x10
	str r0, [r2]
	cmp r5, #1
	bne _08071874
	adds r0, r0, r6
	str r0, [r2]
	cmp r3, #9
	beq _08071874
	movs r5, #0
_08071874:
	subs r1, #1
	subs r2, #4
	subs r4, #1
	cmp r4, #0
	bge _08071860
	movs r0, #0
	strb r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	bne _080718A6
	adds r2, r7, #0
	mov r3, ip
_0807188E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r1, #1
	cmp r0, #2
	bgt _080718A6
	lsls r0, r1, #2
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0807188E
_080718A6:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #4
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
_080718B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080718BC: .4byte gUnknown_080F0C80

	thumb_func_start sub_080718C0
sub_080718C0: @ 0x080718C0
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080718D4
	adds r0, #0x40
	ldrb r2, [r0]
	movs r1, #1
	orrs r1, r2
	b _080718DC
_080718D4:
	adds r0, #0x40
	ldrb r2, [r0]
	movs r1, #0xfe
	ands r1, r2
_080718DC:
	strb r1, [r0]
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start sub_080718EC
sub_080718EC: @ 0x080718EC
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08071902
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0807190C
_08071902:
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0807190C:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071914
sub_08071914: @ 0x08071914
	ldr r1, [r1]
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807191C
sub_0807191C: @ 0x0807191C
	str r1, [r0, #0x3c]
	bx lr

	thumb_func_start sub_08071920
sub_08071920: @ 0x08071920
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x40
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807194E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08071948
	adds r0, r5, #0
	bl sub_080719C4
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_08071948:
	adds r0, r5, #0
	bl sub_08071954
_0807194E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08071954
sub_08071954: @ 0x08071954
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0806BE14
	adds r4, r0, #0
	ldr r5, [r6, #0x3c]
	adds r1, r5, #0
	movs r2, #1
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	adds r4, r0, #0
	movs r0, #0x38
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0x10
	ldr r0, _080719C0 @ =0x01FF0000
	ands r1, r0
	str r1, [r4]
	ldrh r2, [r6, #0x3a]
	movs r0, #0xff
	ands r0, r2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r4]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #1
	lsls r0, r0, #0xa
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl sub_08071A5C
	ldrh r1, [r4, #4]
	orrs r1, r0
	strh r1, [r4, #4]
	adds r0, r6, #0
	bl sub_08071A78
	lsls r0, r0, #0xc
	ldrh r1, [r4, #4]
	orrs r0, r1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080719C0: .4byte 0x01FF0000

	thumb_func_start sub_080719C4
sub_080719C4: @ 0x080719C4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080719DC
	adds r0, r5, #0
	adds r0, #0x34
	ldrb r4, [r0]
	b _080719DE
_080719DC:
	movs r4, #0
_080719DE:
	adds r0, r5, #0
	adds r0, #0x44
	bl sub_0806D648
	adds r6, r0, #0
	movs r2, #0
	cmp r2, r4
	bge _08071A0A
	ldr r0, _08071A50 @ =0x000023E0
	adds r3, r6, r0
	ldr r1, _08071A54 @ =0x040000D4
	ldr r7, _08071A58 @ =0x80000010
_080719F6:
	lsls r0, r2, #5
	adds r0, r0, r5
	adds r0, #0x64
	str r3, [r1]
	str r0, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #1
	cmp r2, r4
	blt _080719F6
_08071A0A:
	adds r2, r4, #0
	cmp r2, #2
	bgt _08071A48
	ldr r3, _08071A54 @ =0x040000D4
_08071A12:
	lsls r1, r2, #2
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #0x10
	lsls r0, r0, #0x13
	movs r4, #0x90
	lsls r4, r4, #0x11
	adds r0, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1d
	lsrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	lsls r1, r2, #5
	adds r1, r1, r5
	adds r1, #0x64
	str r0, [r3]
	str r1, [r3, #4]
	ldr r0, _08071A58 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r2, #1
	cmp r2, #2
	ble _08071A12
_08071A48:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071A50: .4byte 0x000023E0
_08071A54: .4byte 0x040000D4
_08071A58: .4byte 0x80000010

	thumb_func_start sub_08071A5C
sub_08071A5C: @ 0x08071A5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r4, #0x64
	movs r1, #4
	adds r2, r4, #0
	bl sub_0806C0B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08071A78
sub_08071A78: @ 0x08071A78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0806C7AC
	adds r6, r0, #0
	adds r4, #0x58
	adds r0, r4, #0
	bl sub_0806D53C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08071AC0 @ =0x0000FFFF
	cmp r4, r0
	bne _08071AB8
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_08071AB8:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071AC0: .4byte 0x0000FFFF

	thumb_func_start sub_08071AC4
sub_08071AC4: @ 0x08071AC4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071B60 @ =0x09F80D18
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071B64 @ =0x000003A5
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08071B68 @ =0x00000287
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071B6C @ =0x09F44F08
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x3c
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071B70 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08071B74 @ =0x09F7EDA0
	str r0, [sp, #0x20]
	ldr r0, _08071B78 @ =gUnknown_08103B30
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_08071B60: .4byte 0x09F80D18
_08071B64: .4byte 0x000003A5
_08071B68: .4byte 0x00000287
_08071B6C: .4byte 0x09F44F08
_08071B70: .4byte 0x09F44FF0
_08071B74: .4byte 0x09F7EDA0
_08071B78: .4byte gUnknown_08103B30

	thumb_func_start sub_08071B7C
sub_08071B7C: @ 0x08071B7C
	push {lr}
	ldr r2, _08071B8C @ =0x09F80D18
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071B8C: .4byte 0x09F80D18

	thumb_func_start sub_08071B90
sub_08071B90: @ 0x08071B90
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071B98
sub_08071B98: @ 0x08071B98
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071BA0
sub_08071BA0: @ 0x08071BA0
	push {r4, r5, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071BF4 @ =gUnknown_080C696C
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	adds r2, #0x96
	movs r5, #0
	ldrsh r3, [r2, r5]
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	strh r3, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071BEA
	movs r0, #0
	strb r0, [r4]
_08071BEA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071BF4: .4byte gUnknown_080C696C

	thumb_func_start sub_08071BF8
sub_08071BF8: @ 0x08071BF8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071C94 @ =0x09F80E10
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071C98 @ =0x000003A5
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08071C9C @ =0x00000287
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071CA0 @ =0x09F44F08
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x3d
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071CA4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08071CA8 @ =0x09F7EDA0
	str r0, [sp, #0x20]
	ldr r0, _08071CAC @ =gUnknown_08103F50
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_08071C94: .4byte 0x09F80E10
_08071C98: .4byte 0x000003A5
_08071C9C: .4byte 0x00000287
_08071CA0: .4byte 0x09F44F08
_08071CA4: .4byte 0x09F44FF0
_08071CA8: .4byte 0x09F7EDA0
_08071CAC: .4byte gUnknown_08103F50

	thumb_func_start sub_08071CB0
sub_08071CB0: @ 0x08071CB0
	push {lr}
	ldr r2, _08071CC0 @ =0x09F80E10
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071CC0: .4byte 0x09F80E10

	thumb_func_start sub_08071CC4
sub_08071CC4: @ 0x08071CC4
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071CCC
sub_08071CCC: @ 0x08071CCC
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071CD4
sub_08071CD4: @ 0x08071CD4
	push {r4, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071D28 @ =gUnknown_080C696C
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	mov r0, ip
	adds r0, #0x96
	movs r2, #0
	ldrsh r3, [r0, r2]
	mov r2, sp
	mov r0, sp
	strh r1, [r0]
	strh r3, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071D1E
	movs r0, #0
	strb r0, [r4]
_08071D1E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08071D28: .4byte gUnknown_080C696C

	thumb_func_start sub_08071D2C
sub_08071D2C: @ 0x08071D2C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071DC8 @ =0x09F80F08
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071DCC @ =0x00000291
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _08071DD0 @ =0x00000283
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071DD4 @ =0x09F44F08
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x1a
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071DD8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08071DDC @ =0x09F7EDA0
	str r0, [sp, #0x20]
	ldr r0, _08071DE0 @ =gUnknown_08104370
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_08071DC8: .4byte 0x09F80F08
_08071DCC: .4byte 0x00000291
_08071DD0: .4byte 0x00000283
_08071DD4: .4byte 0x09F44F08
_08071DD8: .4byte 0x09F44FF0
_08071DDC: .4byte 0x09F7EDA0
_08071DE0: .4byte gUnknown_08104370

	thumb_func_start sub_08071DE4
sub_08071DE4: @ 0x08071DE4
	push {lr}
	ldr r2, _08071DF4 @ =0x09F80F08
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071DF4: .4byte 0x09F80F08

	thumb_func_start sub_08071DF8
sub_08071DF8: @ 0x08071DF8
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071E00
sub_08071E00: @ 0x08071E00
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071E08
sub_08071E08: @ 0x08071E08
	push {r4, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, #2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071E58 @ =gUnknown_080C697C
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r3, [r0]
	strh r1, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071E50
	movs r0, #0
	strb r0, [r4]
_08071E50:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08071E58: .4byte gUnknown_080C697C

	thumb_func_start sub_08071E5C
sub_08071E5C: @ 0x08071E5C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071EF8 @ =0x09F81000
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071EFC @ =0x00000291
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _08071F00 @ =0x00000283
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071F04 @ =0x09F44F08
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x19
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071F08 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08071F0C @ =0x09F7EDA0
	str r0, [sp, #0x20]
	ldr r0, _08071F10 @ =gUnknown_08104790
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_08071EF8: .4byte 0x09F81000
_08071EFC: .4byte 0x00000291
_08071F00: .4byte 0x00000283
_08071F04: .4byte 0x09F44F08
_08071F08: .4byte 0x09F44FF0
_08071F0C: .4byte 0x09F7EDA0
_08071F10: .4byte gUnknown_08104790

	thumb_func_start sub_08071F14
sub_08071F14: @ 0x08071F14
	push {lr}
	ldr r2, _08071F24 @ =0x09F81000
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071F24: .4byte 0x09F81000

	thumb_func_start sub_08071F28
sub_08071F28: @ 0x08071F28
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071F30
sub_08071F30: @ 0x08071F30
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08071F38
sub_08071F38: @ 0x08071F38
	push {r4, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, #2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071F88 @ =gUnknown_080C6984
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r3, [r0]
	strh r1, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071F80
	movs r0, #0
	strb r0, [r4]
_08071F80:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08071F88: .4byte gUnknown_080C6984

	thumb_func_start sub_08071F8C
sub_08071F8C: @ 0x08071F8C
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08071FB8 @ =0x09F810F8
	str r0, [r4, #0x1c]
	bl sub_08071FF8
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08071FB8: .4byte 0x09F810F8

	thumb_func_start sub_08071FBC
sub_08071FBC: @ 0x08071FBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08071FEC @ =0x09F810F8
	str r0, [r4, #0x1c]
	bl sub_08072028
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072034
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071FEC: .4byte 0x09F810F8

	thumb_func_start sub_08071FF0
sub_08071FF0: @ 0x08071FF0
	ldr r0, _08071FF4 @ =gUnknown_02001F9C
	bx lr
	.align 2, 0
_08071FF4: .4byte gUnknown_02001F9C

	thumb_func_start sub_08071FF8
sub_08071FF8: @ 0x08071FF8
	push {r4, lr}
	ldr r1, _08072020 @ =gUnknown_02001FA8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _08072014
	ldr r4, _08072024 @ =gUnknown_02001FAC
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0807207C
	str r0, [r4]
_08072014:
	ldr r0, _08072024 @ =gUnknown_02001FAC
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08072020: .4byte gUnknown_02001FA8
_08072024: .4byte gUnknown_02001FAC

	thumb_func_start sub_08072028
sub_08072028: @ 0x08072028
	ldr r0, _08072030 @ =gUnknown_02001FAC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08072030: .4byte gUnknown_02001FAC

	thumb_func_start sub_08072034
sub_08072034: @ 0x08072034
	push {r4, r5, lr}
	ldr r1, _08072068 @ =gUnknown_02001FA8
	ldr r0, [r1]
	cmp r0, #0
	ble _08072060
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _08072060
	ldr r5, _0807206C @ =gUnknown_02001FAC
	ldr r2, [r5]
	cmp r2, #0
	beq _0807205E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807205E:
	str r4, [r5]
_08072060:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08072068: .4byte gUnknown_02001FA8
_0807206C: .4byte gUnknown_02001FAC

	thumb_func_start sub_08072070
sub_08072070: @ 0x08072070
	push {lr}
	bl sub_08071FF0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807207C
sub_0807207C: @ 0x0807207C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x24
	adds r6, r0, #0
	bl __4Base
	ldr r0, _080723A0 @ =0x09F81160
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #0
	str r0, [r6, #0x20]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl sub_0806CC10
	mov r8, r0
	movs r1, #0x1e
	bl set_20__6KeyPadUi
	mov r0, r8
	movs r1, #6
	bl set_22__6KeyPadUi
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723A4 @ =0x09F44FF0
	mov sl, r0
	ldr r0, _080723A8 @ =0x09F7FB30
	str r0, [sp, #0x20]
	ldr r0, _080723AC @ =gUnknown_08104FC8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723B0 @ =0x09F7FAB0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723B4 @ =0x09F7FA30
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723B8 @ =0x09F7F9B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723BC @ =0x09F7F930
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723C0 @ =0x09F7F8B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723C4 @ =0x09F7F830
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723C8 @ =0x09F7F7B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723CC @ =0x09F7F730
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723D0 @ =0x09F7F6B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723D4 @ =0x09F7F630
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723D8 @ =0x09F7F5B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723DC @ =0x09F7F530
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723E0 @ =0x09F7F4B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723E4 @ =0x09F7F430
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723E8 @ =0x09F7F3B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723EC @ =0x09F7F330
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723F0 @ =0x09F7F2B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723F4 @ =0x09F7F230
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _080723F8 @ =0x09F7F1B0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r6, #0
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080723A0: .4byte 0x09F81160
_080723A4: .4byte 0x09F44FF0
_080723A8: .4byte 0x09F7FB30
_080723AC: .4byte gUnknown_08104FC8
_080723B0: .4byte 0x09F7FAB0
_080723B4: .4byte 0x09F7FA30
_080723B8: .4byte 0x09F7F9B0
_080723BC: .4byte 0x09F7F930
_080723C0: .4byte 0x09F7F8B0
_080723C4: .4byte 0x09F7F830
_080723C8: .4byte 0x09F7F7B0
_080723CC: .4byte 0x09F7F730
_080723D0: .4byte 0x09F7F6B0
_080723D4: .4byte 0x09F7F630
_080723D8: .4byte 0x09F7F5B0
_080723DC: .4byte 0x09F7F530
_080723E0: .4byte 0x09F7F4B0
_080723E4: .4byte 0x09F7F430
_080723E8: .4byte 0x09F7F3B0
_080723EC: .4byte 0x09F7F330
_080723F0: .4byte 0x09F7F2B0
_080723F4: .4byte 0x09F7F230
_080723F8: .4byte 0x09F7F1B0

	thumb_func_start sub_080723FC
sub_080723FC: @ 0x080723FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08072420 @ =0x09F81160
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _08072410
	bl __builtin_vec_delete
_08072410:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08072420: .4byte 0x09F81160

	thumb_func_start sub_08072424
sub_08072424: @ 0x08072424
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	str r1, [sp]
	adds r4, r0, #0
	adds r4, #0x20
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x20]
	cmp r0, r5
	bge _08072472
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08072444
	adds r0, r1, #0
_08072444:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08072464
	adds r1, r0, #0
_0807245A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0807245A
_08072464:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807246E
	bl __builtin_vec_delete
_0807246E:
	str r5, [r4]
	str r6, [r4, #8]
_08072472:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807248C
sub_0807248C: @ 0x0807248C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp]
	adds r6, r4, #0
	adds r6, #0x20
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _080724EC
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_080724B8:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080724E0
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _080724DA
	adds r2, r0, #0
_080724D0:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080724D0
_080724DA:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _080724EC
_080724E0:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _080724B8
_080724EC:
	ldr r0, [sp]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080724F8
sub_080724F8: @ 0x080724F8
	push {lr}
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	bgt _08072508
	movs r0, #0
	b _08072512
_08072508:
	subs r0, #1
	lsls r0, r0, #2
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldr r0, [r1]
_08072512:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072518
sub_08072518: @ 0x08072518
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	cmp r2, #0
	beq _08072544
	ldr r1, [r2, #0x1c]
	adds r1, #0x50
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_08072544:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807254C
sub_0807254C: @ 0x0807254C
	push {r4, lr}
	ldr r4, _08072560 @ =gUnknown_02001F9C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08072564 @ =0x09F811E0
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08072560: .4byte gUnknown_02001F9C
_08072564: .4byte 0x09F811E0

	thumb_func_start sub_08072568
sub_08072568: @ 0x08072568
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072588
sub_08072588: @ 0x08072588
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080725A8
sub_080725A8: @ 0x080725A8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080725C8
sub_080725C8: @ 0x080725C8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080725E8
sub_080725E8: @ 0x080725E8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072608
sub_08072608: @ 0x08072608
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072628
sub_08072628: @ 0x08072628
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072648
sub_08072648: @ 0x08072648
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08072690
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _08072690
	movs r5, #1
_08072690:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072698
sub_08072698: @ 0x08072698
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080726B8
sub_080726B8: @ 0x080726B8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080726D8
sub_080726D8: @ 0x080726D8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080726F8
sub_080726F8: @ 0x080726F8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072718
sub_08072718: @ 0x08072718
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072738
sub_08072738: @ 0x08072738
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072758
sub_08072758: @ 0x08072758
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072778
sub_08072778: @ 0x08072778
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072798
sub_08072798: @ 0x08072798
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080727B8
sub_080727B8: @ 0x080727B8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080727D8
sub_080727D8: @ 0x080727D8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080727F8
sub_080727F8: @ 0x080727F8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072818
sub_08072818: @ 0x08072818
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072838
sub_08072838: @ 0x08072838
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072858
sub_08072858: @ 0x08072858
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072878
sub_08072878: @ 0x08072878
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072898
sub_08072898: @ 0x08072898
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080728B8
sub_080728B8: @ 0x080728B8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x86
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080728D8
sub_080728D8: @ 0x080728D8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080728F8
sub_080728F8: @ 0x080728F8
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072918
sub_08072918: @ 0x08072918
	push {lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072938
sub_08072938: @ 0x08072938
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _0807295C
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0807A8B8
	cmp r4, r0
	bne _0807295C
	movs r5, #1
_0807295C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072964
sub_08072964: @ 0x08072964
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _080729A8
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0807A8B8
	cmp r4, r0
	bne _080729A8
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _080729A8
	movs r7, #1
_080729A8:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080729B0
sub_080729B0: @ 0x080729B0
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	beq _080729D2
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0807A8B8
	adds r1, r5, #0
	cmp r4, r0
	beq _080729D4
_080729D2:
	movs r1, #0
_080729D4:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080729DC
sub_080729DC: @ 0x080729DC
	push {lr}
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080729F8
sub_080729F8: @ 0x080729F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072A18
sub_08072A18: @ 0x08072A18
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728B8
	adds r4, r0, #0
	movs r5, #0
	b _08072A6C
_08072A28:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072A6A
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072A82
_08072A6A:
	adds r5, #1
_08072A6C:
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072A28
	movs r0, #0
_08072A82:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072A88
sub_08072A88: @ 0x08072A88
	push {lr}
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072AA4
sub_08072AA4: @ 0x08072AA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072AC4
sub_08072AC4: @ 0x08072AC4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728B8
	adds r4, r0, #0
	movs r5, #0
	b _08072B18
_08072AD4:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072B16
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072B2E
_08072B16:
	adds r5, #1
_08072B18:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072AD4
	movs r0, #0
_08072B2E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072B34
sub_08072B34: @ 0x08072B34
	push {lr}
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072B50
sub_08072B50: @ 0x08072B50
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072B70
sub_08072B70: @ 0x08072B70
	push {lr}
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08072B86:
	bl sub_080728B8
	ldr r2, [r0, #0x1c]
	adds r2, #0x90
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	bl sub_080728B8
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08072B86
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08072BBC
sub_08072BBC: @ 0x08072BBC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08072BE0
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08061E0C
	cmp r4, r0
	bne _08072BE0
	movs r5, #1
_08072BE0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072BE8
sub_08072BE8: @ 0x08072BE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _08072C2C
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08061E0C
	cmp r4, r0
	bne _08072C2C
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072C2C
	movs r7, #1
_08072C2C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08072C34
sub_08072C34: @ 0x08072C34
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	beq _08072C56
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08061E0C
	adds r1, r5, #0
	cmp r4, r0
	beq _08072C58
_08072C56:
	movs r1, #0
_08072C58:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072C60
sub_08072C60: @ 0x08072C60
	push {lr}
	bl sub_080728D8
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072C7C
sub_08072C7C: @ 0x08072C7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728D8
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072C9C
sub_08072C9C: @ 0x08072C9C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728D8
	adds r4, r0, #0
	movs r5, #0
	b _08072CF0
_08072CAC:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072CEE
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072D06
_08072CEE:
	adds r5, #1
_08072CF0:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072CAC
	movs r0, #0
_08072D06:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072D0C
sub_08072D0C: @ 0x08072D0C
	push {lr}
	bl sub_080728D8
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08072D22:
	bl sub_080728D8
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	bl sub_080728D8
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08072D22
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08072D58
sub_08072D58: @ 0x08072D58
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08072D7C
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080809E4
	cmp r4, r0
	bne _08072D7C
	movs r5, #1
_08072D7C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072D84
sub_08072D84: @ 0x08072D84
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _08072DC8
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080809E4
	cmp r4, r0
	bne _08072DC8
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072DC8
	movs r7, #1
_08072DC8:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08072DD0
sub_08072DD0: @ 0x08072DD0
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	beq _08072DF2
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080809E4
	adds r1, r5, #0
	cmp r4, r0
	beq _08072DF4
_08072DF2:
	movs r1, #0
_08072DF4:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072DFC
sub_08072DFC: @ 0x08072DFC
	push {lr}
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072E18
sub_08072E18: @ 0x08072E18
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072E38
sub_08072E38: @ 0x08072E38
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728F8
	adds r4, r0, #0
	movs r5, #0
	b _08072E8C
_08072E48:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072E8A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072EA2
_08072E8A:
	adds r5, #1
_08072E8C:
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072E48
	movs r0, #0
_08072EA2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072EA8
sub_08072EA8: @ 0x08072EA8
	push {lr}
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072EC4
sub_08072EC4: @ 0x08072EC4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072EE4
sub_08072EE4: @ 0x08072EE4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728F8
	adds r4, r0, #0
	movs r5, #0
	b _08072F38
_08072EF4:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072F36
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072F4E
_08072F36:
	adds r5, #1
_08072F38:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072EF4
	movs r0, #0
_08072F4E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072F54
sub_08072F54: @ 0x08072F54
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080728F8
	ldr r4, [r0, #0x1c]
	adds r4, #0xa8
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	add r6, sp, #4
	movs r2, #0x88
	lsls r2, r2, #1
	movs r3, #0x20
	adds r1, r6, #0
	strh r2, [r1]
	strh r3, [r6, #2]
	add r2, sp, #8
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	strh r1, [r2, #2]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	movs r1, #0x1e
	str r1, [sp]
	ldr r4, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r4
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072F9C
sub_08072F9C: @ 0x08072F9C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080728F8
	ldr r4, [r0, #0x1c]
	adds r4, #0xa8
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	ldr r2, [r6]
	mov r1, r8
	ldr r3, [r1]
	mov r1, sb
	str r1, [sp]
	ldr r4, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072FE0
sub_08072FE0: @ 0x08072FE0
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _08073010
	ldr r2, [r4, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_08073010:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073018
sub_08073018: @ 0x08073018
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08073036:
	bl sub_080728F8
	ldr r2, [r0, #0x1c]
	adds r2, #0xd0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	bl _call_via_r3
	bl sub_080728F8
	ldr r2, [r0, #0x1c]
	adds r2, #0xc8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08073036
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08073070
sub_08073070: @ 0x08073070
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	mov r3, r8
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r6, #0
	cmp r6, r5
	bgt _080730EE
	add r4, sp, #4
	mov r7, sp
_080730A0:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08069558
	strh r0, [r4]
	movs r1, #2
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #2
	ldrsh r1, [r2, r3]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08069558
	strh r0, [r4, #2]
	mov r0, r8
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	movs r0, #1
	bl sub_0807068C
	adds r6, #1
	cmp r6, r5
	ble _080730A0
_080730EE:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080730FC
sub_080730FC: @ 0x080730FC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _08073146
	adds r5, r2, #0
	cmp r5, #0
	beq _08073114
	movs r5, #1
_08073114:
	str r2, [sp, #4]
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r1, sp, #4
	str r1, [sp]
	ldr r4, [r2, #0x14]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl _call_via_r4
_08073146:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073150
sub_08073150: @ 0x08073150
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08073190
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	str r4, [sp]
	ldr r4, [r2, #0x14]
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl _call_via_r4
_08073190:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08073198
sub_08073198: @ 0x08073198
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _080731AC
	movs r0, #0
	b _080731E6
_080731AC:
	adds r5, r2, #0
	cmp r5, #0
	beq _080731B4
	movs r5, #1
_080731B4:
	str r2, [sp, #4]
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r1, sp, #4
	str r1, [sp]
	ldr r4, [r2, #0x1c]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl _call_via_r4
_080731E6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080731F0
sub_080731F0: @ 0x080731F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08073232
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	str r4, [sp]
	ldr r4, [r2, #0x1c]
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl _call_via_r4
	b _08073234
_08073232:
	movs r0, #0
_08073234:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807323C
sub_0807323C: @ 0x0807323C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x30
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073270
sub_08073270: @ 0x08073270
	push {r4, r5, r6, lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	b _080732B2
_0807328E:
	ldr r1, [r6, #0x10]
	adds r5, r1, #0
	adds r5, #0x30
	movs r0, #0x30
	ldrsh r4, [r1, r0]
	adds r4, r6, r4
	movs r2, #0x28
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0x2c]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_080732B2:
	ldr r1, [r6, #0x10]
	movs r3, #0x20
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807328E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080732CC
sub_080732CC: @ 0x080732CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x3c]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073300
sub_08073300: @ 0x08073300
	push {r4, r5, r6, lr}
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	b _08073342
_0807331E:
	ldr r1, [r6, #0x10]
	adds r5, r1, #0
	adds r5, #0x38
	movs r0, #0x38
	ldrsh r4, [r1, r0]
	adds r4, r6, r4
	movs r2, #0x28
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0x2c]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_08073342:
	ldr r1, [r6, #0x10]
	movs r3, #0x20
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807331E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807335C
sub_0807335C: @ 0x0807335C
	push {r4, r5, r6, lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0807343C
	bl sub_08074614
	cmp r0, #0
	beq _0807338C
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080733A6
_0807338C:
	mov r0, sp
	adds r1, r6, #0
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
	b _0807343C
_080733A6:
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #2
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r5, #0x96
	lsls r5, r5, #2
	b _080733D6
_080733CE:
	adds r4, r0, #0
	movs r0, #1
	bl sub_0807068C
_080733D6:
	subs r5, #1
	cmp r5, #0
	ble _08073408
	bl sub_08074614
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #2
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r1, #0
	cmp r4, #1
	beq _080733CE
	cmp r1, #1
	bne _080733CE
_08073408:
	mov r0, sp
	adds r1, r6, #0
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sp
	bl sub_080702C0
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
_0807343C:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08073444
sub_08073444: @ 0x08073444
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0807345C @ =0x000003A6
	bl sub_080706D0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807345C: .4byte 0x000003A6

	thumb_func_start sub_08073460
sub_08073460: @ 0x08073460
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	mov r8, r0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r4, [sp, #0x24]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r0, sp, #4
	bl sub_08073444
	str r4, [sp]
	mov r0, r8
	add r1, sp, #4
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_080734A0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080734A0
sub_080734A0: @ 0x080734A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	adds r4, r1, #0
	mov sb, r2
	mov r8, r3
	mov r0, sp
	bl sub_0806E274
	movs r6, #0
	add r7, sp, #0xc
	b _080735B2
_080734C0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080734DC @ =0x0000FF10
	cmp r1, r0
	bne _080734E0
	mov r0, sp
	mov r1, sb
	bl sub_0806E374
	b _080735B0
	.align 2, 0
_080734DC: .4byte 0x0000FF10
_080734E0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080734FC @ =0x0000FF11
	cmp r1, r0
	bne _08073500
	mov r0, sp
	mov r1, r8
	bl sub_0806E374
	b _080735B0
	.align 2, 0
_080734FC: .4byte 0x0000FF11
_08073500:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r0, [r0]
	ldr r5, _0807351C @ =0x0000FF12
	cmp r0, r5
	bne _08073520
	mov r0, sp
	ldr r1, [sp, #0x38]
	bl sub_0806E374
	b _080735B0
	.align 2, 0
_0807351C: .4byte 0x0000FF12
_08073520:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r0, [r0]
	cmp r0, r5
	bls _08073558
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08073554 @ =0x0000FF21
	cmp r1, r0
	bhi _08073558
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	adds r1, #0xed
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	b _0807356C
	.align 2, 0
_08073554: .4byte 0x0000FF21
_08073558:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08073584 @ =0x0000FFE0
	cmp r1, r0
	bne _08073588
	adds r0, r7, #0
	movs r1, #2
_0807356C:
	bl sub_0807A8CC
	mov r0, sp
	adds r1, r7, #0
	bl sub_0806E374
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
	b _080735B0
	.align 2, 0
_08073584: .4byte 0x0000FFE0
_08073588:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _0807359C @ =0x0000FFE1
	cmp r1, r0
	bne _080735A0
	adds r6, #1
	b _080735B0
	.align 2, 0
_0807359C: .4byte 0x0000FFE1
_080735A0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	mov r0, sp
	bl sub_0806E34C
_080735B0:
	adds r6, #1
_080735B2:
	adds r0, r4, #0
	bl sub_0806E414
	cmp r6, r0
	bge _080735BE
	b _080734C0
_080735BE:
	mov r0, sl
	mov r1, sp
	bl sub_0806E2B8
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080735E0
sub_080735E0: @ 0x080735E0
	push {r4, r5, r6, lr}
	ldr r4, _08073628 @ =0xFFFFF020
	add sp, r4
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl sub_0806E414
	cmp r0, #0
	ble _0807361C
	mov r0, sp
	bl sub_08083D40
	mov r0, sp
	adds r1, r4, #0
	bl sub_08084038
	mov r0, sp
	adds r1, r5, #0
	bl sub_080840A0
	mov r0, sp
	adds r1, r6, #0
	bl sub_080840B8
	mov r0, sp
	movs r1, #2
	bl sub_08083FE0
_0807361C:
	movs r3, #0xfe
	lsls r3, r3, #4
	add sp, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08073628: .4byte 0xFFFFF020

	thumb_func_start sub_0807362C
sub_0807362C: @ 0x0807362C
	push {r4, r5, r6, lr}
	ldr r4, _08073674 @ =0xFFFFEF74
	add sp, r4
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	mov r0, sp
	bl sub_0808434C
	mov r0, sp
	adds r1, r5, #0
	bl sub_0808477C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080847E4
	mov r0, sp
	adds r1, r6, #0
	bl sub_08084820
	mov r0, sp
	bl sub_08084D68
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl sub_0808470C
	adds r0, r4, #0
	ldr r3, _08073678 @ =0x0000108C
	add sp, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08073674: .4byte 0xFFFFEF74
_08073678: .4byte 0x0000108C

	thumb_func_start sub_0807367C
sub_0807367C: @ 0x0807367C
	push {r4, lr}
	ldr r4, _080736AC @ =0xFFFFE894
	add sp, r4
	adds r4, r0, #0
	bl sub_0806E414
	cmp r0, #0
	ble _080736A2
	mov r0, sp
	bl sub_080856E8
	mov r0, sp
	adds r1, r4, #0
	bl sub_080859EC
	mov r0, sp
	movs r1, #2
	bl sub_08085988
_080736A2:
	ldr r3, _080736B0 @ =0x0000176C
	add sp, r3
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080736AC: .4byte 0xFFFFE894
_080736B0: .4byte 0x0000176C

	thumb_func_start sub_080736B4
sub_080736B4: @ 0x080736B4
	push {r4, r5, lr}
	ldr r4, _080736F0 @ =0xFFFFEB10
	add sp, r4
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806E414
	cmp r0, #0
	ble _080736E4
	mov r0, sp
	bl sub_08084F08
	mov r0, sp
	adds r1, r5, #0
	bl sub_08085130
	mov r0, sp
	adds r1, r4, #0
	bl sub_080851A0
	mov r0, sp
	movs r1, #2
	bl sub_080850E0
_080736E4:
	ldr r3, _080736F4 @ =0x000014F0
	add sp, r3
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080736F0: .4byte 0xFFFFEB10
_080736F4: .4byte 0x000014F0

	thumb_func_start sub_080736F8
sub_080736F8: @ 0x080736F8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0807372C
	movs r0, #0xd4
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r5, #0x20]
	adds r2, #0x40
	adds r3, r5, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sp
	bl sub_08086124
_0807372C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08073734
sub_08073734: @ 0x08073734
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807376A
	movs r6, #0
_0807376A:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r0, sl
	cmp r0, #1
	bne _0807389A
	movs r0, #0xac
	bl __builtin_new
	adds r5, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08085FB0
	adds r0, r7, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807389A
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807389A
	movs r0, #0x4d
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x7b
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x38
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_0807389A:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sb
	subs r0, r1, r0
	cmp r0, #0
	ble _08073902
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08073902
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073902
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x27
	bgt _08073902
	adds r0, r7, #0
	movs r1, #3
	mov r2, sl
	bl sub_08073EE8
_08073902:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sb
	subs r0, r1, r0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807392C
sub_0807392C: @ 0x0807392C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073962
	movs r6, #0
_08073962:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r0, sb
	cmp r0, #1
	bne _08073A92
	movs r0, #0xb8
	bl __builtin_new
	adds r5, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080862D8
	adds r0, r7, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073A92
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08073A92
	movs r0, #0x4d
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x7b
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x38
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_08073A92:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r1, r0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073ABC
sub_08073ABC: @ 0x08073ABC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073AF2
	movs r6, #0
_08073AF2:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r0, sb
	cmp r0, #1
	bne _08073C22
	movs r0, #0xac
	bl __builtin_new
	adds r5, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08085FB0
	adds r0, r7, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073C22
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08073C22
	movs r0, #0x4d
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x7b
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x38
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_08073C22:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r1, r0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073C4C
sub_08073C4C: @ 0x08073C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r1, sb
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	cmp r5, #1
	bne _08073CCC
	movs r0, #0xac
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sb
	mov r2, sp
	bl sub_08085C98
_08073CCC:
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r0, r1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08073CF0
sub_08073CF0: @ 0x08073CF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r1, [r7, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sb
	subs r1, r1, r0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	cmp r5, #1
	bne _08073D72
	movs r0, #0xac
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sb
	mov r2, sp
	bl sub_08085FB0
_08073D72:
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r1, r0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073D98
sub_08073D98: @ 0x08073D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r1, [r7, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r1, sb
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	cmp r5, #1
	bne _08073E18
	movs r0, #0xac
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sb
	mov r2, sp
	bl sub_08085E24
_08073E18:
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r0, r1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08073E3C
sub_08073E3C: @ 0x08073E3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, [r5, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	bne _08073EDE
	ldr r1, [r5, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	adds r4, r0, #0
	cmp r6, #1
	bne _08073EDA
	cmp r4, #0
	beq _08073EDA
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_080730FC
	ldr r2, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_08073EDA:
	movs r0, #1
	b _08073EE0
_08073EDE:
	movs r0, #0
_08073EE0:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08073EE8
sub_08073EE8: @ 0x08073EE8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073F7C
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	adds r3, r0, #0
	cmp r6, #1
	bne _08073F64
	cmp r3, #0
	beq _08073F64
	ldr r2, [r3, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_08073F64:
	ldr r1, [r4, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08073F7E
_08073F7C:
	movs r0, #0
_08073F7E:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073F88
sub_08073F88: @ 0x08073F88
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08061A4C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073F98
sub_08073F98: @ 0x08073F98
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08073FBC
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080803B4
	cmp r4, r0
	bne _08073FBC
	movs r5, #1
_08073FBC:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08073FC4
sub_08073FC4: @ 0x08073FC4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _08074008
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080803B4
	cmp r4, r0
	bne _08074008
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08074008
	movs r7, #1
_08074008:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08074010
sub_08074010: @ 0x08074010
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08064950
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074020
sub_08074020: @ 0x08074020
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08074044
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08082ADC
	cmp r4, r0
	bne _08074044
	movs r5, #1
_08074044:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807404C
sub_0807404C: @ 0x0807404C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _08074090
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08082ADC
	cmp r4, r0
	bne _08074090
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08074090
	movs r7, #1
_08074090:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08074098
sub_08074098: @ 0x08074098
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08065148
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080740AC
sub_080740AC: @ 0x080740AC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _080740D0
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806496C
	cmp r4, r0
	bne _080740D0
	movs r5, #1
_080740D0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080740D8
sub_080740D8: @ 0x080740D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _0807411C
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806496C
	cmp r4, r0
	bne _0807411C
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _0807411C
	movs r7, #1
_0807411C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08074124
sub_08074124: @ 0x08074124
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08062368
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074134
sub_08074134: @ 0x08074134
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08074158
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08080788
	cmp r4, r0
	bne _08074158
	movs r5, #1
_08074158:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08074160
sub_08074160: @ 0x08074160
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _080741A4
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08080788
	cmp r4, r0
	bne _080741A4
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _080741A4
	movs r7, #1
_080741A4:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080741AC
sub_080741AC: @ 0x080741AC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08064574
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080741BC
sub_080741BC: @ 0x080741BC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _080741E0
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08082020
	cmp r4, r0
	bne _080741E0
	movs r5, #1
_080741E0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080741E8
sub_080741E8: @ 0x080741E8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _0807422C
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08082020
	cmp r4, r0
	bne _0807422C
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _0807422C
	movs r7, #1
_0807422C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08074234
sub_08074234: @ 0x08074234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08075BB0
	movs r4, #0
	mov r0, sp
	bl sub_08075DD4
	cmp r0, #0
	bne _080742C6
	movs r6, #0
	b _080742A4
_08074282:
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	mov r0, sp
	adds r1, r6, #0
	bl sub_080766B8
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_080742A4:
	mov r0, sp
	bl sub_080766B4
	cmp r6, r0
	blt _08074282
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080742C6:
	cmp r7, #0
	beq _080742DA
	ldr r1, [r7, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080742DA:
	mov r0, sp
	movs r1, #2
	bl sub_08075BF8
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080742EC
sub_080742EC: @ 0x080742EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r4, #0
	beq _08074330
	ldr r1, [r4, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08074330:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08074338
sub_08074338: @ 0x08074338
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	cmp r1, #0
	ble _08074360
	adds r6, r2, #0
	adds r4, r1, #0
_08074344:
	ldr r2, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	ldm r6!, {r1}
	ldr r2, [r2, #4]
	bl _call_via_r2
	subs r4, #1
	cmp r4, #0
	bne _08074344
_08074360:
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r5, #0
	beq _0807438C
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807438C:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08074394
sub_08074394: @ 0x08074394
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r6, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r5, #0
	cmp r5, r6
	bgt _08074404
_080743BC:
	ldr r0, [sp]
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08069558
	adds r4, r0, #0
	mov r0, sb
	cmp r0, #1
	bne _080743DA
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080743DA:
	mov r0, r8
	cmp r0, #1
	bne _080743EA
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080743EA:
	cmp r7, #1
	bne _080743F8
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080743F8:
	movs r0, #1
	bl sub_0807068C
	adds r5, #1
	cmp r5, r6
	ble _080743BC
_08074404:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08074414
sub_08074414: @ 0x08074414
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r5, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r6, #0
	cmp r6, r5
	bgt _08074484
_0807443C:
	subs r2, r5, r6
	ldr r0, [sp]
	mov r1, sl
	adds r3, r5, #0
	bl sub_08069558
	adds r4, r0, #0
	mov r0, sb
	cmp r0, #1
	bne _0807445A
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_0807445A:
	mov r0, r8
	cmp r0, #1
	bne _0807446A
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_0807446A:
	cmp r7, #1
	bne _08074478
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_08074478:
	movs r0, #1
	bl sub_0807068C
	adds r6, #1
	cmp r6, r5
	ble _0807443C
_08074484:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08074494
sub_08074494: @ 0x08074494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r5, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r6, #0
	cmp r6, r5
	bgt _08074508
_080744BC:
	subs r2, r5, r6
	ldr r0, [sp]
	mov r1, sl
	adds r3, r5, #0
	bl sub_08069558
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r0, r1
	mov r0, sb
	cmp r0, #1
	bne _080744DE
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080744DE:
	mov r1, r8
	cmp r1, #1
	bne _080744EE
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080744EE:
	cmp r7, #1
	bne _080744FC
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080744FC:
	movs r0, #1
	bl sub_0807068C
	adds r6, #1
	cmp r6, r5
	ble _080744BC
_08074508:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08074518
sub_08074518: @ 0x08074518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r6, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r5, #0
	cmp r5, r6
	bgt _0807458C
_08074540:
	ldr r0, [sp]
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08069558
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r0, r1
	mov r0, sb
	cmp r0, #1
	bne _08074562
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_08074562:
	mov r1, r8
	cmp r1, #1
	bne _08074572
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_08074572:
	cmp r7, #1
	bne _08074580
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_08074580:
	movs r0, #1
	bl sub_0807068C
	adds r5, #1
	cmp r5, r6
	ble _08074540
_0807458C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807459C
sub_0807459C: @ 0x0807459C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r1
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	cmp r6, #0
	beq _080745E6
	bl sub_080725C8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0x60
	bl __builtin_new
	adds r1, r6, #0
	bl sub_0807466C
	adds r2, r0, #0
	mov r0, sp
	strb r7, [r0]
	ldr r4, [r4, #4]
	adds r0, r5, #0
	mov r1, r8
	mov r3, sb
	bl _call_via_r4
	b _08074604
_080745E6:
	bl sub_080725C8
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	mov r1, sp
	strb r6, [r1]
	ldr r4, [r2, #4]
	mov r1, r8
	movs r2, #0
	mov r3, sb
	bl _call_via_r4
_08074604:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08074614
sub_08074614: @ 0x08074614
	push {lr}
	bl sub_080725C8
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074630
sub_08074630: @ 0x08074630
	ldr r0, _08074634 @ =gUnknown_02002134
	bx lr
	.align 2, 0
_08074634: .4byte gUnknown_02002134

	thumb_func_start sub_08074638
sub_08074638: @ 0x08074638
	push {lr}
	bl sub_08074630
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074644
sub_08074644: @ 0x08074644
	ldr r0, _08074648 @ =gUnknown_02002128
	bx lr
	.align 2, 0
_08074648: .4byte gUnknown_02002128

	thumb_func_start sub_0807464C
sub_0807464C: @ 0x0807464C
	push {lr}
	bl sub_08074644
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074658
sub_08074658: @ 0x08074658
	ldr r0, _0807465C @ =gUnknown_0200211C
	bx lr
	.align 2, 0
_0807465C: .4byte gUnknown_0200211C

	thumb_func_start sub_08074660
sub_08074660: @ 0x08074660
	push {lr}
	bl sub_08074658
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807466C
sub_0807466C: @ 0x0807466C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0806FF6C
	ldr r0, _080746FC @ =0x09F812F8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08074710
	str r0, [r5, #0x3c]
	movs r1, #0
	str r1, [r5, #0x40]
	str r1, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x48
	strb r1, [r0]
	str r1, [r5, #0x4c]
	adds r0, #8
	movs r2, #0
	strh r1, [r0]
	movs r0, #2
	str r0, [r5, #0x58]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r2, [r0]
	bl get__10IrcManager
	ldr r1, _08074700 @ =gUnknown_08105CD0
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r5, #0
	bl sub_08069A50__3IrcUiG5Intr2
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08074704 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08074708 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0807470C @ =gUnknown_08105CD8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_080746FC: .4byte 0x09F812F8
_08074700: .4byte gUnknown_08105CD0
_08074704: .4byte 0x09F44FF0
_08074708: .4byte 0x09F7ED20
_0807470C: .4byte gUnknown_08105CD8

	thumb_func_start sub_08074710
sub_08074710: @ 0x08074710
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _08074724 @ =gUnknown_080EC578
_0807471A:
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _08074728
	adds r0, r2, #0
	b _08074732
	.align 2, 0
_08074724: .4byte gUnknown_080EC578
_08074728:
	adds r2, #8
	adds r3, #1
	cmp r3, #0x76
	ble _0807471A
	ldr r0, _08074738 @ =gUnknown_080EC578
_08074732:
	pop {r1}
	bx r1
	.align 2, 0
_08074738: .4byte gUnknown_080EC578

	thumb_func_start sub_0807473C
sub_0807473C: @ 0x0807473C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08074764 @ =0x09F812F8
	str r0, [r4, #0x1c]
	bl get__10IrcManager
	ldr r1, _08074768 @ =gUnknown_08105CD0
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069C84__3IrcUiG5Intr2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FFA8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074764: .4byte 0x09F812F8
_08074768: .4byte gUnknown_08105CD0

	thumb_func_start sub_0807476C
sub_0807476C: @ 0x0807476C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080747C6
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x68
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_080747CC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080747C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080747CC
sub_080747CC: @ 0x080747CC
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _080747E0 @ =gUnknown_081135A8
_080747D6:
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _080747E4
	ldrh r0, [r2]
	b _080747EE
	.align 2, 0
_080747E0: .4byte gUnknown_081135A8
_080747E4:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x38
	ble _080747D6
	movs r0, #0
_080747EE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080747F4
sub_080747F4: @ 0x080747F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0807484C
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x68
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08074854
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_0807484C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08074854
sub_08074854: @ 0x08074854
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _08074868 @ =gUnknown_081135A8
_0807485E:
	ldrh r0, [r2]
	cmp r0, r1
	bne _0807486C
	ldrh r0, [r2, #2]
	b _08074876
	.align 2, 0
_08074868: .4byte gUnknown_081135A8
_0807486C:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x38
	ble _0807485E
	movs r0, #0
_08074876:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807487C
sub_0807487C: @ 0x0807487C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r1, #0x64
	muls r2, r1, r2
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_0807066C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074898
sub_08074898: @ 0x08074898
	ldr r0, [r0, #0x58]
	bx lr

	thumb_func_start sub_0807489C
sub_0807489C: @ 0x0807489C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #1
	movs r1, #0x18
	bl sub_0807067C
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x40]
	adds r0, #1
	str r0, [r4, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080748C8
sub_080748C8: @ 0x080748C8
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x48
	ldr r0, [r2, #0x44]
	ldrb r1, [r4]
	cmp r0, r1
	bhs _08074900
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x4c]
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, [r2, #0x40]
	str r0, [r2, #0x4c]
	ldr r1, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x18
	subs r1, r1, r0
	adds r0, r2, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r0, [r2, #0x44]
	strh r0, [r3]
_08074900:
	ldr r0, [r2, #0x44]
	strb r0, [r4]
	ldr r6, [r2, #0x58]
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	movs r1, #1
	cmp r1, r0
	bge _08074914
	adds r1, r0, #0
_08074914:
	adds r4, r1, #0
	ldr r0, [r2, #0x44]
	adds r3, r0, #0
	muls r3, r4, r3
	ldr r5, [r2, #0x3c]
	ldrb r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	bls _08074936
	subs r1, r4, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	blo _0807493A
_08074936:
	movs r0, #0
	b _08074958
_0807493A:
	ldrb r1, [r5, #5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	bls _08074952
	subs r1, r4, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	blo _08074956
_08074952:
	movs r0, #1
	b _08074958
_08074956:
	movs r0, #2
_08074958:
	str r0, [r2, #0x58]
	cmp r6, #2
	bne _08074998
	ldr r0, [r2, #0x58]
	cmp r0, #2
	beq _080749C8
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r2, r5
	mov r0, sp
	bl __4Base
	ldr r6, _08074990 @ =0x09F44FF0
	ldr r0, _08074994 @ =0x09F81278
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	b _080749C8
	.align 2, 0
_08074990: .4byte 0x09F44FF0
_08074994: .4byte 0x09F81278
_08074998:
	ldr r0, [r2, #0x58]
	cmp r0, #2
	bne _080749C8
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r2, r5
	mov r0, sp
	bl __4Base
	ldr r6, _080749D0 @ =0x09F44FF0
	ldr r0, _080749D4 @ =0x09F811F8
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_080749C8:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080749D0: .4byte 0x09F44FF0
_080749D4: .4byte 0x09F811F8

	thumb_func_start sub_080749D8
sub_080749D8: @ 0x080749D8
	push {r4, lr}
	ldr r4, _08074A04 @ =gUnknown_02002134
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A08 @ =0x09F812E0
	str r0, [r4, #8]
	ldr r4, _08074A0C @ =gUnknown_02002128
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A10 @ =0x09F81260
	str r0, [r4, #8]
	ldr r4, _08074A14 @ =gUnknown_0200211C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A18 @ =0x09F81400
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074A04: .4byte gUnknown_02002134
_08074A08: .4byte 0x09F812E0
_08074A0C: .4byte gUnknown_02002128
_08074A10: .4byte 0x09F81260
_08074A14: .4byte gUnknown_0200211C
_08074A18: .4byte 0x09F81400

	thumb_func_start sub_08074A1C
sub_08074A1C: @ 0x08074A1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FF38
	ldr r0, _08074A30 @ =0x09F812F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08074A30: .4byte 0x09F812F8

	thumb_func_start sub_08074A34
sub_08074A34: @ 0x08074A34
	ldr r0, _08074A38 @ =gUnknown_0200217C
	bx lr
	.align 2, 0
_08074A38: .4byte gUnknown_0200217C

	thumb_func_start sub_08074A3C
sub_08074A3C: @ 0x08074A3C
	push {lr}
	bl sub_08074A34
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A48
sub_08074A48: @ 0x08074A48
	ldr r0, _08074A4C @ =gUnknown_02002170
	bx lr
	.align 2, 0
_08074A4C: .4byte gUnknown_02002170

	thumb_func_start sub_08074A50
sub_08074A50: @ 0x08074A50
	push {lr}
	bl sub_08074A48
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A5C
sub_08074A5C: @ 0x08074A5C
	ldr r0, _08074A60 @ =gUnknown_02002164
	bx lr
	.align 2, 0
_08074A60: .4byte gUnknown_02002164

	thumb_func_start sub_08074A64
sub_08074A64: @ 0x08074A64
	push {lr}
	bl sub_08074A5C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A70
sub_08074A70: @ 0x08074A70
	ldr r0, _08074A74 @ =gUnknown_02002158
	bx lr
	.align 2, 0
_08074A74: .4byte gUnknown_02002158

	thumb_func_start sub_08074A78
sub_08074A78: @ 0x08074A78
	push {lr}
	bl sub_08074A70
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A84
sub_08074A84: @ 0x08074A84
	ldr r0, _08074A88 @ =gUnknown_0200214C
	bx lr
	.align 2, 0
_08074A88: .4byte gUnknown_0200214C

	thumb_func_start sub_08074A8C
sub_08074A8C: @ 0x08074A8C
	push {lr}
	bl sub_08074A84
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A98
sub_08074A98: @ 0x08074A98
	ldr r0, _08074A9C @ =gUnknown_02002140
	bx lr
	.align 2, 0
_08074A9C: .4byte gUnknown_02002140

	thumb_func_start sub_08074AA0
sub_08074AA0: @ 0x08074AA0
	push {lr}
	bl sub_08074A98
	pop {r1}
	bx r1
	.align 2, 0

