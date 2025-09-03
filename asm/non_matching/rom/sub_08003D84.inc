	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003DB4
	ldr r1, _08003DB8
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r3, [r0]
	movs r1, #0
_08003D9E:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	bne _08003DBC
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	b _08003DCA
	.align 2, 0
_08003DB4: .4byte gMPlayTable
_08003DB8: .4byte gSongTable
_08003DBC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #9
	bls _08003D9E
	movs r0, #1
	rsbs r0, r0, #0
_08003DCA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
