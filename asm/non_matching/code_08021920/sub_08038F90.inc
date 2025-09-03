	.syntax unified
sub_08038F90:
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _08039014
	ldr r1, _08039018
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #0x12]
	movs r6, #0
	strh r0, [r4, #0x12]
	ldr r2, _0803901C
	adds r0, r4, r2
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
	movs r0, #0
	add r1, sp, #8
	bl sub_08036C00
	ldr r3, _08039020
	adds r5, r4, r3
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_080392C4
	ldr r1, [r5]
	ldr r0, _08039024
	cmp r1, r0
	beq _08039002
	ldrh r0, [r5]
	ldr r1, _08039028
	adds r4, r4, r1
	ldrh r1, [r4]
	subs r0, #4
	strh r0, [r5]
	subs r1, #4
	strh r1, [r4]
	ldr r0, _0803902C
	ldr r2, _08039030
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x1e
	bl Divide
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08039002
	ldr r0, _08039034
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	str r6, [sp]
	str r6, [sp, #4]
	movs r3, #0x20
	bl sub_0803D678
_08039002:
	bl sub_0803917C
	bl sub_08039038
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039014: .4byte gSomeBlend
_08039018: .4byte 0x00003670
_0803901C: .4byte 0x00003672
_08039020: .4byte 0x00003514
_08039024: .4byte 0x00A000F0
_08039028: .4byte 0x00003516
_0803902C: .4byte gGame
_08039030: .4byte 0x00009D10
_08039034: .4byte gUnknown_080C1E50
	.syntax divided
