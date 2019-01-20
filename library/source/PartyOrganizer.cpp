#include "../include/PartyOrganizer.h"
#include <iostream>

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
    if(order->getService() == 1)
    {
        if ((order->getAge() >= getMinAge()) && (order->getAge() <= getMaxAge()))
        {
            if(getNum() < getMax())
            {
                if(order->getPeople() <= getMaxPeople())
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
                            }
                            while(line[0] != ';');
                        }

                        int day=0;
                        for(;day<order->getDay();day++)
                        {
                            getline(file, line);
                        }

                        if(line.find(getName()) == string::npos)
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
