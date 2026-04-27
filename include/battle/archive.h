#ifndef BATTLE_ARCHIVE_H
#define BATTLE_ARCHIVE_H

#include "base.h"
#include "battle/system.h"
#include "global.h"
#include "vector.h"

#define HEADER_BG  0x20206762
#define HEADER_BXT 0x20747862
#define HEADER_CCG 0x20676363
#define HEADER_CCL 0x206C6363

#define RESOURCE(ref) (reinterpret_cast<Resource*>(ref.address))

struct Resource {
    u32 header;     //0
    u16 type;       //4
    u16 _6;         //6
    u16 count;      //8
    u16 _a;         //A
    u8 block[0];    //C
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

class BGHandle {
public:
    BGHandle();
    BGHandle(const ResPtr& ref);
    virtual ~BGHandle();

    int init(const ResPtr& ref);
    int type(const ResPtr& ref);
    void read1(const ResPtr& ref);
    void read2(const ResPtr& ref);
    void _fd4(const ResPtr& ref);
    u16 count() const;
    const void* block() const;

private:
    u16 mType;
    u16 _2;
    const void* mReserve;
    u16 mCount;
    const void* mBlock;
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

class CCGHandle {
public:
    CCGHandle();
    CCGHandle(const ResPtr&);
    virtual ~CCGHandle();

    int init(const ResPtr&);
    int type(const ResPtr&);
    void read1(const ResPtr&);
    void read2(const ResPtr&);
    u16 count();
    const void* block();

private:
    u16 mType;
    const void* mReserve;
    u16 mCount;
    const void* mBlock;
};

class CCLHandle {
public:
    CCLHandle();
    CCLHandle(const ResPtr&);
    virtual ~CCLHandle();

    int init(const ResPtr&);
    int type(const ResPtr&);
    void read1(const ResPtr&);
    void read2(const ResPtr&);
    u16 count();
    const void* block();
    const void* getPalette(u32 idx);

private:
    u16 mType;
    u16 mCount;
    const void* mBlock;
};

struct BattleMessage : Msg {
    BattleMessage(BXTHandle* handle, u32 index);
};

extern "C" ResPtr LoadRes(System::SARHandle* archive, u32 idx);

#endif  // BATTLE_ARCHIVE_H
