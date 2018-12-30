#include "library/PartyOrganizer.h"

using namespace std;

PartyOrganizer::PartyOrganizer(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople): Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople)
{

}

void PartyOrganizer::birthday()
{

}

void PartyOrganizer::carnival()
{

}

void PartyOrganizer::quinceanera()
{

}

bool PartyOrganizer::canAccept(shared_ptr<Order> order)
{
    if ((order->getAge() >= getMinAge()) && (order->getAge() <= getMaxAge()))
    {
        if(getNum() < getMax())
        {
            if(order->getPeople() <= getMaxPeople())
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
                        }
                        while(line != ";");
                    }

                    int day=0;
                    for(;day<order->getDay();day++)
                    {
                        getline(file, line);
                    }

                    if(line.find(getName()) != string::npos)
                    {
                        return true;
                    }
                    else
                        return false;
                }
                else
                    return false;
            }
            else
                return false;
        }
        else
            return false;
    }
    else
        return false;
}
