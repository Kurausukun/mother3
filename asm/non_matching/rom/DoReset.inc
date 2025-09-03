	.syntax unified
	push {lr}
	bl m4aMPlayAllStop
	bl m4aSoundMain
	bl sub_08000D88
	ldr r0, _0800173C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08001740
	strh r1, [r0]
	movs r0, #0xfd
	bl sub_08090F90
	pop {r0}
	bx r0
	.align 2, 0
_0800173C: .4byte 0x04000084
_08001740: .4byte 0x04000208
	.syntax divided
