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

    Singleton* prev;  // debug related?
    Singleton* next;
};

#define MANAGER_DECL(CLASS)                                                                      \
    struct CLASS##Manager : Singleton {                                                            \
    public:                                                                                        \
        static CLASS##Manager* manager();                                                          \
        static CLASS* get();                                                                       \
        static CLASS* makeInstance();                                                              \
        static void destroy();                                                                     \
        virtual void* init();                                                                      \
        virtual const char* getName();                                                             \
                                                                                                   \
    private:                                                                                       \
        static s32 mSingletonGuard;                                                                \
        static CLASS* mSingleton;                                                                  \
    };

#define MANAGER_IMPL(CLASS)                                                                      \
    CLASS##Manager s##CLASS##Manager;                                                              \
                                                                                                   \
    CLASS##Manager* CLASS##Manager::manager() {                                                    \
        return &s##CLASS##Manager;                                                                 \
    }                                                                                              \
                                                                                                   \
    CLASS* CLASS##Manager::makeInstance() {                                                        \
        if (++mSingletonGuard == 1)                                                                \
            mSingleton = new CLASS();                                                              \
        return mSingleton;                                                                         \
    }                                                                                              \
                                                                                                   \
    CLASS* CLASS##Manager::get() {                                                                 \
        return mSingleton;                                                                         \
    }                                                                                              \
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
    void* CLASS::getRTTI() {                                                                       \
        return CLASS##Manager::manager();                                                          \
    }

#define MANAGER_DEBUG_IMPL(CLASS)                                                            \
    /*const char* class##Manager::getName() { return #CLASS; }*/                                   \
    extern const char const_classname_##CLASS[];                                                   \
    void* CLASS##Manager::init() {                                                                 \
        return new CLASS;                                                                          \
    }                                                                                              \
    const char* CLASS##Manager::getName() {                                                        \
        return const_classname_##CLASS;                                                            \
    }

// TODO: "[CLASS]RTTI" classes might be more appropriately named "[CLASS]Singleton"?

// TODO: rewrite this to work inside class definition
#define RTTI_DECL(CLASS)                                                                            \
    struct CLASS##RTTI : Singleton {                                                                \
        virtual const char* getName();                                                              \
                                                                                                    \
        static void* init(u16 id);                                                                  \
        static void* get();                                                                         \
    };

#define RTTI_IMPL(CLASS)                                                                            \
    CLASS##RTTI s##CLASS##RTTI;                                                                     \
                                                                                                    \
    void* CLASS##RTTI::get() {                                                                      \
        return &s##CLASS##RTTI;                                                                     \
    }                                                                                               \
                                                                                                    \
    /* this is implementing a CLASS member function!!! */                                           \
    void* CLASS::getRTTI() {                                                                        \
        return CLASS##RTTI::get();                                                                  \
    }

#define RTTI_DEBUG_IMPL(CLASS)                                                                 \
    /*const char* class##Singleton::getName() { return #CLASS; }*/                                  \
    extern const char const_classname_##CLASS[];                                                    \
    void* CLASS##RTTI::init(u16 id) {                                                               \
        return new CLASS;                                                                           \
    }                                                                                               \
    const char* CLASS##RTTI::getName() {                                                            \
        return const_classname_##CLASS;                                                             \
    }                                                                                               \
    /* CLASS::~CLASS() {} TODO: class destructor is inlined here, how do we generate this? */


#endif  // SINGLETON_H
