#include "../include/Childsitter.h"

using namespace std;

Childsitter::Childsitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople): Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople)
{

}

void Childsitter::pickFromSchool()
{

}

void Childsitter::takeToZoo()
{

}

void Childsitter::cookDinner()
{

}

bool Childsitter::canAccept(shared_ptr<Order> order)
{
    if(order->getService() == 0)
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
                        int count = 0;
                        for (int i = 1; i < order->getMonth(); i++)
                        {
                            do
                            {
//                                cout<<count<<endl;
                                count++;
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
                    file.close();
                }
            }
        }
    }
    return false;
}

void Childsitter::dayCare()
{

}

void Childsitter::takeToPark()
{

}
