	.syntax unified
sub_0806F1EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	movs r6, #0
	ldr r0, _0806F268
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
	.syntax divided
