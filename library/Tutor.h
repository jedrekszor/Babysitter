#ifndef BABYSITTER_TUTOR_H
#define BABYSITTER_TUTOR_H

#include <ios>
#include <vector>
#include "Sitter.h"

class Tutor: public Sitter
{
private:
    std::string subject1;
    std::string subject2;
public:
    Tutor(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, std::string subject1, std::string subject2);
    void teach();
    bool canAccept(std::shared_ptr<Order> order);
};

#endif //BABYSITTER_TUTOR_H
