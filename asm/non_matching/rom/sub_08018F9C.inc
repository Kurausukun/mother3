	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r0, _08019054
	ldr r2, _08019058
	adds r1, r0, r2
	ldrh r1, [r1]
	str r1, [sp, #4]
	ldr r7, _0801905C
	adds r1, r0, r7
	ldrh r1, [r1]
	mov sl, r1
	ldr r1, _08019060
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	mov r2, r8
	ldrh r4, [r2]
	movs r5, #0
	ldr r6, _08019064
_08018FD8:
	adds r0, r4, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp]
	adds r2, r0, #0
	muls r2, r7, r2
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	lsls r3, r5, #1
	ldr r1, _08019068
	adds r0, r6, r1
	adds r0, r3, r0
	ldr r7, [sp, #4]
	adds r1, r2, r7
	strh r1, [r0]
	ldr r1, _0801906C
	adds r0, r6, r1
	adds r0, r3, r0
	mov r7, sl
	adds r1, r2, r7
	strh r1, [r0]
	ldr r0, _08019070
	adds r3, r3, r0
	add r2, sb
	strh r2, [r3]
	ldr r1, [sp, #8]
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x9f
	bls _08018FD8
	ldr r2, _08019054
	ldrb r1, [r2, #0xe]
	lsrs r1, r1, #6
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r2, _08019074
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #1
	ldr r7, [sp, #8]
	muls r0, r7, r0
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019054: .4byte gGame
_08019058: .4byte 0x000058B8
_0801905C: .4byte 0x000058F0
_08019060: .4byte 0x00005928
_08019064: .4byte gSomeBlend
_08019068: .4byte 0x000146D0
_0801906C: .4byte 0x00014810
_08019070: .4byte gUnknown_0202A978
_08019074: .4byte 0x000058E4
	.syntax divided
