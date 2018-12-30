#ifndef BABYSITTER_MANAGER_H
#define BABYSITTER_MANAGER_H

#include <vector>
#include <fstream>
#include <iostream>
#include "Order.h"
#include "Sitter.h"
#include "Babysitter.h"
#include "Childsitter.h"
#include "PartyOrganizer.h"
#include "Tutor.h"

class Manager
{
private:
    std::shared_ptr<Order> current;
    std::vector<std::shared_ptr<Sitter>> sitters;
public:
    Manager();
    void printTypes(std::shared_ptr<Order> order);
    void printSitters(std::shared_ptr<Order> order);
    void matchOrder();
    std::shared_ptr<Order> getCurrent();
    void setCurrent(std::shared_ptr<Order> current);
    void printAvailable();
    std::shared_ptr<Sitter> getSitter(int index);
    ~Manager();
};

#endif //BABYSITTER_MANAGER_H
