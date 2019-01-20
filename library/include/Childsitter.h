#ifndef BABYSITTER_CHILDSITTER_H
#define BABYSITTER_CHILDSITTER_H

#include "Babysitter.h"

class Childsitter: public Sitter
{
public:
    Childsitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople);
    void dayCare();
    void takeToPark();
    void pickFromSchool();
    void takeToZoo();
    void cookDinner();
    bool canAccept(std::shared_ptr<Order> order);
};

#endif //BABYSITTER_CHILDSITTER_H
