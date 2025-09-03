	.syntax unified
sub_08048748:
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r3, #0
	lsls r1, r1, #0x10
	ldr r4, _08048770
	asrs r5, r1, #0x10
	cmp r1, r4
	bne _08048774
	ldrh r0, [r2]
	lsrs r1, r4, #0x10
	cmp r0, r1
	beq _08048798
_08048760:
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r2]
	cmp r0, r1
	bne _08048760
	b _08048798
	.align 2, 0
_08048770: .4byte 0xFFFF0000
_08048774:
	movs r1, #0
	cmp r3, r5
	bge _08048798
	ldrh r0, [r2]
	lsrs r4, r4, #0x10
	b _08048792
_08048780:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r5
	bge _08048798
	ldrh r0, [r2]
_08048792:
	adds r2, #2
	cmp r0, r4
	bne _08048780
_08048798:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
