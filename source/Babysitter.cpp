#include "library/Babysitter.h"
#include <iostream>

using namespace std;

Babysitter::Babysitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating): Sitter(name, maxOrders, wage, minAge, maxAge, rating)
{

}

void Babysitter::dayCare()
{
    cout<<"Daycare\n";
}

void Babysitter::takeToPark()
{

}

bool Babysitter::canAccept(shared_ptr<Order> order)
{
    return Sitter::canAccept(order);
}
