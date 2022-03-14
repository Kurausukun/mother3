#ifndef SINGLETON_H
#define SINGLETON_H

#include "base.h"
#include "global.h"

struct Singleton {
    struct Allocator {
        static Allocator* get();

        s32 count;
        Singleton* start;
        Singleton* end;

        static Allocator instance;
        static s32 guard;
    };

    Singleton();

    Singleton* sub_08068978();
    u32 debugStub(const char*);

    // todo: make pure virtual once children are finished
    virtual const char* getName();  // = 0;

    Singleton* prev; // debug related?
    Singleton* next;
};

#define SINGLETON(CLASS)                                                                           \
    struct CLASS##Singleton : Singleton {                                                          \
        virtual const char* getName();                                                             \
                                                                                                   \
        static void* init(u16 id);                                                                 \
        static void* get();                                                                        \
    };

#define SINGLETON_IMPL(CLASS)                                                                      \
    CLASS##Singleton s##CLASS##Singleton;                                                          \
                                                                                                   \
    void* CLASS##Singleton::get() { return &s##CLASS##Singleton; }                     \
                                                                                                   \
    /* this is implementing a CLASS member function!!! */                                          \
    void* CLASS::getInstance() { return CLASS##Singleton::get(); }

#define SINGLETON_MGR(CLASS)                                                                       \
    struct CLASS##Manager : Singleton {                                                            \
    public:                                                                                        \
        static CLASS##Manager* manager();                                                          \
        static CLASS* get();                                                                       \
        CLASS* makeInstance();                                                                     \
        static void destroy();                                                                     \
        virtual void* init();                                                                      \
        virtual const char* getName();                                                             \
                                                                                                   \
    private:                                                                                       \
        static s32 mSingletonGuard;                                                                \
        static CLASS* mSingleton;                                                                  \
    };

#define SINGLETON_MGR_IMPL(CLASS)                                                                  \
    CLASS##Manager s##CLASS##Manager;                                                              \
                                                                                                   \
    CLASS##Manager* CLASS##Manager::manager() { return &s##CLASS##Manager; }                       \
                                                                                                   \
    CLASS* CLASS##Manager::makeInstance() {                                                        \
        if (++mSingletonGuard == 1)                                                                \
            mSingleton = new CLASS();                                                              \
        return mSingleton;                                                                         \
    }                                                                                              \
                                                                                                   \
    CLASS* CLASS##Manager::get() { return mSingleton; }                                            \
                                                                                                   \
    void CLASS##Manager::destroy() {                                                               \
        if (mSingletonGuard <= 0 || --mSingletonGuard != 0)                                        \
            return;                                                                                \
                                                                                                   \
        if (mSingleton != 0)                                                                       \
            delete mSingleton;                                                                     \
        mSingleton = 0;                                                                            \
    }                                                                                              \
                                                                                                   \
    void* CLASS::getInstance() { return CLASS##Manager::manager(); }

#define SINGLETON_DEBUG(CLASS, STR)                                                                \
    /*const char* class##Singleton::getName() { return #CLASS; }*/                                 \
    extern const char STR[];                                                                       \
    void* CLASS##Singleton::init(u16 id) { return new CLASS; }                                     \
    const char* CLASS##Singleton::getName() { return STR; }                                        \
    /* CLASS::~CLASS() {} TODO: class destructor is inlined here, how do we generate this? */

#define SINGLETON_DEBUG_MGR(CLASS, STR)                                                            \
    /*const char* class##Manager::getName() { return #CLASS; }*/                                   \
    extern const char STR[];                                                                       \
    void* CLASS##Manager::init() { return new CLASS; }                                             \
    const char* CLASS##Manager::getName() { return STR; }

#endif  // SINGLETON_H
