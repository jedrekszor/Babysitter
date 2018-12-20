#ifndef BABYSITTER_SITTER_H
#define BABYSITTER_SITTER_H

#include <ios>

class Order;

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
public:
    Sitter(std::string name, int maxOrders, double wage, int minAge, int maxAge);
    ~Sitter();
    std::string getName();
    int getNum();
    int getMax();
    double getRating();
    double getWage();
    void addRating();
    virtual bool canAccept(Order* order);
};


#endif //BABYSITTER_SITTER_H
