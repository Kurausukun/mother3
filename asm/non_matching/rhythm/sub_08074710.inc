	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _08074724
_0807471A:
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _08074728
	adds r0, r2, #0
	b _08074732
	.align 2, 0
_08074724: .4byte gUnknown_080EC578
_08074728:
	adds r2, #8
	adds r3, #1
	cmp r3, #0x76
	ble _0807471A
	ldr r0, _08074738
_08074732:
	pop {r1}
	bx r1
	.align 2, 0
_08074738: .4byte gUnknown_080EC578
	.syntax divided
