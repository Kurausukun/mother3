	.syntax unified
init__13PlayerFactory:
	push {r4, lr}
	movs r4, #0
_08060F84:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08060FD4
	bl put__13PlayerFactoryUsPFUsUs_Pv
	adds r4, #1
	cmp r4, #0xf
	bls _08060F84
	ldr r1, _08060FD8
	movs r0, #1
	bl put__13PlayerFactoryUsPFUsUs_Pv
	ldr r1, _08060FDC
	movs r0, #2
	bl put__13PlayerFactoryUsPFUsUs_Pv
	ldr r1, _08060FE0
	movs r0, #4
	bl put__13PlayerFactoryUsPFUsUs_Pv
	ldr r1, _08060FE4
	movs r0, #3
	bl put__13PlayerFactoryUsPFUsUs_Pv
	ldr r1, _08060FE8
	movs r0, #5
	bl put__13PlayerFactoryUsPFUsUs_Pv
	ldr r1, _08060FEC
	movs r0, #6
	bl put__13PlayerFactoryUsPFUsUs_Pv
	ldr r1, _08060FF0
	movs r0, #0xd
	bl put__13PlayerFactoryUsPFUsUs_Pv
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060FD4: .4byte create__20DefaultPlayerFactoryUsUs
_08060FD8: .4byte create__12FlintFactoryUsUs
_08060FDC: .4byte create__12LucasFactoryUsUs
_08060FE0: .4byte create__15KumatoraFactoryUsUs
_08060FE4: .4byte create__13DusterFactoryUsUs
_08060FE8: .4byte create__12BoneyFactoryUsUs
_08060FEC: .4byte create__12SalsaFactoryUsUs
_08060FF0: .4byte create__12ClausFactoryUsUs
	.syntax divided
