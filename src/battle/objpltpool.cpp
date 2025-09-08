// Auto-generated source file
#include "base.h"
#include "battle/clock.h"
#include "global.h"
#include "singleton.h"
#include "vector.h"

struct PoolElement {
    u16 counter;
    u16 value;
    u32 _4;
};

class ObjPltPool : public Base {
public:
    Vector<PoolElement> _20;

    ObjPltPool();
    virtual ~ObjPltPool();

    virtual void* getRTTI();

    s32 sub_0806C964(s32 searchValue);
    u16 sub_0806C9A0(int);
    s32 sub_0806C9D4(int);
    void sub_0806CA24();
};

extern ClockData gUnknown_080FF664;  // refers to sub_0806CA24

extern "C" ASM_FUNC("asm/non_matching/objpltpool/sub_0806C76C.inc", void sub_0806C76C());

SINGLETON_DECL(ObjPltPool)
RTTI(ObjPltPool)

SINGLETON_IMPL(ObjPltPool)

ObjPltPool::ObjPltPool() {
    listen(ClockManager::get(), SysClock(), gUnknown_080FF664);
}

ObjPltPool::~ObjPltPool() {}

extern "C" ASM_FUNC("asm/non_matching/objpltpool/sub_0806C898.inc", void sub_0806C898());

s32 ObjPltPool::sub_0806C964(s32 searchValue) {
    Vector<PoolElement>* data = &_20;

    s32 count = _20.size();
    if (count <= 0) {
        return count;
    }

    s32 left = 0;
    s32 right = count;

    while (left < right) {
        s32 mid = (left + right) / 2;
        PoolElement* element = &_20[mid];

        if (element->_4 < searchValue) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }

    return left;
}

u16 ObjPltPool::sub_0806C9A0(int arg0) {
    s32 index = sub_0806C9D4(arg0);

    if (index < _20.size()) {
        PoolElement* element = &_20[index];
        element->counter++;
        return _20[index].value;
    }

    return 0xFFFF;
}

s32 ObjPltPool::sub_0806C9D4(int searchValue) {
    s32 count = _20.size();
    if (count <= 0) {
        return count;
    }

    s32 left = 0;
    s32 right = _20.size() - 1;

    while (left < right) {
        s32 mid = (left + right) / 2;

        if (_20[mid]._4 < searchValue) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }

    return _20[left]._4 == searchValue ? left : count;
}

// TODO: should ths be a function that takes ObjPltPool as an argument?
void ObjPltPool::sub_0806CA24() {
    _20.clear();
}
