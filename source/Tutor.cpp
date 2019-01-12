#include "../library/Tutor.h"

using namespace std;

Tutor::Tutor(std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople, string subject1, string subject2): Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople)
{
    this->subject1 = subject1;
    this->subject2 = subject2;
}

void Tutor::teach()
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
                    file.open("../logs/calendar.txt", ios::in);

                    if (file.good())
                    {
                        for (int i = 1; i < order->getMonth(); i++)
                        {
                            do
                            {
                                getline(file, line);
                            } while (line != ";");
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

std::string Tutor::getSub1()
{
    return subject1;
}

std::string Tutor::getSub2()
{
    return subject2;
}