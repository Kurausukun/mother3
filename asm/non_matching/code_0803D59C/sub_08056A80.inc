	.syntax unified
sub_08056A80:
	push {r4, r5, lr}
	ldr r1, _08056AD8
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	ldr r4, _08056ADC
	ldr r0, _08056AE0
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08056AE4
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_08056AF0
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08056B18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08056C8C
	ldr r0, _08056AE8
	ldrh r0, [r0]
	cmp r0, #0
	bne _08056AC4
	bl snd_main
_08056AC4:
	ldr r0, _08056AEC
	ldrb r0, [r0]
	cmp r0, #2
	beq _08056AD0
	bl sub_080030A4
_08056AD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056AD8: .4byte gUnknown_02015DA0
_08056ADC: .4byte gSomeBlend
_08056AE0: .4byte 0x00002CD8
_08056AE4: .4byte 0x00002CDC
_08056AE8: .4byte gUnknown_03004B00
_08056AEC: .4byte gUnknown_020047D0
	.syntax divided
