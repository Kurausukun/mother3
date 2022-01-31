#include "core/singleton.h"
#include "core/system.h"

struct A {
    A() {}
    A(u32 val) { _0 = val; }
    u32 _0;
};

struct B : A {
    B(u32 val) : A(val) {}
};

struct C : A {
    C() {}
    C(u32 val) : A(val) {}
};

struct D : C, virtual B {
    D(u32 val);
    virtual ~D();

    u32 sub_0805D2F0(A** p, u32 idx);
};

D::~D() {}

SINGLETON_DEBUG_MGR(System, gUnknown_080F24D0)

// todo: figure out how to generate this here naturally
extern "C" NAKED void temp_080977A0() {
    asm_unified("\n\
    _._3Unk:\n\
	push {lr}\n\
	ldr r2, _080977B0 @ =_vt.3Unk\n\
	str r2, [r0, #0x1c]\n\
	bl _._4Base\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080977B0: .4byte _vt.3Unk\n\
    ");
}
