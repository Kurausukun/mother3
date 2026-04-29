	.syntax unified
sub_080592A8:
	push {lr}
	bl snd_vsync_on
	ldr r0, _08059300
	ldrb r0, [r0]
	cmp r0, #0
	bne _080592FC
	movs r0, #0
	bl musicPlayerStop_bgm
	movs r0, #1
	bl musicPlayerStop_bgm
	ldr r0, _08059304
	bl startSong
	ldr r0, _08059308
	bl startSong
	movs r0, #0xf6
	lsls r0, r0, #2
	bl startSong
	ldr r0, _0805930C
	bl startSong
	ldr r0, _08059310
	bl startSong
	ldr r0, _08059314
	bl startSong
	movs r0, #0xf7
	lsls r0, r0, #2
	bl startSong
	ldr r0, _08059318
	bl startSong
	movs r0, #0xe
	bl startSong
_080592FC:
	pop {r0}
	bx r0
	.align 2, 0
_08059300: .4byte gUnknown_02015DC0
_08059304: .4byte 0x000003D6
_08059308: .4byte 0x000003D7
_0805930C: .4byte 0x000003D9
_08059310: .4byte 0x000003DA
_08059314: .4byte 0x000003DB
_08059318: .4byte 0x000003DD
	.syntax divided
