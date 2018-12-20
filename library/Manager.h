#ifndef BABYSITTER_MANAGER_H
#define BABYSITTER_MANAGER_H

#include <ios>
#include <vector>
#include "Order.h"
#include "Sitter.h"

class Manager
{
private:
    Order* current;
    std::vector<Order*> orders;
    std::vector<Sitter*> sitters;
public:
    Manager();
    void printTypes(Order* order);
    void printSitters(Order* order);
    void matchOrder();
    Order* getCurrent();
    void setCurrent(Order* current);
    void printAvailable();
};

#endif //BABYSITTER_MANAGER_H
