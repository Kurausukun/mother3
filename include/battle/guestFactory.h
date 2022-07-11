#ifndef BATTLE_GUEST_FACTORY_H
#define BATTLE_GUEST_FACTORY_H

#include "factory.h"
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

FACTORY(DefaultGuest, u16);
FACTORY(Wess, u16);
FACTORY(Thomas, u16);
FACTORY(Ionia, u16);
FACTORY(Fuel, u16);
FACTORY(Alec, u16);
FACTORY(Fassad, u16);

#endif  // BATTLE_GUEST_FACTORY_H
