#include "gba/gba.h"

class _080689B4 {
public:
    _080689B4();

	struct Foo {
		Foo() : _4(0), _8(0), _c(0) {}
		u32 _4;
		u32 _8;
		u32* _c;
	};

	struct Unk {
		Unk() : _10(0), _14(0), _18(0) {}
		u32 _10;
		u32 _14;
		u32 _18;
	};

	virtual void sub_80689D4(bool a1);

	u16 _0;
	u16 _2;
	Foo foo;
	Unk unk;
};

_080689B4::_080689B4() {
	_0 = 0;
	_2 = 0;
}
