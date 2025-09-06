// Auto-generated source file#include "battle/keypad.h"
#include "base.h"
#include "battle/clock.h"
#include "global.h"

extern ClockData gUnknown_080FFD3C;

extern "C" void __11Unk08088018(void*);
extern "C" void sub_08090F8C(void*, void*);

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D2CC.inc", void sub_0806D2CC());

struct Unk1 {
    u32 _0;
    u16 _4;
    u8 pad_6[2];
    u16 _8;
    u8 pad_A[2];
    u8 _C;  // TODO: determine size
};

struct Unk2 {
    Unk1* _0;
    u32 _4;
};

class Unk0806D478 {
public:
    u16 _u0;
    u16 _u2;
    void* _u4;

    Unk0806D478();
    Unk0806D478(Unk2*);
    virtual ~Unk0806D478();
    int sub_0806D4D0(Unk2*);
    int sub_0806D504(Unk2*);
    void sub_0806D520(Unk2*);
    void sub_0806D52C(Unk2*);
};

Unk0806D478::Unk0806D478() {  // __11Unk0806D478
    _u0 = 0;
    _u2 = 0;
    _u4 = NULL;
}

Unk0806D478::Unk0806D478(Unk2* arg0) {
    _u0 = 0;
    _u2 = 0;
    _u4 = NULL;
    sub_0806D4D0(arg0);
}

Unk0806D478::~Unk0806D478() {}

int Unk0806D478::sub_0806D4D0(Unk2* arg0) {
    this->_u0 = this->sub_0806D504(arg0);

    switch (this->_u0) {
    case 1:
        this->sub_0806D520(arg0);
        break;
    case 2:
        this->sub_0806D52C(arg0);
        break;
    }

    return 1;
}

int Unk0806D478::sub_0806D504(Unk2* arg0) {
    if (arg0->_0->_0 != 0x206C6363) {  // " lcc"
        return 1;
    } else {
        return arg0->_0->_4;
    }
}

void Unk0806D478::sub_0806D520(Unk2* arg0) {
    this->_u2 = arg0->_4 >> 5;
    this->_u4 = (void*)arg0->_0;
}

void Unk0806D478::sub_0806D52C(Unk2* arg0) {
    this->_u2 = arg0->_0->_8;
    this->_u4 = (void*)&arg0->_0->_C;
}

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D538.inc", void sub_0806D538());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D53C.inc", void sub_0806D53C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D540.inc", void sub_0806D540());

class Unk0806D548 {
public:
    u16 _0;
    u8* _4;
    u16 _8;
    u32 _C;

    Unk0806D548();
    Unk0806D548(Unk2*);
    virtual ~Unk0806D548();
    int sub_0806D5AC(Unk2*);
    int sub_0806D5F0(Unk2*);
    void sub_0806D60C(Unk2*);
    void sub_0806D618(Unk2*);
};

Unk0806D548::Unk0806D548() {
    _0 = 0;
    _4 = NULL;
    _8 = 0;
    _C = 0;
}

Unk0806D548::Unk0806D548(Unk2* arg0) {
    _0 = 0;
    _4 = NULL;
    _8 = 0;
    _C = 0;
    sub_0806D5AC(arg0);
}

Unk0806D548::~Unk0806D548() {
    delete[] _4;
}

int Unk0806D548::sub_0806D5AC(Unk2* arg0) {
    delete[] _4;
    _4 = NULL;

    _0 = sub_0806D5F0(arg0);

    switch (_0) {
    case 1:
        sub_0806D60C(arg0);
        break;
    case 2:
        sub_0806D618(arg0);
        break;
    }

    return 1;
}

int Unk0806D548::sub_0806D5F0(Unk2* arg0) {
    if (arg0->_0->_0 != 0x20676363) {  // " gcc"
        return 1;
    } else {
        return arg0->_0->_4;
    }
}

void Unk0806D548::sub_0806D60C(Unk2* arg0) {
    this->_8 = arg0->_4 >> 5;
    this->_C = (u32)arg0->_0;
}

void Unk0806D548::sub_0806D618(Unk2* arg0) {
    Unk1* arg1 = arg0->_0;

    this->_8 = arg1->_8;

    // get the size of the compressed data
    this->_4 = new u8[((*(u32*)&arg1->_C) >> 8) + 0x20];
    sub_08090F8C(&arg1->_C, this->_4);  // LZ77UnCompReadNormalWrite8bit
    this->_C = (u32)this->_4;
}

extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D644.inc", void sub_0806D644());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806D648.inc", void sub_0806D648());

// TODO: actually define this
class Unk08087ED8 {
public:
    u8 pad_0[0x10];
    Unk08087ED8();           // __11Unk08087ED8
    virtual ~Unk08087ED8();  // _._11Unk08087ED8
};

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
    Unk08087ED8 _30;
    Unk0806D548 _44;
    Unk0806D478 _58;
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
    listen(ClockManager::get(), AppClock(), gUnknown_080FFD3C);
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
extern "C" ASM_FUNC("asm/non_matching/fntsystem/replace__3MsgRC3Msg.inc", void replace__3MsgRC3Msg());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E308.inc", void sub_0806E308());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E334__3Msgi.inc", void sub_0806E334__3Msgi());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E33C.inc", void sub_0806E33C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E344.inc", void sub_0806E344());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E34C.inc", void sub_0806E34C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E374__3MsgRC3Msg.inc", void sub_0806E374__3MsgRC3Msg());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E3B4.inc", void sub_0806E3B4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/len__3Msg.inc", void len__3Msg());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E418.inc", void sub_0806E418());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E454.inc", void sub_0806E454());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E480.inc", void sub_0806E480());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E488.inc", void sub_0806E488());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E4B8.inc", void sub_0806E4B8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E4C4.inc", void sub_0806E4C4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E500.inc", void sub_0806E500());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E50C.inc", void sub_0806E50C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E618.inc", void sub_0806E618());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E640.inc", void sub_0806E640());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E6D8.inc", void sub_0806E6D8());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E74C.inc", void sub_0806E74C());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E7B4.inc", void sub_0806E7B4());
extern "C" ASM_FUNC("asm/non_matching/fntsystem/sub_0806E804.inc", void sub_0806E804());
