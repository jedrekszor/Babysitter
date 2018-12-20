#ifndef BABYSITTER_CHILDSITTER_H
#define BABYSITTER_CHILDSITTER_H

#include "Babysitter.h"

class Childsitter: public Babysitter
{
public:
    void pickFromSchool();
    void takeToZoo();
    void cookDinner()
};

#endif //BABYSITTER_CHILDSITTER_H
