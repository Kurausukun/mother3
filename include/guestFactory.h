#ifndef GUEST_FACTORY_H
#define GUEST_FACTORY_H

#include "guest.h"

class DefaultGuest : public Guest {
public:
    DefaultGuest();
    virtual ~DefaultGuest();
};
class Wess : public Guest {
public:
    Wess(u16 id);
    virtual ~Wess();
};
class Thomas : public Guest {
public:
    Thomas(u16 id);
    virtual ~Thomas();
};
class Ionia : public Guest {
public:
    Ionia(u16 id);
    virtual ~Ionia();
};
class Fuel : public Guest {
public:
    Fuel(u16 id);
    virtual ~Fuel();
};
class Alec : public Guest {
public:
    Alec(u16 id);
    virtual ~Alec();
};
class Fassad : public Guest {
public:
    Fassad(u16 id);
    virtual ~Fassad();
};

class GuestFactory {
public:
    static void init();
    static void put(u16 id, void* (*spawn)(u16 id));
    static void* create(u16 id);
};

SINGLETON(DefaultGuest);
SINGLETON(Wess);
SINGLETON(Thomas);
SINGLETON(Ionia);
SINGLETON(Fuel);
SINGLETON(Alec);
SINGLETON(Fassad);

#endif // GUEST_FACTORY_H
