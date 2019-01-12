#ifndef BABYSITTER_ORDER_H
#define BABYSITTER_ORDER_H

#include <ios>

class Order
{
private:
    std::string childName;
    int childAge;
    int day;
    int month;
    int service;
    int people;
public:
    Order(std::string childName, int childAge, int month, int day, int service, int people);
    std::string getName();
    int getAge();
    int getDay();
    int getMonth();
    int getService();
    int getPeople();
};

#endif //BABYSITTER_ORDER_H
