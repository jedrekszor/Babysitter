#include "library/PartyOrganizer.h"

using namespace std;

PartyOrganizer::PartyOrganizer(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople): Sitter(name, maxOrders, wage, minAge, maxAge, rating)
{
    this->maxPeople = maxPeople;
}

void PartyOrganizer::birthday()
{

}

void PartyOrganizer::carnival()
{

}

void PartyOrganizer::quinceanera()
{

}

bool PartyOrganizer::canAccept(shared_ptr<Order> order)
{
    return Sitter::canAccept(order);
}
