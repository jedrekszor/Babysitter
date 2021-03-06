#include "../include/Manager.h"

using namespace std;

Manager::Manager()
{
    fstream file;
    file.open("../program/logs/babysitters.txt", ios::in);
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
                _sitters.push_back(
                        make_shared<Babysitter>(temp[0], stoi(temp[1]), stod(temp[2]), stoi(temp[3]), stoi(temp[4]),
                                                stod(temp[5]), stoi(temp[6])));

                for (int i = 0; i < 8; i++)
                {
                    temp[i].clear();
                }
                lineNum = 1;
            }
        }
    }
    else{
        throw runtime_error("cannot find babysitters.txt");
    }
    file.close();

    ///////////////////////////////////////////

    file.open("../program/logs/partyOrganizers.txt", ios::in);
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
                _sitters.push_back(
                        make_shared<PartyOrganizer>(temp[0], stoi(temp[1]), stod(temp[2]), stoi(temp[3]), stoi(temp[4]),
                                                    stod(temp[5]), stoi(temp[6])));
                for (int i = 0; i < 8; i++)
                {
                    temp[i].clear();
                }
                lineNum = 1;
            }
        }
    }
    else{
        throw runtime_error("cannot find partyOrganizers.txt");
    }
    file.close();

    ////////////////////////////////////////////

    file.open("../program/logs/tutors.txt", ios::in);
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
                _sitters.push_back(
                        make_shared<Tutor>(temp[0], stoi(temp[1]), stod(temp[2]), stoi(temp[3]), stoi(temp[4]),
                                           stod(temp[5]), stoi(temp[6]), temp[7], temp[8]));
                for (int i = 0; i < 8; i++)
                {
                    temp[i].clear();
                }
                lineNum = 1;
            }
        }
    }
    else{
        throw runtime_error("cannot find tutors.txt");
    }
    file.close();
}

vector<shared_ptr<Sitter>> Manager::matchOrder()
{
    vector<shared_ptr<Sitter>> matching;
    for (auto it = _sitters.begin(); it != _sitters.end(); ++it)
    {
        if((*it)->canAccept(getCurrent()))
        {
            matching.push_back(*it);
        }
    }
    return matching;
}

shared_ptr<Order> Manager::getCurrent()
{
    return _current;
}

void Manager::setCurrent(shared_ptr<Order> current)
{
    this->_current = current;
}

std::shared_ptr<Sitter> Manager::getSitter(int index)
{
    if (index < _sitters.size())
    {
        return _sitters[index];
    }
}

bool Manager::saveOrder(Sitter &sitter)
{
    fstream file;
    string line;
    file.open("../program/logs/calendar.txt", ios::in | ios::out);

    if (file.good())
    {
        for (int i = 1; i < getCurrent()->getMonth(); i++)
        {
            do
            {
                getline(file, line);
            } while (line[0] != ';');
        }

        int day = 0;
        for (; day < getCurrent()->getDay() - 1; day++)
        {
            getline(file, line);
        }

        streampos oldpos = file.tellg();
        getline(file, line);

        int i;
        for(i=line.length() - 1;line[i] == ' ';i--)
        {}
        i+=2;

        line.insert(i, sitter.getName());
        for(i=0;i<sitter.getName().length();i++)
        {}
        line.erase(line.length()-i, i);

        file.seekg (oldpos);

        file<<line;
        sitter.addNum();

    }
    else{
        throw runtime_error("cannot find calendar.txt");
    }
    file.close();
    return true;
}

Manager::~Manager()
{

}