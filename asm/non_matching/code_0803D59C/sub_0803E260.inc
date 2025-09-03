	.syntax unified
	push {r4, lr}
	bl sub_0803E2B0
	ldr r0, _0803E29C
	ldr r1, _0803E2A0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803E28E
	ldr r4, _0803E2A4
	ldr r0, _0803E2A8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803E2AC
	adds r4, r4, r1
	adds r0, r4, #0
	bl sub_0800164C
	adds r0, r4, #0
	bl exec_menu
_0803E28E:
	bl sub_0803E2E4
	bl nullsub_7
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E29C: .4byte gUnknown_0200F920
_0803E2A0: .4byte 0x00006478
_0803E2A4: .4byte gSomeBlend
_0803E2A8: .4byte 0x00002CA8
_0803E2AC: .4byte 0x00002CA0
	.syntax divided
