#include "library/Childsitter.h"

using namespace std;

Childsitter::Childsitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating): Sitter(name, maxOrders, wage, minAge, maxAge, rating)
{

}

void Childsitter::pickFromSchool()
{

}

void Childsitter::takeToZoo()
{

}

void Childsitter::cookDinner()
{

}

bool Childsitter::canAccept(shared_ptr<Order> order)
{
    return Sitter::canAccept(order);
}

void Childsitter::dayCare()
{

}

void Childsitter::takeToPark()
{

}
