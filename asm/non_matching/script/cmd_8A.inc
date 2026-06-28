	.syntax unified
cmd_8A:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080210E6
	movs r5, #0x64
	b _080210F0
_080210E6:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080210F0
	movs r5, #0x41
_080210F0:
	adds r0, r5, #0
	bl percentToMPlayVolume
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r4, r7, #0x10
	asrs r1, r4, #0x10
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08021134
	adds r0, #1
	cmp r1, r0
	bne _0802117A
	movs r0, #0
	bl getMusicPlayerVolumePercent
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r5, #0
	movs r0, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
	movs r0, #1
	bl getMusicPlayerVolumePercent
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	b _08021170
_08021134:
	movs r0, #3
	bl getMusicPlayerVolumePercent
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r5, #0
	movs r0, #3
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
	movs r0, #4
	bl getMusicPlayerVolumePercent
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #4
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
	movs r0, #5
	bl getMusicPlayerVolumePercent
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #5
_08021170:
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
	b _08021192
_0802117A:
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl getMusicPlayerVolumePercent
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r5, #0
	adds r0, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
_08021192:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
