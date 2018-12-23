#ifndef BABYSITTER_BABYSITTER_H
#define BABYSITTER_BABYSITTER_H

#include "Sitter.h"

class Babysitter: public Sitter
{
public:
    Babysitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating);
    void dayCare();
    void takeToPark();
    bool canAccept(std::shared_ptr<Order> order);
};


#endif //BABYSITTER_BABYSITTER_H
