	.syntax unified
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
	.syntax divided
