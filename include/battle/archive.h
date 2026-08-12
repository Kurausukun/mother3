#ifndef BATTLE_ARCHIVE_H
#define BATTLE_ARCHIVE_H

#include "base.h"
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

class ResPtr {
public:
    ResPtr();
    virtual ~ResPtr();

    bool set(ResPtr& ref);
    u16 type() const;
    
    char* address;
};

// TODO: make this derived from ResPtr
class ResPtrSized {
public:
    inline ResPtrSized(char* address, u32 size) : address(address), size(size) {}
    virtual ~ResPtrSized() {}

    // INLINE_VT_END

    // inline void init(void* address, u32 size) { address = address; size = size; }
    // inline const BXT* operator()() const { return static_cast<BXT*>(address); }

    char* address;
    u32 size;
};

struct SAREntry {
    u32 offset;
    u32 size;
};

struct SARHandle : public ResPtr {
    SARHandle();
    virtual ~SARHandle();
};

class BGHandle {
public:
    BGHandle();
    BGHandle(const ResPtrSized& ref);
    virtual ~BGHandle();

    int init(const ResPtrSized& ref);
    int type(const ResPtrSized& ref);
    void read1(const ResPtrSized& ref);
    void read2(const ResPtrSized& ref);
    void _fd4(const ResPtrSized& ref);
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
    BXTHandle(const ResPtrSized& ptr);
    virtual ~BXTHandle();

    Msg getMessage(u32 index);
    u32 type(const ResPtrSized& ptr) const;
    u32 count() const;

    bool init(const ResPtrSized& ref);
    void read(const ResPtrSized& ref);

private:
    u16 mType;
    u16 mCount;
    const u8* mBlock;
    const u16* mOffsets;
};

class CCGHandle {
public:
    CCGHandle();
    CCGHandle(const ResPtrSized&);
    virtual ~CCGHandle();

    int init(const ResPtrSized&);
    int type(const ResPtrSized&);
    void read1(const ResPtrSized&);
    void read2(const ResPtrSized&);
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
    CCLHandle(const ResPtrSized&);
    virtual ~CCLHandle();

    int init(const ResPtrSized&);
    int type(const ResPtrSized&);
    void read1(const ResPtrSized&);
    void read2(const ResPtrSized&);
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

extern "C" ResPtrSized LoadRes(SARHandle* archive, u32 idx);

#endif  // BATTLE_ARCHIVE_H
