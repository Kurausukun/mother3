	.syntax unified
sub_0805B8D0:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	mov r4, sp
	movs r3, #0
	mov r1, sp
	strh r3, [r1]
	strh r3, [r4, #2]
	ldrh r1, [r2]
	ldrh r3, [r0]
	subs r1, r1, r3
	mov r3, sp
	strh r1, [r3]
	ldrh r1, [r2, #2]
	ldrh r0, [r0, #2]
	subs r1, r1, r0
	strh r1, [r4, #2]
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	blt _0805B942
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _0805B922
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _0805B90E
	rsbs r1, r1, #0
_0805B90E:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0805B918
	rsbs r0, r0, #0
_0805B918:
	movs r2, #7
	cmp r1, r0
	blt _0805B986
	movs r2, #6
	b _0805B986
_0805B922:
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _0805B92E
	rsbs r1, r1, #0
_0805B92E:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0805B938
	rsbs r0, r0, #0
_0805B938:
	movs r2, #4
	cmp r1, r0
	blt _0805B986
	movs r2, #5
	b _0805B986
_0805B942:
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _0805B968
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _0805B954
	rsbs r1, r1, #0
_0805B954:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0805B95E
	rsbs r0, r0, #0
_0805B95E:
	movs r2, #0
	cmp r1, r0
	blt _0805B986
	movs r2, #1
	b _0805B986
_0805B968:
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _0805B974
	rsbs r1, r1, #0
_0805B974:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0805B97E
	rsbs r0, r0, #0
_0805B97E:
	movs r2, #3
	cmp r1, r0
	blt _0805B986
	movs r2, #2
_0805B986:
	ldr r0, _0805B998
	lsls r1, r5, #3
	adds r1, r2, r1
	adds r1, r1, r0
	ldrb r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805B998: .4byte gUnknown_09C908E0
	.syntax divided
