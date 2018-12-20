#include "library/Tutor.h"

void Tutor::teach()
{

}

bool Tutor::canAccept(Order *order)
{
    return Sitter::canAccept(order);
}
