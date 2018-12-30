#include "library/Manager.h"

using namespace std;

Manager::Manager()
{
    fstream file;
    file.open("../logs/babysitters.txt", ios::in);
    string line;
    string temp[9];
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
                case 7:
                    temp[6] = line;
                    break;
                default:
                    break;
            }
            lineNum++;
            if (lineNum == 8)
            {
                sitters.push_back(make_shared<Babysitter>(temp[0], stoi(temp[1]), stod(temp[2]), stoi(temp[3]), stoi(temp[4]), stod(temp[5]), stoi(temp[6])));
                for (int i = 0; i < 8; i++)
                {
                    temp[i].clear();
                }
                lineNum = 1;
            }
        }
    }
    file.close();

    //////////////////////////////////////////

    file.open("../logs/childsitters.txt", ios::in);
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
                case 7:
                    temp[6] = line;
                    break;
                default:
                    break;
            }
            lineNum++;
            if (lineNum == 8)
            {
                sitters.push_back(make_shared<Childsitter>(temp[0], stoi(temp[1]), stod(temp[2]), stoi(temp[3]), stoi(temp[4]), stod(temp[5]), stoi(temp[6])));
                for (int i = 0; i < 8; i++)
                {
                    temp[i].clear();
                }
                lineNum = 1;
            }
        }
    }
    file.close();

    ///////////////////////////////////////////

    file.open("../logs/partyOrganizers.txt", ios::in);
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
                case 7:
                    temp[6] = line;
                    break;
                default:
                    break;
            }
            lineNum++;
            if (lineNum == 8)
            {
                sitters.push_back(make_shared<PartyOrganizer>(temp[0], stoi(temp[1]), stod(temp[2]), stoi(temp[3]), stoi(temp[4]), stod(temp[5]), stoi(temp[6])));
                for (int i = 0; i < 8; i++)
                {
                    temp[i].clear();
                }
                lineNum = 1;
            }
        }
    }
    file.close();

    ////////////////////////////////////////////

    file.open("../logs/tutors.txt", ios::in);
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
                case 7:
                    temp[6] = line;
                    break;
                case 8:
                    temp[7] = line;
                    break;
                case 9:
                    temp[8] = line;
                    break;
                default:
                    break;
            }
            lineNum++;
            if (lineNum == 10)
            {
                sitters.push_back(make_shared<Tutor>(temp[0], stoi(temp[1]), stod(temp[2]), stoi(temp[3]), stoi(temp[4]), stod(temp[5]), stoi(temp[6]), temp[7], temp[8]));
                for (int i = 0; i < 8; i++)
                {
                    temp[i].clear();
                }
                lineNum = 1;
            }
        }
    }
    file.close();
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

std::shared_ptr<Sitter> Manager::getSitter(int index)
{
    if(index < sitters.size())
    {
        return sitters[index];
    }
}

Manager::~Manager()
{

}
