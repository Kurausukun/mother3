	.syntax unified
sub_08058E34:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	subs r0, r2, #2
	cmp r0, #0x15
	bhi _08058EC2
	lsls r0, r0, #2
	ldr r1, _08058E54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08058E54: .4byte _08058E58
_08058E58:
	.4byte _08058EB0
	.4byte _08058EC2
	.4byte _08058EB0
	.4byte _08058EC2
	.4byte _08058EBC
	.4byte _08058EC2
	.4byte _08058EBC
	.4byte _08058EB0
	.4byte _08058EC2
	.4byte _08058EC2
	.4byte _08058EBC
	.4byte _08058EC2
	.4byte _08058EC2
	.4byte _08058EBC
	.4byte _08058EC2
	.4byte _08058EC2
	.4byte _08058EC2
	.4byte _08058EC2
	.4byte _08058EC2
	.4byte _08058EB6
	.4byte _08058EB0
	.4byte _08058EBC
_08058EB0:
	movs r6, #0xa0
	lsls r6, r6, #5
	b _08058EC6
_08058EB6:
	movs r6, #0xc0
	lsls r6, r6, #5
	b _08058EC6
_08058EBC:
	movs r6, #0xe0
	lsls r6, r6, #5
	b _08058EC6
_08058EC2:
	movs r6, #0x80
	lsls r6, r6, #5
_08058EC6:
	subs r0, r2, #2
	cmp r0, #0x14
	bhi _08058F48
	lsls r0, r0, #2
	ldr r1, _08058ED8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08058ED8: .4byte _08058EDC
_08058EDC:
	.4byte _08058F42
	.4byte _08058F30
	.4byte _08058F48
	.4byte _08058F48
	.4byte _08058F30
	.4byte _08058F48
	.4byte _08058F48
	.4byte _08058F48
	.4byte _08058F34
	.4byte _08058F48
	.4byte _08058F34
	.4byte _08058F34
	.4byte _08058F48
	.4byte _08058F3C
	.4byte _08058F38
	.4byte _08058F48
	.4byte _08058F48
	.4byte _08058F48
	.4byte _08058F48
	.4byte _08058F30
	.4byte _08058F30
_08058F30:
	movs r5, #0x60
	b _08058F4A
_08058F34:
	movs r5, #0x80
	b _08058F4A
_08058F38:
	movs r5, #0xc0
	b _08058F4A
_08058F3C:
	movs r5, #0x80
	lsls r5, r5, #1
	b _08058F4A
_08058F42:
	movs r5, #0x90
	lsls r5, r5, #1
	b _08058F4A
_08058F48:
	movs r5, #0x40
_08058F4A:
	ldr r4, _08058FA0
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0800289C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r2, r6, #0
	bl sub_08001B18
	adds r1, r7, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0800289C
	adds r1, r0, #0
	ldr r4, _08058FA4
	adds r0, r4, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0800160C
	movs r0, #0x9c
	lsls r0, r0, #6
	adds r1, r4, r0
	ldrh r0, [r1]
	movs r0, #0
	strh r0, [r1]
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08058FAC
	ldr r0, _08058FA8
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058FA0: .4byte gUnknown_09C5FD2C
_08058FA4: .4byte gUnknown_02016078
_08058FA8: .4byte 0x00002C46
	.syntax divided
