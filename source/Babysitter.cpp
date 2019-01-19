#include "../library/Babysitter.h"

using namespace std;

Babysitter::Babysitter(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople) : Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople)
{

}

void Babysitter::dayCare()
{
    cout << "Daycare\n";
}

void Babysitter::takeToPark()
{

}

bool Babysitter::canAccept(shared_ptr<Order> order)
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
                    file.open("../logs/calendar.txt", ios::in);

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
                    file.close();
                }
            }
        }
    }
    return false;
}
