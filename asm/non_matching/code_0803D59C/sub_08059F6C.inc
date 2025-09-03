	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, #0x42
	ldrb r7, [r1]
	adds r7, #1
	adds r1, r7, #0
	bl sub_08002BCC
	adds r6, r0, #0
	ldr r4, _08059FA4
	bl sub_08002C20
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	strh r0, [r4]
	adds r5, #0x48
	ldrh r0, [r5]
	cmp r0, r1
	blo _08059F96
	movs r0, #0
	strh r0, [r5]
_08059F96:
	ldrh r1, [r6]
	cmp r1, #0
	bne _08059FAC
	ldr r0, _08059FA8
	strh r1, [r0]
	movs r0, #0
	b _08059FCE
	.align 2, 0
_08059FA4: .4byte gUnknown_0200105A
_08059FA8: .4byte gUnknown_02001058
_08059FAC:
	adds r3, r6, #2
	ldrb r2, [r3, #1]
	ldrh r5, [r5]
	ldr r4, _08059FD4
	lsls r1, r7, #0x10
	cmp r2, r5
	bhs _08059FC8
_08059FBA:
	adds r3, #2
	ldrb r0, [r3, #1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blo _08059FBA
_08059FC8:
	ldrb r0, [r3]
	strh r0, [r4]
	asrs r0, r1, #0x10
_08059FCE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08059FD4: .4byte gUnknown_02001058
	.syntax divided
