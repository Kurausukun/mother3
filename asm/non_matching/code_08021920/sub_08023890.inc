	.syntax unified
sub_08023890:
	push {r4, r5, r6, lr}
	ldr r5, _0802391C
	ldr r0, _08023920
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08023924
	adds r3, r5, r1
	ldr r4, _08023928
	adds r0, r5, r4
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	strh r0, [r3, #2]
	ldr r6, _0802392C
	adds r4, r5, r6
	ldrh r2, [r4]
	adds r6, #0xc
	adds r0, r5, r6
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	adds r1, r1, r0
	strh r1, [r3]
	ldr r0, _08023930
	adds r3, r5, r0
	ldr r1, _08023934
	adds r0, r5, r1
	ldrh r1, [r0]
	lsls r1, r1, #4
	ldrh r2, [r4]
	ldr r4, _08023938
	adds r0, r5, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	adds r0, #0xe
	adds r1, r1, r0
	ldrh r0, [r3]
	adds r2, r1, r0
	strh r2, [r3]
	ldr r1, _0802393C
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #4
	bne _080238FC
	adds r0, r2, #2
	strh r0, [r3]
_080238FC:
	ldr r4, _08023940
	adds r0, r5, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802390E
	ldrh r0, [r3]
	subs r0, #0x60
	strh r0, [r3]
_0802390E:
	ldr r6, _08023944
	adds r0, r5, r6
	bl sub_080393D8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802391C: .4byte gSomeBlend
_08023920: .4byte 0x00004AC6
_08023924: .4byte 0x00004AC0
_08023928: .4byte 0x00004B10
_0802392C: .4byte 0x00004B08
_08023930: .4byte 0x00004AC2
_08023934: .4byte 0x00004B0A
_08023938: .4byte 0x00004B16
_0802393C: .4byte 0x00011C92
_08023940: .4byte 0x0001ED10
_08023944: .4byte 0x00004ABC
	.syntax divided
