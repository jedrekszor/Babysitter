#include <iostream>
#include <memory>
#include "library/Manager.h"

using namespace std;

int main()
{
    Manager manager;
    shared_ptr<Order> order = make_shared<Order>("Kamil", 5, 2, 12, 1);
    manager.setCurrent(order);
    manager.getSitter(0)->canAccept(order);

    return 0;
}