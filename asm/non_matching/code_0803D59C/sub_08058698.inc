	.syntax unified
sub_08058698:
	push {lr}
	bl snd_vsync
	ldr r0, _080586BC
	ldrh r0, [r0]
	cmp r0, #0
	beq _080586AA
	bl snd_main
_080586AA:
	ldr r2, _080586C0
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080586C4
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080586BC: .4byte gUnknown_03004B00
_080586C0: .4byte 0x04000208
_080586C4: .4byte gUnknown_03007FF8
	.syntax divided
