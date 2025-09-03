	.syntax unified
sub_080568F4:
	push {r4, r5, lr}
	ldr r5, _08056928
	movs r4, #0
	strh r4, [r5]
	ldr r2, _0805692C
	ldrh r1, [r2]
	ldr r0, _08056930
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08056934
	ldrh r1, [r2]
	ldr r0, _08056938
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805693C
	ldr r1, _08056940
	movs r2, #0x38
	bl memcpy
	ldr r0, _08056944
	strh r4, [r0]
	movs r0, #1
	strh r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056928: .4byte 0x04000208
_0805692C: .4byte 0x04000200
_08056930: .4byte 0x0000FFFC
_08056934: .4byte 0x04000004
_08056938: .4byte 0x0000FFE7
_0805693C: .4byte gIntrHandlers
_08056940: .4byte gUnknown_080C7628
_08056944: .4byte gUnknown_03004B00
	.syntax divided
