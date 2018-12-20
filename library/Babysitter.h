#ifndef BABYSITTER_BABYSITTER_H
#define BABYSITTER_BABYSITTER_H

#include "Sitter.h"

class Babysitter: public Sitter
{
public:
    void dayCare();
    void takeToPark();
    bool canAccept(Order* order);
};


#endif //BABYSITTER_BABYSITTER_H
