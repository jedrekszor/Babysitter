#include "../library/Sitter.h"

Sitter::Sitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople)
{
    this->_name = name;
    this->_maxOrders = maxOrders;
    this->_wage = wage;
    this->_minAge = minAge;
    this->_maxAge = maxAge;
    this->_rating = rating;
    this->_maxPeople = maxPeople;
}

Sitter::~Sitter()
{

}

std::string Sitter::getName()
{
    return _name;
}

int Sitter::getNum()
{
    return _ordersNum;
}

int Sitter::getMax()
{
    return _maxOrders;
}

double Sitter::getRating()
{
    return _rating;
}

double Sitter::getWage()
{
    return _wage;
}

bool Sitter::canAccept(std::shared_ptr<Order> order)
{

}

int Sitter::getMinAge()
{
    return _minAge;
}

int Sitter::getMaxAge()
{
    return _maxAge;
}

int Sitter::getMaxPeople()
{
    return _maxPeople;
}

void Sitter::addNum()
{
    _ordersNum++;
}