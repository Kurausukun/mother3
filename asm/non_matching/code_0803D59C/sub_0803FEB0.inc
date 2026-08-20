	.syntax unified
sub_0803FEB0:
	push {r4, lr}
	ldr r4, _0803FEE8
	adds r0, r4, #0
	movs r1, #0x52
	bl Blob_GetEntry
	ldr r1, _0803FEEC
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuSmartSet
	adds r0, r4, #0
	movs r1, #0x53
	bl Blob_GetEntry
	adds r1, r0, #0
	ldr r0, _0803FEF0
	movs r2, #2
	movs r3, #0x20
	bl sub_0800160C
	movs r0, #2
	movs r1, #1
	bl sub_08056584
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FEE8: .4byte gMenuData
_0803FEEC: .4byte 0x06001000
_0803FEF0: .4byte gSomeBlend+0x50 @ gSomeBlend._50
	.syntax divided
