.include "asm/macros.inc"

.syntax unified
.section .text

	arm_func_start sub_0803D0E4
sub_0803D0E4: @ 0x0803D0E4
	ldr r2, _0803D128 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D118
	ldr r0, _0803D134 @ =gUnknown_03004AF0
	ldr r1, _0803D138 @ =gUnknown_030040F0
	add r1, r1, r3, lsl #1
	ldr r2, _0803D12C @ =0x04000040
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D118
	ldrh r3, [r1]
	strh r3, [r2]
_0803D118:
	ldr r2, _0803D130 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D128: .4byte 0x04000006
_0803D12C: .4byte 0x04000040
_0803D130: .4byte 0x04000202
_0803D134: .4byte gUnknown_03004AF0
_0803D138: .4byte gUnknown_030040F0

	arm_func_start sub_0803D13C
sub_0803D13C: @ 0x0803D13C
	ldr r2, _0803D198 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D188
	ldr r0, _0803D1A4 @ =gUnknown_03004AF0
	ldr r1, _0803D1AC @ =gUnknown_030040F0
	add r1, r1, r3, lsl #1
	ldr r2, _0803D19C @ =0x04000040
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D170
	ldrh r3, [r1]
	strh r3, [r2]
_0803D170:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D188
	ldrh r3, [r1]
	strh r3, [r2, #2]
_0803D188:
	ldr r2, _0803D1A0 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D198: .4byte 0x04000006
_0803D19C: .4byte 0x04000040
_0803D1A0: .4byte 0x04000202
_0803D1A4: .4byte gUnknown_03004AF0
_0803D1A8: .4byte gUnknown_03004AF2
_0803D1AC: .4byte gUnknown_030040F0
_0803D1B0: .4byte gUnknown_03004230

	arm_func_start sub_0803D1B4
sub_0803D1B4: @ 0x0803D1B4
	ldr r2, _0803D284 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D274
	ldr r0, _0803D294 @ =gUnknown_03004AF4
	ldr r1, _0803D29C @ =gUnknown_03004370
	add r1, r1, r3, lsl #1
	ldr r2, _0803D288 @ =0x04000014
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D1E8
	ldrh r3, [r1]
	strh r3, [r2]
_0803D1E8:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D200
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D200:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D218
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D218:
	ldr r2, _0803D284 @ =0x04000006
	ldrh r3, [r2]
	ldr r0, _0803D298 @ =gUnknown_03004AFA
	ldr r1, _0803D2A0 @ =gUnknown_03004730
	add r1, r1, r3, lsl #1
	ldr r2, _0803D28C @ =0x04000016
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D244
	ldrh r3, [r1]
	strh r3, [r2]
_0803D244:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D25C
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D25C:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D274
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D274:
	ldr r2, _0803D290 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D284: .4byte 0x04000006
_0803D288: .4byte 0x04000014
_0803D28C: .4byte 0x04000016
_0803D290: .4byte 0x04000202
_0803D294: .4byte gUnknown_03004AF4
_0803D298: .4byte gUnknown_03004AFA
_0803D29C: .4byte gUnknown_03004370
_0803D2A0: .4byte gUnknown_03004730

	arm_func_start sub_0803D2A4
sub_0803D2A4: @ 0x0803D2A4
	ldr r2, _0803D318 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D308
	ldr r0, _0803D324 @ =gUnknown_03004AF4
	ldr r1, _0803D328 @ =gUnknown_03004370
	add r1, r1, r3, lsl #1
	ldr r2, _0803D31C @ =0x04000014
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D2D8
	ldrh r3, [r1]
	strh r3, [r2]
_0803D2D8:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D2F0
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D2F0:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D308
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D308:
	ldr r2, _0803D320 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D318: .4byte 0x04000006
_0803D31C: .4byte 0x04000014
_0803D320: .4byte 0x04000202
_0803D324: .4byte gUnknown_03004AF4
_0803D328: .4byte gUnknown_03004370

	arm_func_start sub_0803D32C
sub_0803D32C: @ 0x0803D32C
	ldr r2, _0803D360 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D350
	ldr r1, _0803D370 @ =gUnknown_030045F0
	add r1, r1, r3, lsl #1
	ldr r2, _0803D364 @ =0x0400001C
	ldrh r3, [r1]
	strh r3, [r2]
_0803D350:
	ldr r2, _0803D368 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D360: .4byte 0x04000006
_0803D364: .4byte 0x0400001C
_0803D368: .4byte 0x04000202
_0803D36C: .4byte gUnknown_03004AF8
_0803D370: .4byte gUnknown_030045F0

	arm_func_start sub_0803D374
sub_0803D374: @ 0x0803D374
	ldr r2, _0803D3E8 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D3D8
	ldr r0, _0803D3F4 @ =gUnknown_03004AFA
	ldr r1, _0803D3F8 @ =gUnknown_03004730
	add r1, r1, r3, lsl #1
	ldr r2, _0803D3EC @ =0x04000016
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D3A8
	ldrh r3, [r1]
	strh r3, [r2]
_0803D3A8:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D3C0
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D3C0:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D3D8
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D3D8:
	ldr r2, _0803D3F0 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D3E8: .4byte 0x04000006
_0803D3EC: .4byte 0x04000016
_0803D3F0: .4byte 0x04000202
_0803D3F4: .4byte gUnknown_03004AFA
_0803D3F8: .4byte gUnknown_03004730

	arm_func_start sub_0803D3FC
sub_0803D3FC: @ 0x0803D3FC
	ldr r2, _0803D45C @ =0x04000006
	ldrh r0, [r2]
	cmp r0, #0x9d
	bhi _0803D44C
	ldr r1, _0803D46C @ =gUnknown_030044B0
	add r1, r1, r0, lsl #1
	ldr r2, _0803D460 @ =0x04000014
	ldrh r3, [r1]
	strh r3, [r2, #4]
	add r1, r1, #0x140
	ldrh r3, [r1]
	strh r3, [r2, #8]
	ldr r1, _0803D470 @ =gUnknown_03004870
	add r1, r1, r0, lsl #1
	ldr r2, _0803D464 @ =0x04000016
	ldrh r3, [r1]
	strh r3, [r2, #4]
	add r1, r1, #0x140
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D44C:
	ldr r2, _0803D468 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D45C: .4byte 0x04000006
_0803D460: .4byte 0x04000014
_0803D464: .4byte 0x04000016
_0803D468: .4byte 0x04000202
_0803D46C: .4byte gUnknown_030044B0
_0803D470: .4byte gUnknown_03004870

	arm_func_start sub_0803D474
sub_0803D474: @ 0x0803D474
	stmdb sp!, {r4}
	ldr r2, _0803D570 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D55C
	ldr r0, _0803D584 @ =gUnknown_03004AF0
	ldr r1, _0803D590 @ =gUnknown_030040F0
	add r1, r1, r3, lsl #1
	ldr r2, _0803D574 @ =0x04000040
	ldrh r4, [r0]
	cmp r4, #0
	beq _0803D4AC
	ldrh r4, [r1]
	strh r4, [r2]
_0803D4AC:
	ldr r0, _0803D588 @ =gUnknown_03004AF4
	ldr r1, _0803D594 @ =gUnknown_03004370
	add r1, r1, r3, lsl #1
	ldr r2, _0803D578 @ =0x04000014
	ldrh r4, [r0]
	cmp r4, #0
	beq _0803D4D0
	ldrh r4, [r1]
	strh r4, [r2]
_0803D4D0:
	add r1, r1, #0x140
	ldrh r4, [r0, #2]
	cmp r4, #0
	beq _0803D4E8
	ldrh r4, [r1]
	strh r4, [r2, #4]
_0803D4E8:
	add r1, r1, #0x140
	ldrh r4, [r0, #4]
	cmp r4, #0
	beq _0803D500
	ldrh r4, [r1]
	strh r4, [r2, #8]
_0803D500:
	ldr r2, _0803D570 @ =0x04000006
	ldrh r3, [r2]
	ldr r0, _0803D588 @ =gUnknown_03004AF4
	ldr r1, _0803D594 @ =gUnknown_03004370
	add r1, r1, r3, lsl #1
	ldr r2, _0803D578 @ =0x04000014
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D52C
	ldrh r3, [r1]
	strh r3, [r2]
_0803D52C:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D544
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D544:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D55C
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D55C:
	ldr r2, _0803D580 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	ldm sp!, {r4}
	bx lr
	.align 2, 0
_0803D570: .4byte 0x04000006
_0803D574: .4byte 0x04000040
_0803D578: .4byte 0x04000014
_0803D57C: .4byte 0x04000016
_0803D580: .4byte 0x04000202
_0803D584: .4byte gUnknown_03004AF0
_0803D588: .4byte gUnknown_03004AF4
_0803D58C: .4byte gUnknown_03004AFA
_0803D590: .4byte gUnknown_030040F0
_0803D594: .4byte gUnknown_03004370
_0803D598: .4byte gUnknown_03004730

.global sub_0803D59C_start
sub_0803D59C_start:
thumb_func_start sub_0803D59C
sub_0803D59C:
	push {r4, r5, r6, r7}
	movs r6, r0
	ldr r0, _0803D5E8 @ =gSceneObjBuffer
	mov ip, r0
	movs r0, #1
	cmp r0, r6
	bhs _0803D5E2
	movs r7, #0
_0803D5AC:
	adds r3, r0, #0
	adds r5, r3, #1
	cmp r3, #0
	beq _0803D5DC
_0803D5B4:
	lsls r0, r3, #2
	mov r1, ip
	adds r2, r0, r1
	subs r4, r2, #4
	ldrb r1, [r4, #2]
	ldrb r0, [r2, #2]
	cmp r1, r0
	bhi _0803D5CE
	bne _0803D5DC
	ldrsh r1, [r4, r7]
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bge _0803D5DC
_0803D5CE:
	ldr r1, [r2]
	ldr r0, [r4]
	str r0, [r2]
	str r1, [r4]
	subs r3, #1
	cmp r3, #0
	bne _0803D5B4
_0803D5DC:
	movs r0, r5
	cmp r0, r6
	blo _0803D5AC
_0803D5E2:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0803D5E8: .4byte gSceneObjBuffer

.global sub_0803D5EC_start
sub_0803D5EC_start:
thumb_func_start sub_0803D5EC
sub_0803D5EC:
	cmp r0, #0
	bge _0803D5F2
	rsbs r0, r0, #0
_0803D5F2:
	cmp r1, #0
	bge _0803D5F8
	rsbs r1, r1, #0
_0803D5F8:
	cmp r0, r1
	blt _0803D602
	adds r3, r0, #0
	adds r0, r1, #0
	b _0803D604
_0803D602:
	adds r3, r1, #0
_0803D604:
	lsrs r2, r0, #1
	adds r2, r0, r2
	lsrs r0, r3, #5
	subs r0, r3, r0
	lsrs r1, r3, #7
	subs r0, r0, r1
	lsrs r1, r2, #2
	adds r0, r0, r1
	lsrs r2, r2, #6
	adds r0, r0, r2
	bx lr
	.align 2, 0

.global sub_0803D61C_start
sub_0803D61C_start:
thumb_func_start sub_0803D61C
sub_0803D61C:
	push {r4, r5, r6, r7}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, _0803D668 @ =gUnknown_03004B0C
	ldrh r2, [r0]
	ldr r0, _0803D66C @ =gUnknown_03004B0E
	ldrh r7, [r0]
	ldr r0, _0803D670 @ =gUnknown_03004B10
	ldrh r6, [r0]
	movs r5, #0x9f
	ldr r0, _0803D674 @ =gSineTable
	mov r8, r0
	movs r1, #0xff
	mov ip, r1
_0803D63C:
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r1, [r0, r1]
	lsrs r1, r1, #3
	rsbs r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r1, [r3]
	adds r3, #2
	adds r2, r2, r6
	subs r5, #1
	cmp r5, #0
	bne _0803D63C
	pop {r7}
	mov r8, r7
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0803D668: .4byte gUnknown_03004B0C
_0803D66C: .4byte gUnknown_03004B0E
_0803D670: .4byte gUnknown_03004B10
_0803D674: .4byte gSineTable
