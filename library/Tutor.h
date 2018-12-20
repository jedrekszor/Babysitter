#ifndef BABYSITTER_TUTOR_H
#define BABYSITTER_TUTOR_H

#include <ios>
#include <vector>
#include "Sitter.h"

class Tutor: public Sitter
{
private:
    std::vector<int> subjects;
public:
    void teach();
    bool canAccept(Order* order);
};

#endif //BABYSITTER_TUTOR_H
