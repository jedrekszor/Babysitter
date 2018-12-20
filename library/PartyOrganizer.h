#ifndef BABYSITTER_PARTYORGANIZER_H
#define BABYSITTER_PARTYORGANIZER_H

#include "Sitter.h"

class PartyOrganizer: public Sitter
{
public:
    void birthday();
    void carnival();
    void quinceanera();
    bool canAccept(Order* order);
};

#endif //BABYSITTER_PARTYORGANIZER_H
