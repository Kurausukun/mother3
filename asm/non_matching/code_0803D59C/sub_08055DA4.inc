	.syntax unified
sub_08055DA4:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08055DFC
	mov ip, r1
	movs r1, #0
	movs r2, #2
	mov r3, ip
	strb r2, [r3]
	strb r1, [r3, #2]
	strb r1, [r3, #1]
	strb r1, [r3, #3]
	strb r1, [r3, #4]
	movs r3, #1
	mov r4, ip
	strb r3, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	strb r1, [r4, #8]
	movs r2, #0
	strh r1, [r4, #0xa]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	mov r4, ip
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x34]
	strh r1, [r4, #0x36]
	strh r1, [r4, #0x38]
	strh r1, [r4, #0x3a]
	mov r0, ip
	adds r0, #0x3d
	strb r3, [r0]
	adds r0, #0x14
	strb r2, [r0]
	adds r0, #0x15
	strb r2, [r0]
	mov r1, ip
	adds r1, #0x52
	movs r0, #0xff
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055DFC: .4byte gEncounter
	.syntax divided
