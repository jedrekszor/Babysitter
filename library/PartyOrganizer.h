#ifndef BABYSITTER_PARTYORGANIZER_H
#define BABYSITTER_PARTYORGANIZER_H

#include "Sitter.h"

class PartyOrganizer: public Sitter
{
private:
    int maxPeople;
public:
    PartyOrganizer(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople);
    void birthday();
    void carnival();
    void quinceanera();
    bool canAccept(std::shared_ptr<Order> order);
};

#endif //BABYSITTER_PARTYORGANIZER_H
