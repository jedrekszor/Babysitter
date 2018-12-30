#ifndef BABYSITTER_SITTER_H
#define BABYSITTER_SITTER_H

#include <ios>
#include <memory>
#include <fstream>
#include <iostream>
#include <string>
#include "Order.h"

class Sitter
{
private:
    std::string name;
    int ordersNum;
    int maxOrders;
    double rating;
    double wage;
    int minAge;
    int maxAge;
    int maxPeople;
public:
    Sitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople);
    ~Sitter();
    std::string getName();
    int getNum();
    int getMax();
    double getRating();
    double getWage();
    int getMinAge();
    int getMaxAge();
    int getMaxPeople();
    virtual bool canAccept(std::shared_ptr<Order> order);
};


#endif //BABYSITTER_SITTER_H
