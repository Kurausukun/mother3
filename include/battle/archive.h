#ifndef BATTLE_ARCHIVE_H
#define BATTLE_ARCHIVE_H

#include "global.h"
#include "vector.h"
#include "base.h"

struct BXT {
    u32 magic;
    u16 type;
    u16 _6;
    u16 count;
    u16 _a;
    u16 offsets[0];
};

struct BXTRef {
    inline const BXT* operator()() const { return data; }

    const BXT* data;
};

class BXTHandle {
    BXTHandle();
    BXTHandle(const BXTRef& ref);
    virtual ~BXTHandle();
    
    Msg getMessage(u32 index);
    u32 getType(const BXTRef& ref) const;
    u32 count() const;

    friend class BattleMessage;

private:
    bool init(const BXTRef& ref);
    void read(const BXTRef& ref);

    u16 mType;
    u16 mCount;
    const u8* mBlock;
    const u16* mOffsets;
};

struct BattleMessage : Msg {
    BattleMessage(BXTHandle* handle, u32 index);
};

#endif // BATTLE_ARCHIVE_H
