	.syntax unified
	push {r4, lr}
	movs r4, #0
_08060F84:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08060FD4
	bl sub_08060FF4
	adds r4, #1
	cmp r4, #0xf
	bls _08060F84
	ldr r1, _08060FD8
	movs r0, #1
	bl sub_08060FF4
	ldr r1, _08060FDC
	movs r0, #2
	bl sub_08060FF4
	ldr r1, _08060FE0
	movs r0, #4
	bl sub_08060FF4
	ldr r1, _08060FE4
	movs r0, #3
	bl sub_08060FF4
	ldr r1, _08060FE8
	movs r0, #5
	bl sub_08060FF4
	ldr r1, _08060FEC
	movs r0, #6
	bl sub_08060FF4
	ldr r1, _08060FF0
	movs r0, #0xd
	bl sub_08060FF4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060FD4: .4byte sub_0809BEF4
_08060FD8: .4byte sub_0809BE90
_08060FDC: .4byte sub_0809BE6C
_08060FE0: .4byte sub_0809BE48
_08060FE4: .4byte sub_0809BE24
_08060FE8: .4byte sub_0809BE00
_08060FEC: .4byte sub_0809BDDC
_08060FF0: .4byte sub_0809BDB8
	.syntax divided
