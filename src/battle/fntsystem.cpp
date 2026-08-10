// Auto-generated source file#include "battle/keypad.h"
#include "base.h"
#include "battle/archive.h"
#include "battle/clock.h"
#include "global.h"

extern ClockData callback_sub_0806D878;

extern "C" void __11Unk08088018(void*);
extern "C" void LZ77UnCompWram(void*, void*);

CCLHandle::CCLHandle() {  // __9CCLHandle
    mType = 0;
    mCount = 0;
    mBlock = NULL;
}

CCLHandle::CCLHandle(const ResPtr& ref) {
    mType = 0;
    mCount = 0;
    mBlock = NULL;
    init(ref);
}

CCLHandle::~CCLHandle() {}

int CCLHandle::init(const ResPtr& ref) {
    mType = type(ref);

    switch (mType) {
    case 1:
        read1(ref);
        break;
    case 2:
        read2(ref);
        break;
    }

    return 1;
}

int CCLHandle::type(const ResPtr& ref) {
    if (RESOURCE(ref)->header != HEADER_CCL) {  // " lcc"
        return 1;
    } else {
        return RESOURCE(ref)->type;
    }
}

void CCLHandle::read1(const ResPtr& ref) {
    mCount = ref.size >> 5;
    mBlock = ref.address;
}

void CCLHandle::read2(const ResPtr& ref) {
    mCount = RESOURCE(ref)->count;
    mBlock = (void*)&RESOURCE(ref)->block;
}

u16 CCLHandle::count() {
    return mCount;
}

const void* CCLHandle::block() {
    return mBlock;
}

const void* CCLHandle::getPalette(u32 idx) {
    return (const void*)((u32)mBlock + (idx << 5));
}

CCGHandle::CCGHandle() {
    mType = 0;
    mReserve = NULL;
    mCount = 0;
    mBlock = NULL;
}

CCGHandle::CCGHandle(const ResPtr& ref) {
    mType = 0;
    mReserve = NULL;
    mCount = 0;
    mBlock = NULL;
    init(ref);
}

CCGHandle::~CCGHandle() {
    delete[] mReserve;
}

int CCGHandle::init(const ResPtr& ref) {
    delete[] mReserve;
    mReserve = NULL;

    mType = type(ref);

    switch (mType) {
    case 1:
        read1(ref);
        break;
    case 2:
        read2(ref);
        break;
    }

    return 1;
}

int CCGHandle::type(const ResPtr& ref) {
    if (RESOURCE(ref)->header != HEADER_CCG) {  // " gcc"
        return 1;
    } else {
        return RESOURCE(ref)->type;
    }
}

void CCGHandle::read1(const ResPtr& ref) {
    mCount = ref.size >> 5;
    mBlock = ref.address;
}

void CCGHandle::read2(const ResPtr& ref) {
    Resource* ccg = RESOURCE(ref);

    mCount = ccg->count;

    // allocate memory for uncompressed data
    mReserve = new u8[((*(u32*)&ccg->block) >> 8) + 0x20];
    LZ77UnCompWram(&ccg->block, (void*)mReserve);
    mBlock = mReserve;
}

u16 CCGHandle::count() {
    return mCount;
}

const void* CCGHandle::block() {
    return mBlock;
}

class Tuple16 {
public:
    u16 _0;
    u16 _2;
    Tuple16(u16 arg0, u16 arg2) {
        _0 = arg0;
        _2 = arg2;
    }
};

// TODO: actually define this
class Unk08088018 {
public:
    Unk08088018();           // sub_08088018
    virtual ~Unk08088018();  // _._11Unk08088018
    void sub_08088044(u16, void*, void*);
};

class Unk0806D64C : Base {
public:
    u16 _20;
    u8 pad_22[2];
    u16 _24;  // TODO: is this also a tuple?
    u16 _26;
    Tuple16 _28;
    Tuple16 _2C;
    BGHandle _30;
    CCGHandle _44;
    CCLHandle _58;
    Unk08088018 _64;
    u16 _68;

    Unk0806D64C();           // sub_0806D64C
    virtual ~Unk0806D64C();  // sub_0806D6E0

    virtual void sub_0806D744();
    virtual void sub_0806D79C();
    virtual u8 sub_0806D7D0();
    virtual void sub_0806D7DC();
    virtual void sub_0806D814();
    virtual void sub_0806D828();
    virtual void sub_0806D83C();
    virtual u16 sub_0806D850();
    virtual void sub_0806D854();
    virtual void sub_0806D860();
    virtual void sub_0806D868();
    virtual void sub_0806D870();
};

Unk0806D64C::Unk0806D64C() : _24(0), _26(0), _28(0, 0), _2C(0, 0) {
    _20 = 0;
    _68 = 2;
    listen(ClockManager::get(), AppClock(), callback_sub_0806D878);
}

Unk0806D64C::~Unk0806D64C() {
    if (sub_0806D7D0() == 1) {
        _64.sub_08088044(_20, &_24, &_28);
    }
}

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D744.inc", void sub_0806D744__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D79C.inc", void sub_0806D79C__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D7D0.inc", void sub_0806D7D0__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D7DC.inc", void sub_0806D7DC__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D814.inc", void sub_0806D814__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D828.inc", void sub_0806D828__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D83C.inc", void sub_0806D83C__11Unk0806D64C());

u16 Unk0806D64C::sub_0806D850() {
    return this->_20;
}

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D854.inc", void sub_0806D854__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D860.inc", void sub_0806D860__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D868.inc", void sub_0806D868__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D870.inc", void sub_0806D870__11Unk0806D64C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D878.inc", void sub_0806D878());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D8EC.inc", void sub_0806D8EC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D9A4.inc", void sub_0806D9A4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D9F4.inc", void sub_0806D9F4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DADC.inc", void sub_0806DADC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB2C.inc", void sub_0806DB2C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB38.inc", void sub_0806DB38());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB60.inc", void sub_0806DB60());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB74.inc", void sub_0806DB74());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB7C.inc", void sub_0806DB7C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB80.inc", void sub_0806DB80());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB88.inc", void sub_0806DB88());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB90.inc", void sub_0806DB90());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DB9C.inc", void sub_0806DB9C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBA8.inc", void sub_0806DBA8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBAC.inc", void sub_0806DBAC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBB4.inc", void sub_0806DBB4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBB8.inc", void sub_0806DBB8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBBC.inc", void sub_0806DBBC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBC4.inc", void sub_0806DBC4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBD0.inc", void sub_0806DBD0());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBE4.inc", void sub_0806DBE4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DBF8.inc", void sub_0806DBF8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DC78.inc", void sub_0806DC78());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DD48.inc", void sub_0806DD48());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DDA0.inc", void sub_0806DDA0());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DEB8.inc", void sub_0806DEB8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DEC4.inc", void sub_0806DEC4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DEEC.inc", void sub_0806DEEC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF00.inc", void sub_0806DF00());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF04.inc", void sub_0806DF04());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF2C.inc", void sub_0806DF2C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF48.inc", void sub_0806DF48());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF50.inc", void sub_0806DF50());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF54.inc", void sub_0806DF54());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF5C.inc", void sub_0806DF5C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF64.inc", void sub_0806DF64());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF70.inc", void sub_0806DF70());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF7C.inc", void sub_0806DF7C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF80.inc", void sub_0806DF80());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF88.inc", void sub_0806DF88());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF94.inc", void sub_0806DF94());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DF98.inc", void sub_0806DF98());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DFA4.inc", void sub_0806DFA4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DFAC.inc", void sub_0806DFAC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DFB0.inc", void sub_0806DFB0());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DFB4.inc", void sub_0806DFB4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DFBC.inc", void sub_0806DFBC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DFC8.inc", void sub_0806DFC8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DFDC.inc", void sub_0806DFDC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806DFF0.inc", void sub_0806DFF0());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E098.inc", void sub_0806E098());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E0FC.inc", void sub_0806E0FC());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E150.inc", void sub_0806E150());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E1C8.inc", void sub_0806E1C8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/genMisctextMsg__3MsgPvUi.inc", void genMisctextMsg__3MsgPvUi());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/__3Msg.inc", void __3Msg());

Msg* Msg::replace(const Msg& m) {
    resize(m.mLen);
    setText(m.mText, m.mLen);
    return this;
}

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E308.inc", void sub_0806E308());

u16* Msg::getTextAtOffset(s32 idx) {
    return &mText[idx];
}

u16* Msg::getTextAtOffset2(s32 idx) {
    return &mText[idx];
}

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E344.inc", void sub_0806E344());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E34C.inc", void sub_0806E34C());

Msg* Msg::concatenate(const Msg& m) {
    resize(mLen + m.mLen);

    for (s32 i = 0; i < m.mLen; i++) {
        mText[mLen++] = m.mText[i];
    }

    return this;
}

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E3B4.inc", void sub_0806E3B4());

s32 Msg::len() {
    return mLen;
}

void Msg::resize(s32 size) {
    u16* oldText;

    if (mCapacity < size) {
        size = max(mCapacity * 2, size);
        oldText = mText;
        mText = new u16[size];
        mCapacity = size;

        setText(oldText, mLen);

        if (oldText) {
            delete[] oldText;
        }
    }
}

void Msg::setText(u16* textPtr, s32 len) {
    mLen = 0;

    for (u16 i = 0; i < len; mLen++, i = mLen) {
        mText[i] = textPtr[i];
    }
}

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E480.inc", void sub_0806E480());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E488.inc", void makeInstance__16FntSystemManager());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E4B8.inc", void sub_0806E4B8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E4C4.inc", void destroy__16FntSystemManager());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E500.inc", void getRTTI_9FntSystem());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E50C.inc", void __9FntSystem());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E618.inc", void sub_0806E618());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E640.inc", void sub_0806E640());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E6D8.inc", void sub_0806E6D8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E74C.inc", void sub_0806E74C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E7B4.inc", void sub_0806E7B4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E804.inc", void _GLOBAL_I_FntSystemManager());
