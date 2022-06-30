#ifndef FACTORY_H
#define FACTORY_H

#define FACTORY(CLASS, ...)                                                                           \
    struct CLASS##Factory {                                                                         \
        static void* create(__VA_ARGS__);                                                         \
    };

#endif // FACTORY_H
