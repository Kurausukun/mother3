.include "asm/macros.inc"

    .syntax unified

    .global Start

    .text
    
    .arm

Start: @ 0x08000000
	b Init
    
    .include "asm/rom_header.inc"
    
    .arm
    .align 2, 0
    .global Init
Init:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, sp_irq @ =gUnknown_03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, sp_sys @ =gUnknown_03007E00
	ldr r1, _08000250 @ =gUnknown_03007FFC
	add r0, pc, #0x18 @ =IntrMain
	str r0, [r1]
	ldr r1, _08000254 @ =sub_08000264
	mov lr, pc
	bx r1
	b Init


	.align 2, 0
sp_sys: .4byte gUnknown_03007E00
sp_irq: .4byte gUnknown_03007FA0

    .arm
    .align 2, 0
	.global IntrMain
IntrMain: @ 0x080000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	mrs r0, spsr
	push {r0, r1, r2, r3, lr}
	and r1, r2, r2, lsr #16
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
Loop:
	bne Loop
	mov ip, #0
	ands r0, r1, #1
	bne _08000234
	add ip, ip, #4
	ands r0, r1, #2
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #4
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #8
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x10
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x20
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x40
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x80
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x100
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x200
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x400
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x800
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x1000
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_080001D0:
	bne _080001D0
IntrMain_FoundIntr:
	strh r0, [r3, #2]
	ldrh r0, [r3]
	ldr r1, _08000258 @ =0x0000200A
	and r1, r1, r0
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, _0800025C @ =gUnknown_020051F0
	add r1, r1, ip
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =IntrMain_RetAddr
	bx r0
IntrMain_RetAddr: @ 0x08000210
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr cpsr_fc, r3
	pop {r0, r1, r2, r3, lr}
	strh r1, [r3]
	msr spsr_fc, r0
	bx lr
_08000234:
	strh r0, [r3, #2]
	pop {r0, r1, r2, r3, lr}
	msr spsr_fc, r0
	ldr r1, _08000260 @ =gUnknown_020051F0
	add r1, r1, ip
	ldr r0, [r1]
	bx r0
	.align 2, 0
_08000250: .4byte gUnknown_03007FFC
_08000254: .4byte sub_08000264
_08000258: .4byte 0x0000200A
_0800025C: .4byte gUnknown_020051F0
_08000260: .4byte gUnknown_020051F0
