#include "guest.h"

Base* sub_08061E20(Base*, u32);

// guest_2c8 dependant on GuestSkill

bool Guest::unit_178() {
    return false;
}

u32 Guest::unit_180() {
    return _f8;
}

Unit* Guest::unit_188(Unit* u) {
    sub_08061E20(this, static_cast<Guest*>(u)->_f8);
    return this;
}

s32 Guest::getLevel() const {
    return _fc[0x12];
}

bool Guest::unit_208() {
    return false;
}

bool Guest::unit_210() {
    return false;
}

bool Guest::unit_218() {
    return false;
}

void guest_callback1(Guest* p) {
    p->guest_2d0();
}

void Guest::guest_2d0() {}

void guest_callback2(Guest* p) {
    p->guest_2d8();
}

void Guest::guest_2d8() {}

NAKED void guest_sinit() {
    asm_unified("\n\
	push {r4, lr}\n\
	ldr r4, _08062204 @ =gUnknown_02002318\n\
	adds r0, r4, #0\n\
	bl __9Singleton\n\
	ldr r0, _08062208 @ =0x09F4BD38\n\
	str r0, [r4, #8]\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08062204: .4byte gUnknown_02002318\n\
_08062208: .4byte 0x09F4BD38\n");
}
