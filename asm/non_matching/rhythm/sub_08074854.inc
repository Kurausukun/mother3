	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _08074868
_0807485E:
	ldrh r0, [r2]
	cmp r0, r1
	bne _0807486C
	ldrh r0, [r2, #2]
	b _08074876
	.align 2, 0
_08074868: .4byte gUnknown_081135A8
_0807486C:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x38
	ble _0807485E
	movs r0, #0
_08074876:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
