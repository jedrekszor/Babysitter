#include "../include/Tutor.h"

using namespace std;

Tutor::Tutor(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople, string subject1, string subject2): Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople), _subject1(subject1), _subject2(subject2)
{

}

bool Tutor::canAccept(shared_ptr<Order> order)
{
    if(order->getService() == 2)
    {
        if ((order->getAge() >= getMinAge()) && (order->getAge() <= getMaxAge()))
        {
            if (getNum() < getMax())
            {
                if (order->getPeople() <= getMaxPeople())
                {
                    fstream file;
                    string line;
                    file.open("../program/logs/calendar.txt", ios::in);

                    if (file.good())
                    {
                        for (int i = 1; i < order->getMonth(); i++)
                        {
                            do
                            {
                                getline(file, line);
                            } while (line[0] != ';');
                        }

                        int day = 0;
                        for (; day < order->getDay(); day++)
                        {
                            getline(file, line);
                        }

                        if (line.find(getName()) == string::npos)
                        {
                            file.close();
                            return true;
                        }
                    }
                    else{
                        throw runtime_error("cannot find calendar.txt");
                    }
                    file.close();
                }
            }
        }

    }
    return false;
}

std::string Tutor::getSub1()
{
    return _subject1;
}

std::string Tutor::getSub2()
{
    return _subject2;
}