#include "../library/Order.h"

using namespace std;

Order::Order(std::string childName, int childAge, int month, int day, int service, int people)
{
    this->_childName = childName;
    this->_childAge = childAge;
    this->_month = month;
    this->_day = day;
    this->_service = service;
    this->_people = people;
}

string Order::getName()
{
    return _childName;
}

int Order::getAge()
{
    return _childAge;
}

int Order::getDay()
{
    return _day;
}

int Order::getMonth()
{
    return _month;
}

int Order::getService()
{
    return _service;
}

int Order::getPeople()
{
    return _people;
}
