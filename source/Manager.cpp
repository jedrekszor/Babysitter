#include "library/Manager.h"
#include <fstream>
#include <iostream>

using namespace std;

Manager::Manager()
{
    fstream file;
    file.open("../logs/babysitters.txt", ios::in);
    string line;
    string temp[10];
    int lineNum = 1;
    if (file.good())
    {
        while (getline(file, line))
        {
            switch (lineNum)
            {
                case 1:
                    temp[0] = line;
                    break;
                case 2:
                    temp[1] = line;
                    break;
                case 3:
                    temp[2] = line;
                    break;
                case 4:
                    temp[3] = line;
                    break;
                case 5:
                    temp[4] = line;
                    break;
                case 6:
                    temp[5] = line;
                    break;
                default:
                    break;
            }
            lineNum++;
            if (lineNum == 7)
            {
                sitters.push_back(make_shared<Babysitter>(temp[0], stoi(temp[1]), stod(temp[2]), stoi(temp[3]), stoi(temp[4]), stod(temp[5])));
                for (int i = 0; i < 10; i++)
                {
                    temp[i].clear();
                }
                lineNum = 1;
            }
        }
        file.close();
    }
}

void Manager::printTypes(shared_ptr<Order> order)
{
//    cout<<babysitter<<childsitter<tutor<<partOrganizer;
}

void Manager::printSitters(shared_ptr<Order> order)
{
//    while(!sitters.end())
//    {
//        cout<<sitters[i].info;
//    }
}

void Manager::matchOrder()
{

}

shared_ptr<Order> Manager::getCurrent()
{
    return current;
}

void Manager::setCurrent(shared_ptr<Order> current)
{
    this->current = current;
}

void Manager::printAvailable()
{

}

Manager::~Manager()
{

}
