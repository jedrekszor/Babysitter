#ifndef BABYSITTER_SITTER_H
#define BABYSITTER_SITTER_H

#include <ios>
#include <memory>

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
    Sitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating);
    ~Sitter();
    std::string getName();
    int getNum();
    int getMax();
    double getRating();
    double getWage();
    int getMinAge();
    int getMaxAge();
    virtual bool canAccept(std::shared_ptr<Order> order);
};


#endif //BABYSITTER_SITTER_H
