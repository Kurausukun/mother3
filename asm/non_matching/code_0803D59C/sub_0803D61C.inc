    .syntax unified
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
    .syntax divided
