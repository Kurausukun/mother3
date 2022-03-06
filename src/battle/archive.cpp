#include "battle/archive.h"

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
    mType = getType(ref);

    switch (mType) {
    case 1:
        read(ref);
        break;
    }
    return true;
}

u32 BXTHandle::getType(const BXTRef& ref) const {
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
