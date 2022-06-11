.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806D2CC
sub_0806D2CC: @ 0x0806D2CC
	push {r4, lr}
	ldr r4, _0806D3D0 @ =gUnknown_02001E20
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3D4 @ =vt_09F7FB98
	str r0, [r4, #8]
	ldr r4, _0806D3D8 @ =gUnknown_02001E14
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3DC @ =vt_09F7FB18
	str r0, [r4, #8]
	ldr r4, _0806D3E0 @ =gUnknown_02001E08
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3E4 @ =vt_09F7FA98
	str r0, [r4, #8]
	ldr r4, _0806D3E8 @ =gUnknown_02001DFC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3EC @ =vt_09F7FA18
	str r0, [r4, #8]
	ldr r4, _0806D3F0 @ =gUnknown_02001DF0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3F4 @ =vt_09F7F998
	str r0, [r4, #8]
	ldr r4, _0806D3F8 @ =gUnknown_02001DE4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D3FC @ =vt_09F7F918
	str r0, [r4, #8]
	ldr r4, _0806D400 @ =gUnknown_02001DD8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D404 @ =vt_09F7F898
	str r0, [r4, #8]
	ldr r4, _0806D408 @ =gUnknown_02001DCC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D40C @ =vt_09F7F818
	str r0, [r4, #8]
	ldr r4, _0806D410 @ =gUnknown_02001DC0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D414 @ =vt_09F7F798
	str r0, [r4, #8]
	ldr r4, _0806D418 @ =gUnknown_02001DB4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D41C @ =vt_09F7F718
	str r0, [r4, #8]
	ldr r4, _0806D420 @ =gUnknown_02001DA8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D424 @ =vt_09F7F698
	str r0, [r4, #8]
	ldr r4, _0806D428 @ =gUnknown_02001D9C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D42C @ =vt_09F7F618
	str r0, [r4, #8]
	ldr r4, _0806D430 @ =gUnknown_02001D90
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D434 @ =vt_09F7F598
	str r0, [r4, #8]
	ldr r4, _0806D438 @ =gUnknown_02001D84
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D43C @ =vt_09F7F518
	str r0, [r4, #8]
	ldr r4, _0806D440 @ =gUnknown_02001D78
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D444 @ =vt_09F7F498
	str r0, [r4, #8]
	ldr r4, _0806D448 @ =gUnknown_02001D6C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D44C @ =vt_09F7F418
	str r0, [r4, #8]
	ldr r4, _0806D450 @ =gUnknown_02001D60
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D454 @ =vt_09F7F398
	str r0, [r4, #8]
	ldr r4, _0806D458 @ =gUnknown_02001D54
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D45C @ =vt_09F7F318
	str r0, [r4, #8]
	ldr r4, _0806D460 @ =gUnknown_02001D48
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D464 @ =vt_09F7F298
	str r0, [r4, #8]
	ldr r4, _0806D468 @ =gUnknown_02001D3C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D46C @ =vt_09F7F218
	str r0, [r4, #8]
	ldr r4, _0806D470 @ =gUnknown_02001D30
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806D474 @ =vt_09F7FC18
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D3D0: .4byte gUnknown_02001E20
_0806D3D4: .4byte vt_09F7FB98
_0806D3D8: .4byte gUnknown_02001E14
_0806D3DC: .4byte vt_09F7FB18
_0806D3E0: .4byte gUnknown_02001E08
_0806D3E4: .4byte vt_09F7FA98
_0806D3E8: .4byte gUnknown_02001DFC
_0806D3EC: .4byte vt_09F7FA18
_0806D3F0: .4byte gUnknown_02001DF0
_0806D3F4: .4byte vt_09F7F998
_0806D3F8: .4byte gUnknown_02001DE4
_0806D3FC: .4byte vt_09F7F918
_0806D400: .4byte gUnknown_02001DD8
_0806D404: .4byte vt_09F7F898
_0806D408: .4byte gUnknown_02001DCC
_0806D40C: .4byte vt_09F7F818
_0806D410: .4byte gUnknown_02001DC0
_0806D414: .4byte vt_09F7F798
_0806D418: .4byte gUnknown_02001DB4
_0806D41C: .4byte vt_09F7F718
_0806D420: .4byte gUnknown_02001DA8
_0806D424: .4byte vt_09F7F698
_0806D428: .4byte gUnknown_02001D9C
_0806D42C: .4byte vt_09F7F618
_0806D430: .4byte gUnknown_02001D90
_0806D434: .4byte vt_09F7F598
_0806D438: .4byte gUnknown_02001D84
_0806D43C: .4byte vt_09F7F518
_0806D440: .4byte gUnknown_02001D78
_0806D444: .4byte vt_09F7F498
_0806D448: .4byte gUnknown_02001D6C
_0806D44C: .4byte vt_09F7F418
_0806D450: .4byte gUnknown_02001D60
_0806D454: .4byte vt_09F7F398
_0806D458: .4byte gUnknown_02001D54
_0806D45C: .4byte vt_09F7F318
_0806D460: .4byte gUnknown_02001D48
_0806D464: .4byte vt_09F7F298
_0806D468: .4byte gUnknown_02001D3C
_0806D46C: .4byte vt_09F7F218
_0806D470: .4byte gUnknown_02001D30
_0806D474: .4byte vt_09F7FC18

	thumb_func_start sub_0806D478
sub_0806D478: @ 0x0806D478
	ldr r1, _0806D488 @ =vt_09F7FC30
	str r1, [r0, #8]
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0806D488: .4byte vt_09F7FC30

	thumb_func_start sub_0806D48C
sub_0806D48C: @ 0x0806D48C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806D4AC @ =vt_09F7FC30
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
_0806D4AC: .4byte vt_09F7FC30

	thumb_func_start sub_0806D4B0
sub_0806D4B0: @ 0x0806D4B0
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806D4CC @ =vt_09F7FC30
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
_0806D4CC: .4byte vt_09F7FC30

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
	ldr r1, _0806D558 @ =vt_09F7FC40
	str r1, [r0, #0x10]
	movs r1, #0
	strh r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0806D558: .4byte vt_09F7FC40

	thumb_func_start sub_0806D55C
sub_0806D55C: @ 0x0806D55C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806D57C @ =vt_09F7FC40
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
_0806D57C: .4byte vt_09F7FC40

	thumb_func_start sub_0806D580
sub_0806D580: @ 0x0806D580
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806D5A8 @ =vt_09F7FC40
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
_0806D5A8: .4byte vt_09F7FC40

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
	ldr r0, _0806D6D0 @ =vt_09F7FC50
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
	ldr r6, _0806D6D4 @ =_vt.3Unk
	ldr r0, _0806D6D8 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0806D6DC @ =gUnknown_080FFD3C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
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
_0806D6D0: .4byte vt_09F7FC50
_0806D6D4: .4byte _vt.3Unk
_0806D6D8: .4byte _vt.8AppClock
_0806D6DC: .4byte gUnknown_080FFD3C

	thumb_func_start sub_0806D6E0
sub_0806D6E0: @ 0x0806D6E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806D740 @ =vt_09F7FC50
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
_0806D740: .4byte vt_09F7FC50

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
	ldr r0, _0806D990 @ =vt_09F7FD18
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
	ldr r6, _0806D998 @ =_vt.3Unk
	ldr r0, _0806D99C @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0806D9A0 @ =gUnknown_080FFE6C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
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
_0806D990: .4byte vt_09F7FD18
_0806D994: .4byte 0xFFFF0000
_0806D998: .4byte _vt.3Unk
_0806D99C: .4byte _vt.8AppClock
_0806D9A0: .4byte gUnknown_080FFE6C

	thumb_func_start sub_0806D9A4
sub_0806D9A4: @ 0x0806D9A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806D9F0 @ =vt_09F7FD18
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
_0806D9F0: .4byte vt_09F7FD18

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
	ldr r0, _0806DD34 @ =vt_09F7FE10
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
	ldr r6, _0806DD3C @ =_vt.3Unk
	ldr r0, _0806DD40 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0806DD44 @ =gUnknown_080FFF9C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
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
_0806DD34: .4byte vt_09F7FE10
_0806DD38: .4byte 0xFFFF0000
_0806DD3C: .4byte _vt.3Unk
_0806DD40: .4byte _vt.8AppClock
_0806DD44: .4byte gUnknown_080FFF9C

	thumb_func_start sub_0806DD48
sub_0806DD48: @ 0x0806DD48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806DD9C @ =vt_09F7FE10
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
_0806DD9C: .4byte vt_09F7FE10

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
	bl Div
	adds r4, r0, #0
	cmp r4, #0
	bgt _0806E1D4
	adds r0, r6, #0
	bl __3Msg
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
	bl _._3Msg
	adds r0, r7, #0
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start genMisctextMsg__3MsgPvUi
genMisctextMsg__3MsgPvUi: @ 0x0806E238
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
	bl __3MsgPCvUi
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806E270: .4byte 0x0000FFFF

	thumb_func_start __3Msg
__3Msg: @ 0x0806E274
	ldr r1, _0806E284 @ =_vt.3Msg
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_0806E284: .4byte _vt.3Msg

	thumb_func_start __3MsgPCvUi
__3MsgPCvUi: @ 0x0806E288
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _0806E2B4 @ =_vt.3Msg
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
_0806E2B4: .4byte _vt.3Msg

	thumb_func_start sub_0806E2B8
sub_0806E2B8: @ 0x0806E2B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806E2E4 @ =_vt.3Msg
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
_0806E2E4: .4byte _vt.3Msg

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

	thumb_func_start _._3Msg
_._3Msg: @ 0x0806E308
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E330 @ =_vt.3Msg
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
_0806E330: .4byte _vt.3Msg

	thumb_func_start sub_0806E334__3Msgi
sub_0806E334__3Msgi: @ 0x0806E334
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

	thumb_func_start len__3Msg
len__3Msg: @ 0x0806E414
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
	ldr r0, _0806E608 @ =vt_09F7FF50
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
	ldr r6, _0806E60C @ =_vt.3Unk
	ldr r0, _0806E610 @ =_vt.12PostAppClock
	str r0, [sp, #0x20]
	ldr r0, _0806E614 @ =gUnknown_0810019C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
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
_0806E608: .4byte vt_09F7FF50
_0806E60C: .4byte _vt.3Unk
_0806E610: .4byte _vt.12PostAppClock
_0806E614: .4byte gUnknown_0810019C

	thumb_func_start sub_0806E618
sub_0806E618: @ 0x0806E618
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E63C @ =vt_09F7FF50
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
_0806E63C: .4byte vt_09F7FF50

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
	ldr r0, _0806E81C @ =vt_09F7FFC8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E818: .4byte gUnknown_02001E58
_0806E81C: .4byte vt_09F7FFC8
