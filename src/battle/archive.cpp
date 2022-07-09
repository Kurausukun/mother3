#include "battle/archive.h"

extern "C" s32 sub_08088E98();

extern u8 gUnknown_081158D2[];
extern u8 gUnknown_081158DA[];

BXTHandle::BXTHandle() {
    mType = 0;
    mCount = 0;
    mBlock = NULL;
    mOffsets = NULL;
}

BXTHandle::BXTHandle(const BXTRef& ref) {
    mType = 0;
    mCount = 0;
    mBlock = NULL;
    mOffsets = NULL;
    init(ref);
}

BXTHandle::~BXTHandle() {}

bool BXTHandle::init(const BXTRef& ref) {
    mType = type(ref);

    switch (mType) {
    case 1:
        read(ref);
        break;
    }
    return true;
}

u32 BXTHandle::type(const BXTRef& ref) const {
    if (ref()->magic != ' txb') {
        return 0;
    }
    return ref()->type;
}

void BXTHandle::read(const BXTRef& ref) {
    const BXT* bxt = ref();
    mCount = bxt->count;
    mBlock = (const u8*)bxt;
    mOffsets = bxt->offsets;
}

u32 BXTHandle::count() const {
    return mCount;
}

Msg BXTHandle::getMessage(u32 index) {
    return Msg((u16*)(mBlock + mOffsets[index]),
               ((u32)(mOffsets[index + 1] - mOffsets[index]) >> 1) - 1);
}

struct Setting {
    Setting() : a(0), b(0) {}
    Setting(const Setting& other);

    s16 a, b;
};

struct Struct_09F85088 {
    Struct_09F85088();
    virtual ~Struct_09F85088();

    s32 sub_08088E4C(u8** a1, Setting* a2);
    void sub_08088E58(Setting* a1);
    u8* sub_08088E60(s32 a1);
    u8* sub_08088E98(s32 a1);

    Setting set;
    u8* _4;
};

Struct_09F85088::Struct_09F85088() : _4(0) {}

Struct_09F85088::~Struct_09F85088() {}

s32 Struct_09F85088::sub_08088E4C(u8** a1, Setting* a2) {
    set = *a2;
    _4 = *a1;
    return 1;
}

Setting::Setting(const Setting& other) {
    *this = other;
}

u8* Struct_09F85088::sub_08088E60(s32 a1) {
    u8* x = sub_08088E98(a1);
    if (x) {
        return x;
    }

    s32 a = set.b;
    s32 b = set.a;
    b = b - 1 < 0 ? b + 6 : b - 1;
    return _4 + a1 * (((b >> 3) + 1) * a + 2) + 2;
}

u8* Struct_09F85088::sub_08088E98(s32 a1) {
    if (a1 == 0xFF22) {
        Setting s = set;
        s16 test = *(s32*)&s.a;
        return test < 9 ? gUnknown_081158D2 : gUnknown_081158DA;
    }
    return 0;
}

struct V {
    V();
    virtual ~V();

    void sub_08088F00(Setting s, s16* b);
    void sub_08088F40(Setting* s, s16* b);
    void sub_0808904C(Setting* s, s16* b);
};

V::V() {}

V::~V() {}

void V::sub_08088F00(Setting s, s16* b) {
    Setting x = s;
    s16 t = *(s32*)&x.a;
    if (t <= 0) {
        return;
    }

    if (t <= 8) {
        sub_08088F40(&s, b);
        return;
    }

    if (t <= 16) {
        sub_0808904C(&s, b);
    }
}

extern "C" ASM_FUNC("asm/non_matching/archive/sub_08088F40__1VP7SettingPs.inc", void sub_08088F40__1VP7SettingPs());

extern "C" ASM_FUNC("asm/non_matching/archive/sub_0808904C__1VP7SettingPs.inc", void sub_0808904C__1VP7SettingPs());

extern "C" ASM_FUNC("asm/non_matching/archive/sub_08089178.inc", void sub_08089178());

extern "C" ASM_FUNC("asm/non_matching/archive/sub_080891F0.inc", void sub_080891F0());

extern "C" ASM_FUNC("asm/non_matching/archive/sub_0808933C.inc", void sub_0808933C());
