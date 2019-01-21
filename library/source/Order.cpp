#include "../include/Order.h"

using namespace std;

Order::Order(std::string childName, int childAge, int month, int day, int service, int people): _childName(childName), _childAge(childAge), _month(month), _day(day), _service(service), _people(people)
{

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
