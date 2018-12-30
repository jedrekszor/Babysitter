#include "library/Order.h"

using namespace std;

Order::Order(std::string childName, int childAge, int month, int day, int people)
{
    this->childName = childName;
    this->childAge = childAge;
    this->month = month;
    this->day = day;
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

int Order::getPeople()
{
    return people;
}
