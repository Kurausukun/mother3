#ifndef BATTLE_ARCHIVE_H
#define BATTLE_ARCHIVE_H

#include "base.h"
#include "battle/system.h"
#include "global.h"
#include "vector.h"

#define HEADER_BG  0x20206762
#define HEADER_BXT 0x20747862
#define HEADER_CCL 0x206C6363
#define HEADER_CCG 0x20676363

struct Resource {
    u32 _0;
    u16 _4;
    u8 pad_6[2];
    u16 _8;
    u8 pad_A[2];
    u8 _C;  // TODO: determine size
};

struct ResPtr2 {
    Resource* address;
    u32 size;
};

struct BXT {
    u32 magic;
    u16 type;
    u16 _6;
    u16 count;
    u16 _a;
    u16 offsets[0];
};

struct ResPtr {
    inline ResPtr(char* address, u32 size) : address(address), size(size) {}
    virtual ~ResPtr() {}

    // INLINE_VT_END

    // inline void init(void* address, u32 size) { address = address; size = size; }
    // inline const BXT* operator()() const { return static_cast<BXT*>(address); }

    char* address;
    u32 size;
};

class BXTHandle {
public:
    BXTHandle();
    BXTHandle(const ResPtr& ptr);
    virtual ~BXTHandle();

    Msg getMessage(u32 index);
    u32 type(const ResPtr& ptr) const;
    u32 count() const;

    bool init(const ResPtr& ref);
    void read(const ResPtr& ref);

private:
    u16 mType;
    u16 mCount;
    const u8* mBlock;
    const u16* mOffsets;
};

struct BattleMessage : Msg {
    BattleMessage(BXTHandle* handle, u32 index);
};

extern "C" ResPtr LoadRes(System::SARHandle* archive, u32 idx);

#endif  // BATTLE_ARCHIVE_H
