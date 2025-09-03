	.syntax unified
sub_08022FE4:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r7, #0
	subs r1, r1, r4
	lsls r1, r1, #0xf
	lsrs r5, r1, #0x10
	movs r6, #0
	cmp r7, r5
	bhs _08023044
	ldrh r0, [r4]
	ldr r1, _08023024
	cmp r0, r1
	beq _08023044
	ldr r2, _08023028
	mov sb, r2
	mov r8, r1
_0802300A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bls _0802302C
	ldrh r0, [r4]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _08023034
	.align 2, 0
_08023024: .4byte 0x0000FFFF
_08023028: .4byte 0x0000FEFF
_0802302C:
	adds r4, #2
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08023034:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r5
	bhs _08023044
	ldrh r0, [r4]
	cmp r0, r8
	bne _0802300A
_08023044:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
