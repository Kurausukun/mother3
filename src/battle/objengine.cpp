#include "base.h"
#include "battle/clock.h"
#include "global.h"

typedef struct UnkObjEngine {
    u32 _0;
    u8 pad_4[0x200];
} UnkObjEngine;
static_assert(sizeof(UnkObjEngine) == 0x204);

typedef struct UnkBar {
    u32 _938;
    u32 _93c;
    void* _940;
} UnkFoo;

class ObjEngine : public Base {
public:
    UnkObjEngine _20[4];

    u16 _830;
    u16 _832;
    u32 _834;
    u8 pad_838[0x938 - 0x838];
    UnkBar _938;
    u16 _944;
    u8 pad_946[0x948 - 0x946];
    u32 _948;
    u8 pad_94c[0xb4c - 0x94c];
    u32 _b4c;

    virtual void* sub_0806BE5C();
    ObjEngine();  // sub_0806BE68
    virtual ~ObjEngine();
};

extern ClockData gUnknown_080FF3FC;
extern ClockData gUnknown_080FF404;

extern int gUnknown_02001CF4;
extern s32 gUnknown_02001D00;
extern ObjEngine* gUnknown_02001D04;

// genengine
extern "C" void* sub_0806A974();
extern "C" void sub_0806AFA4(void*, int);
;
extern "C" void sub_0806AF58(void*, int);

// objchrpool
extern "C" void sub_0806C428();
extern "C" void makeInstance__17ObjPltPoolManager();

extern "C" void destroy__17ObjPltPoolManager();
extern "C" void sub_0806C464();
extern "C" void* sub_0806A9A4();
extern "C" void sub_0806A9B0();
extern "C" void sub_0806AFA4(void*, int);

extern "C" void* sub_0806BDDC(void) {
    return &gUnknown_02001CF4;
}

extern "C" ObjEngine* sub_0806BDE4(void) {
    // Only allocate on first call
    if (gUnknown_02001D00++ == 0) {
        gUnknown_02001D04 = new ObjEngine();
    }

    return gUnknown_02001D04;
}

extern "C" ObjEngine* sub_0806BE14(void) {
    return gUnknown_02001D04;
}

extern "C" void sub_0806BE20() {
    if (gUnknown_02001D00 > 0) {
        if (--gUnknown_02001D00 == 0) {
            delete gUnknown_02001D04;
            gUnknown_02001D04 = NULL;
        }
    }
}

void* ObjEngine::sub_0806BE5C() {
    return sub_0806BDDC();
}

#ifdef NON_MATCHING
ObjEngine::ObjEngine() {
    UnkObjEngine*ptr = _20;
    for(int i =3; i !=-1; i--) {
        ptr->_0 = 0;
        ptr++;
    }

  _830 = 0;
  _832 = 0;
  _834 = 0;
  _938 = 0;
  _93c = 0;
  _940 = 0;
  _948 = 0;
  _944 = 0;
  _b4c = 0;

  void* temp_r0_3 = sub_0806A974();
  sub_0806AFA4(temp_r0_3, 0xEF9F);
  sub_0806AF58(temp_r0_3, 0x1040);

  listen(ClockManager::get(), SysClock(), gUnknown_080FF3FC);
  listen(ClockManager::get(), PostSysClock(), gUnknown_080FF404);

  sub_0806C428();
  makeInstance__17ObjPltPoolManager();
}
#else
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806BE68.inc", void __9ObjEngine());
#endif

ObjEngine::~ObjEngine() {
    destroy__17ObjPltPoolManager();
    sub_0806C464();
    sub_0806AFA4(sub_0806A9A4(), 0xEF9F);
    sub_0806A9B0();

    UnkBar* temp = &this->_938;
    delete[] temp->_940;
}

extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806BFB0.inc", void sub_0806BFB0());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806BFCC.inc", void sub_0806BFCC());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C010.inc", void sub_0806C010());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C028.inc", void sub_0806C028());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C034.inc", void sub_0806C034());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C040.inc", void sub_0806C040());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C054.inc", void sub_0806C054());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C090.inc", void sub_0806C090());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C0A0.inc", void sub_0806C0A0());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C0B4.inc", void sub_0806C0B4());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C154.inc", void sub_0806C154());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C160.inc", void sub_0806C160());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C174.inc", void sub_0806C174());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C1B0.inc", void sub_0806C1B0());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C1C0.inc", void sub_0806C1C0());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C1CC.inc", void sub_0806C1CC());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C1D8.inc", void sub_0806C1D8());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C3DC.inc", void sub_0806C3DC());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C404.inc", void sub_0806C404());
