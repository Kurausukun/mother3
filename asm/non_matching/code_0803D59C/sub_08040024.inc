	.syntax unified
	push {r4, r5, r6, lr}
	ldr r5, _08040078
	ldr r1, _0804007C
	adds r0, r5, r1
	ldrb r4, [r0]
	lsls r4, r4, #2
	ldr r0, _08040080
	adds r4, r4, r0
	ldr r6, _08040084
	ldrb r1, [r4]
	adds r0, r6, #0
	bl sub_0800289C
	ldr r1, _08040088
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldrb r1, [r4, #1]
	adds r0, r6, #0
	bl sub_0800289C
	adds r1, r0, #0
	ldr r2, _0804008C
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r5, #0x50
	adds r0, r5, #0
	movs r2, #0xd
	movs r3, #0x20
	bl sub_0800160C
	movs r0, #0xd
	movs r1, #1
	bl sub_08056584
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040078: .4byte gSomeBlend
_0804007C: .4byte 0x0000C5C1
_08040080: .4byte gUnknown_080C714C
_08040084: .4byte gUnknown_09B0CA54
_08040088: .4byte 0x06007000
_0804008C: .4byte 0x0000C5C2
	.syntax divided
