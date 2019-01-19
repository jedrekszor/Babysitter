#ifndef BABYSITTER_MANAGER_H
#define BABYSITTER_MANAGER_H

#include <vector>
#include <fstream>
#include <iostream>
#include <string>
#include "Order.h"
#include "Sitter.h"
#include "Babysitter.h"
#include "Childsitter.h"
#include "PartyOrganizer.h"
#include "Tutor.h"
#include "UI.h"

class Manager
{
private:
    std::shared_ptr<Order> _current;
    std::vector<std::shared_ptr<Sitter>> _sitters;
public:
    Manager();
    void printTypes(std::shared_ptr<Order> order);
    void printSitters(std::shared_ptr<Order> order);
    std::vector<std::shared_ptr<Sitter>> matchOrder();
    bool saveOrder(Sitter &sitter);
    std::shared_ptr<Order> getCurrent();
    void setCurrent(std::shared_ptr<Order> current);
    void printAvailable();
    std::shared_ptr<Sitter> getSitter(int index);
    ~Manager();
};

#endif //BABYSITTER_MANAGER_H
