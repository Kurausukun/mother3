.syntax unified
.global __3Msg
__3Msg:
	ldr r1, _0806E284
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_0806E284: .4byte _vt.3Msg
.global __3MsgPCvUi
__3MsgPCvUi:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _0806E2B4
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
.global __3MsgRC3Msg
__3MsgRC3Msg:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806E2E4
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
.syntax divided
