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
    Vector<PoolElement> pool;

    ObjPltPool();
    virtual ~ObjPltPool();

    virtual void* getRTTI();

    s32 sub_0806C964(s32 searchValue);
    u16 sub_0806C9A0(int);
    s32 sub_0806C9D4(int);
    void clear();
};

extern ClockData callback_clear__10ObjPltPool;

extern "C" ASM_FUNC("asm/non_matching/objpltpool/sub_0806C76C.inc", void sub_0806C76C());

MANAGER_DECL(ObjPltPool)
RTTI_DECL(ObjPltPool)

MANAGER_IMPL(ObjPltPool)

ObjPltPool::ObjPltPool() {
    listen(ClockManager::get(), SysClock(), callback_clear__10ObjPltPool);
}

ObjPltPool::~ObjPltPool() {}

extern "C" ASM_FUNC("asm/non_matching/objpltpool/sub_0806C898.inc", void sub_0806C898());

s32 ObjPltPool::sub_0806C964(s32 searchValue) {
    Vector<PoolElement>* data = &pool;

    s32 count = pool.size();
    if (count <= 0) {
        return count;
    }

    s32 left = 0;
    s32 right = count;

    while (left < right) {
        s32 mid = (left + right) / 2;
        PoolElement* element = &pool[mid];

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

    if (index < pool.size()) {
        PoolElement* element = &pool[index];
        element->counter++;
        return pool[index].value;
    }

    return 0xFFFF;
}

s32 ObjPltPool::sub_0806C9D4(int searchValue) {
    s32 count = pool.size();
    if (count <= 0) {
        return count;
    }

    s32 left = 0;
    s32 right = pool.size() - 1;

    while (left < right) {
        s32 mid = (left + right) / 2;

        if (pool[mid]._4 < searchValue) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }

    return pool[left]._4 == searchValue ? left : count;
}

void ObjPltPool::clear() {
    pool.clear();
}
