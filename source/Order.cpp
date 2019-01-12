#include "../library/Order.h"

using namespace std;

Order::Order(std::string childName, int childAge, int month, int day, int service, int people)
{
    this->childName = childName;
    this->childAge = childAge;
    this->month = month;
    this->day = day;
    this->service = service;
    this->people = people;
}

string Order::getName()
{
    return childName;
}

int Order::getAge()
{
    return childAge;
}

int Order::getDay()
{
    return day;
}

int Order::getMonth()
{
    return month;
}

int Order::getService()
{
    return service;
}

int Order::getPeople()
{
    return people;
}
