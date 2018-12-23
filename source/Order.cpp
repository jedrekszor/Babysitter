#include "library/Order.h"

Order::Order(std::string childName, int childAge, bool gender, int day, int month)
{
    this->childName = childName;
    this->childAge = childAge;
    this->gender = gender;
    this->day = day;
    this->month = month;
}

