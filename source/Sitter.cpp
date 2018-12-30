#include "library/Sitter.h"

Sitter::Sitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople)
{
    this->name = name;
    this->maxOrders = maxOrders;
    this->wage = wage;
    this->minAge = minAge;
    this->maxAge = maxAge;
    this->rating = rating;
    this->maxPeople = maxPeople;
}

Sitter::~Sitter()
{

}

std::string Sitter::getName()
{
    return name;
}

int Sitter::getNum()
{
    return ordersNum;
}

int Sitter::getMax()
{
    return maxOrders;
}

double Sitter::getRating()
{
    return rating;
}

double Sitter::getWage()
{
    return wage;
}

bool Sitter::canAccept(std::shared_ptr<Order> order)
{

}

int Sitter::getMinAge()
{
    return minAge;
}

int Sitter::getMaxAge()
{
    return maxAge;
}

int Sitter::getMaxPeople()
{
    return maxPeople;
}