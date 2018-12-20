#ifndef BABYSITTER_ORDER_H
#define BABYSITTER_ORDER_H

#include <ios>

class Order
{
private:
    std::string childName;
    int childAge;
    bool gender;
    int day;
    int month;
public:
    Order(std::string childName, int childAge, bool gender, int day, int month);
};

#endif //BABYSITTER_ORDER_H
