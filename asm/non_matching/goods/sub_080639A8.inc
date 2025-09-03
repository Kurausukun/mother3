	.include "asm/macros.inc"
	.syntax unified
	ldr r2, _080639B0
	str r2, [r0, #4]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080639B0: .4byte _vt.15struct_08063998
thumb_func_start _._15struct_08063998
_._15struct_08063998:
	push {lr}
	adds r2, r0, #0
	ldr r0, _080639D0
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080639CA
	adds r0, r2, #0
	bl __builtin_delete
_080639CA:
	pop {r0}
	bx r0
	.align 2, 0
_080639D0: .4byte _vt.15struct_08063998
	.syntax divided
