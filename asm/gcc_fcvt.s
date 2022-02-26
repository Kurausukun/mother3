.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08069190
sub_08069190: @ 0x08069190
	ldr r1, _0806919C @ =0x54442D11
	ldr r0, _08069198 @ =0x400921FB
	bx lr
	.align 2, 0
_08069198: .4byte 0x400921FB
_0806919C: .4byte 0x54442D11

	thumb_func_start sub_080691A0
sub_080691A0: @ 0x080691A0
	ldr r1, _080691AC @ =0x54442D11
	ldr r0, _080691A8 @ =0x3FF921FB
	bx lr
	.align 2, 0
_080691A8: .4byte 0x3FF921FB
_080691AC: .4byte 0x54442D11

	thumb_func_start sub_080691B0
sub_080691B0: @ 0x080691B0
	ldr r1, _080691BC @ =0x54442D11
	ldr r0, _080691B8 @ =0x3FE921FB
	bx lr
	.align 2, 0
_080691B8: .4byte 0x3FE921FB
_080691BC: .4byte 0x54442D11

	thumb_func_start sub_080691C0
sub_080691C0: @ 0x080691C0
	push {lr}
	cmp r1, #0
	beq _080691CA
	bl __divsi3
_080691CA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080691D0
sub_080691D0: @ 0x080691D0
	push {lr}
	cmp r1, #0
	beq _080691DA
	bl __modsi3
_080691DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080691E0
sub_080691E0: @ 0x080691E0
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r3, _08069204 @ =0x00000000
	ldr r2, _08069200 @ =0x00000000
	bl __ltdf2
	cmp r0, #0
	blt _08069210
	ldr r2, _08069208 @ =0x3FE00000
	ldr r3, _0806920C @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	b _0806921C
	.align 2, 0
_08069200: .4byte 0x00000000
_08069204: .4byte 0x00000000
_08069208: .4byte 0x3FE00000
_0806920C: .4byte 0x00000000
_08069210:
	ldr r3, _0806922C @ =0x00000000
	ldr r2, _08069228 @ =0x3FE00000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
_0806921C:
	bl __fixdfsi
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08069228: .4byte 0x3FE00000
_0806922C: .4byte 0x00000000

	thumb_func_start sub_08069230
sub_08069230: @ 0x08069230
	push {lr}
	ldr r3, _0806924C @ =0x54442D11
	ldr r2, _08069248 @ =0x400921FB
	bl __muldf3
	ldr r2, _08069250 @ =0x40668000
	ldr r3, _08069254 @ =0x00000000
	bl __divdf3
	pop {r2}
	bx r2
	.align 2, 0
_08069248: .4byte 0x400921FB
_0806924C: .4byte 0x54442D11
_08069250: .4byte 0x40668000
_08069254: .4byte 0x00000000

	thumb_func_start sub_08069258
sub_08069258: @ 0x08069258
	push {lr}
	ldr r3, _08069274 @ =0x00000000
	ldr r2, _08069270 @ =0x40668000
	bl __muldf3
	ldr r2, _08069278 @ =0x400921FB
	ldr r3, _0806927C @ =0x54442D11
	bl __divdf3
	pop {r2}
	bx r2
	.align 2, 0
_08069270: .4byte 0x40668000
_08069274: .4byte 0x00000000
_08069278: .4byte 0x400921FB
_0806927C: .4byte 0x54442D11

	thumb_func_start sub_08069280
sub_08069280: @ 0x08069280
	ldr r1, _0806928C @ =0x00000000
	ldr r0, _08069288 @ =0x00000000
	bx lr
	.align 2, 0
_08069288: .4byte 0x00000000
_0806928C: .4byte 0x00000000

	thumb_func_start sub_08069290
sub_08069290: @ 0x08069290
	ldr r1, _0806929C @ =0x00000000
	ldr r0, _08069298 @ =0x3FF00000
	bx lr
	.align 2, 0
_08069298: .4byte 0x3FF00000
_0806929C: .4byte 0x00000000

	thumb_func_start sub_080692A0
sub_080692A0: @ 0x080692A0
	ldr r1, _080692AC @ =0x00000000
	ldr r0, _080692A8 @ =0x00000000
	bx lr
	.align 2, 0
_080692A8: .4byte 0x00000000
_080692AC: .4byte 0x00000000

	thumb_func_start sub_080692B0
sub_080692B0: @ 0x080692B0
	ldr r1, _080692BC @ =0x00000000
	ldr r0, _080692B8 @ =0x00000000
	bx lr
	.align 2, 0
_080692B8: .4byte 0x00000000
_080692BC: .4byte 0x00000000

	thumb_func_start sub_080692C0
sub_080692C0: @ 0x080692C0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r7, _08069304 @ =0x0000026F
	ldr r0, _08069308 @ =gUnknown_02001080
	mov ip, r0
	ldr r6, _0806930C @ =0xFFFF0000
	ldr r4, _08069310 @ =0x00010DCD
	ldr r5, _08069314 @ =gUnknown_02001084
_080692D2:
	adds r1, r2, #0
	ands r1, r6
	str r1, [r5]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r2, r0, #1
	adds r0, r2, #0
	ands r0, r6
	lsrs r0, r0, #0x10
	orrs r1, r0
	stm r5!, {r1}
	adds r0, r2, #0
	muls r0, r4, r0
	adds r2, r0, #1
	adds r3, #1
	cmp r3, r7
	bls _080692D2
	movs r0, #0x9c
	lsls r0, r0, #2
	mov r1, ip
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069304: .4byte 0x0000026F
_08069308: .4byte gUnknown_02001080
_0806930C: .4byte 0xFFFF0000
_08069310: .4byte 0x00010DCD
_08069314: .4byte gUnknown_02001084

	thumb_func_start sub_08069318
sub_08069318: @ 0x08069318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _08069420 @ =gUnknown_080FEBA8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _08069424 @ =gUnknown_02001080
	ldr r2, [r0]
	ldr r1, _08069428 @ =0x0000026F
	mov r8, r0
	cmp r2, r1
	bls _080693E8
	ldr r0, _0806942C @ =0x00000271
	cmp r2, r0
	bne _08069342
	ldr r0, _08069430 @ =0x00001105
	bl sub_080692C0
_08069342:
	movs r3, #0
	ldr r5, _08069434 @ =gUnknown_02001084
	adds r7, r5, #0
_08069348:
	ldr r4, [r5]
	movs r6, #0x80
	lsls r6, r6, #0x18
	ands r4, r6
	ldr r0, [r5, #4]
	ldr r1, _08069438 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	ldr r1, _0806943C @ =0x0000018D
	adds r0, r3, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	lsrs r2, r4, #1
	ldr r1, [r0]
	eors r1, r2
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, sp
	ldr r0, [r0]
	eors r1, r0
	stm r5!, {r1}
	adds r3, #1
	cmp r3, #0xe2
	bls _08069348
	ldr r5, _08069440 @ =0x0000026E
	cmp r3, r5
	bhi _080693B2
	ldr r1, _08069434 @ =gUnknown_02001084
	lsls r0, r3, #2
	adds r2, r0, r1
	ldr r4, _08069444 @ =0xFFFFFC74
	adds r0, r0, r4
	adds r7, r0, r1
_0806938C:
	ldr r4, [r2]
	ands r4, r6
	ldr r0, [r2, #4]
	ldr r1, _08069438 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	lsrs r0, r4, #1
	ldm r7!, {r1}
	eors r1, r0
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, sp
	ldr r0, [r0]
	eors r1, r0
	stm r2!, {r1}
	adds r3, #1
	cmp r3, r5
	bls _0806938C
_080693B2:
	ldr r2, _08069434 @ =gUnknown_02001084
	ldr r0, _08069448 @ =0x000009BC
	adds r3, r2, r0
	ldr r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r4, r0
	ldr r0, [r2]
	ldr r1, _08069438 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r2, r2, r1
	lsrs r0, r4, #1
	ldr r1, [r2]
	eors r1, r0
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, sp
	ldr r0, [r0]
	eors r1, r0
	str r1, [r3]
	movs r0, #0
	mov r4, r8
	str r0, [r4]
_080693E8:
	ldr r2, _08069434 @ =gUnknown_02001084
	mov r0, r8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r1, #1
	mov r0, r8
	str r1, [r0]
	lsrs r0, r4, #0xb
	eors r4, r0
	lsls r0, r4, #7
	ldr r1, _0806944C @ =0x9D2C5680
	ands r0, r1
	eors r4, r0
	lsls r0, r4, #0xf
	ldr r1, _08069450 @ =0xEFC60000
	ands r0, r1
	eors r4, r0
	lsrs r0, r4, #0x12
	eors r4, r0
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08069420: .4byte gUnknown_080FEBA8
_08069424: .4byte gUnknown_02001080
_08069428: .4byte 0x0000026F
_0806942C: .4byte 0x00000271
_08069430: .4byte 0x00001105
_08069434: .4byte gUnknown_02001084
_08069438: .4byte 0x7FFFFFFF
_0806943C: .4byte 0x0000018D
_08069440: .4byte 0x0000026E
_08069444: .4byte 0xFFFFFC74
_08069448: .4byte 0x000009BC
_0806944C: .4byte 0x9D2C5680
_08069450: .4byte 0xEFC60000

	thumb_func_start randU32
randU32: @ 0x08069454
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r4, r1, r5
	adds r4, #1
	bl sub_08069318
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r4, r0, r4
	asrs r4, r4, #8
	adds r5, r5, r4
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069474
sub_08069474: @ 0x08069474
	push {r4, lr}
	adds r4, r3, #0
	muls r0, r1, r0
	adds r1, r2, #0
	bl sub_080691C0
	adds r0, r0, r4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08069488
sub_08069488: @ 0x08069488
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x10]
	adds r0, r1, #0
	muls r0, r4, r0
	muls r0, r4, r0
	adds r1, r2, #0
	bl sub_080691C0
	adds r1, r5, #0
	muls r1, r4, r1
	adds r0, r0, r1
	adds r0, r0, r6
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080694AC
sub_080694AC: @ 0x080694AC
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_080691D0
	asrs r4, r4, #1
	cmp r0, r4
	blt _080694C0
	adds r0, r5, #0
	b _080694C2
_080694C0:
	movs r0, #0
_080694C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080694C8
sub_080694C8: @ 0x080694C8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #2
	lsls r1, r7, #2
	adds r7, r1, #0
	asrs r4, r1, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _080694E0
	adds r0, r1, #3
_080694E0:
	asrs r5, r0, #2
	adds r0, r3, #0
	bl sub_080691D0
	adds r3, r0, #0
	cmp r3, r5
	blt _080694F4
	cmp r3, r4
	bge _08069500
	subs r3, r4, r3
_080694F4:
	adds r0, r6, #0
	muls r0, r3, r0
	adds r1, r5, #0
	bl sub_080691C0
	b _08069518
_08069500:
	adds r0, r4, r5
	cmp r3, r0
	bge _0806950A
	subs r3, r3, r4
	b _0806950C
_0806950A:
	subs r3, r7, r3
_0806950C:
	adds r0, r6, #0
	muls r0, r3, r0
	adds r1, r5, #0
	bl sub_080691C0
	rsbs r0, r0, #0
_08069518:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069520
sub_08069520: @ 0x08069520
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_080691D0
	adds r1, r4, #0
	bl sub_080691C0
	muls r0, r5, r0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08069538
sub_08069538: @ 0x08069538
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r2, #0
	muls r1, r2, r1
	subs r0, r0, r1
	bl __floatsidf
	bl sub_080692B0
	bl __fixdfsi
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069558
sub_08069558: @ 0x08069558
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	adds r0, r4, #0
	muls r0, r5, r0
	adds r1, r6, #0
	bl sub_080691C0
	mov r8, r0
	mov r0, sb
	muls r0, r5, r0
	adds r1, r6, #0
	bl sub_080691C0
	mov r1, r8
	subs r4, r4, r1
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069594
sub_08069594: @ 0x08069594
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_080695A4
sub_080695A4: @ 0x080695A4
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080695BC
sub_080695BC: @ 0x080695BC
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_080695D4
sub_080695D4: @ 0x080695D4
	push {r4, lr}
	adds r2, r0, #0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r1, #0x10
	lsrs r3, r3, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	muls r0, r1, r0
	lsls r0, r0, #0x10
	muls r2, r3, r2
	muls r1, r4, r1
	adds r2, r2, r1
	adds r0, r0, r2
	adds r1, r4, #0
	muls r1, r3, r1
	asrs r1, r1, #0x10
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08069600
sub_08069600: @ 0x08069600
	movs r0, #0
	bx lr

	thumb_func_start sub_08069604
sub_08069604: @ 0x08069604
	movs r0, #0
	bx lr