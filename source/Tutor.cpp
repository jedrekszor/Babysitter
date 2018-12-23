#include "library/Tutor.h"

using namespace std;

Tutor::Tutor(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, string subject1, string subject2): Sitter(name, maxOrders, wage, minAge, maxAge, rating)
{
    this->subject1 = subject1;
    this->subject2 = subject2;
}

void Tutor::teach()
{

}

bool Tutor::canAccept(shared_ptr<Order> order)
{
    return Sitter::canAccept(order);
}
