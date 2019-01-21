#include "../include/UI.h"

QStringList months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
QStringList days = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"};
QStringList ages = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"};
QStringList people = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"};
QStringList options = {"Sittering", "Party organization", "Tutoring"};

UI::UI(std::shared_ptr<Manager> manager, QWidget *parent): QWidget(parent), _manager(manager)
{



    _name_l->setText("Child's name: ");
    _name_e->setPlaceholderText("Enter child's name");

    _age_l->setText("Child's age: ");
    _age_b->addItems(ages);

    _month_l->setText("Month: ");
    _month_b->addItems(months);

    _day_l->setText("Day: ");
    _day_b->addItems(days);

    _options_l->setText("Service: ");
    _options_b->addItems(options);

    _people_l->setText("Number of children: ");
    _people_b->addItems(people);

    _create->setText("Save");


    _layout->addRow(_name_l, _name_e);
    _layout->addRow(_age_l, _age_b);
    _layout->addRow(_month_l, _month_b);
    _layout->addRow(_day_l, _day_b);
    _layout->addRow(_options_l, _options_b);
    _layout->addRow(_people_l, _people_b);
    _layout->addRow(_create);

    connect(_create, SIGNAL(clicked()), this, SLOT(saveOrder()));

    this->setLayout(_layout);
}

void UI::saveOrder()
{
    if(_name_e->text().length() > 0)
    {
        if(((_month_b->currentIndex()+1 == 2) && (_day_b->currentIndex()+1 > 28)) || (((_month_b->currentIndex()+1 == 4) || (_month_b->currentIndex()+1 == 6) || (_month_b->currentIndex()+1 == 9) || (_month_b->currentIndex()+1 == 11)) && (_day_b->currentIndex()+1 > 30)))
        {
            _box->setText("No such date!");
            _box->exec();
        }
        else
        {
            std::shared_ptr<Order> order = std::make_shared<Order>(_name_e->text().toStdString(), _age_b->currentIndex()+1, _month_b->currentIndex()+1, _day_b->currentIndex()+1, _options_b->currentIndex(), _people_b->currentIndex()+1);
            getManager()->setCurrent(order);

            _name_l->hide();
            _name_e->hide();
            _age_l->hide();
            _age_b->hide();
            _month_l->hide();
            _month_b->hide();
            _day_l->hide();
            _day_b->hide();
            _options_l->hide();
            _options_b->hide();
            _people_l->hide();
            _people_b->hide();
            _create->hide();


            match();

        }
    }
    else
    {
        _box->setText("No name entered!");
        _box->exec();
    }
}

std::shared_ptr<Manager> UI::getManager()
{
    return _manager;
}

void UI::match()
{

    parentWidget()->resize(500, 250);
    this->resize(500, 250);
    _matching = getManager()->matchOrder();
    if(_matching.empty())
    {
        QLabel *sorry = new QLabel("Sorry, no sitters meet Your criteria", this);
        _layout->addRow(sorry);
        QPushButton *exit = new QPushButton("Exit", this);
        _layout->addRow(exit);

        connect(exit, SIGNAL(clicked()), this, SLOT(exit()));
    }
    else
    {
        for (auto it = _matching.begin(); it != _matching.end(); ++it)
        {
            std::ostringstream strs;
            std::ostringstream strs2;
            strs << (*it)->getRating();
            strs2 << (*it)->getWage();
            std::string str = strs.str();
            std::string str2 = strs2.str();
            std::string temp;

            if(getManager()->getCurrent()->getService() == 2)
            {
                temp = (*it)->getName() + ", rating: " + str + "/5, price: " + str2 + " $/h, subjects: " + std::dynamic_pointer_cast<Tutor>(*it)->getSub1() + ", " + std::dynamic_pointer_cast<Tutor>(*it)->getSub2();
            }
            else
            {
                temp = (*it)->getName() + ", rating: " + str + "/5, price: " + str2 + " $/h";
            }
            QString qtemp = QString::fromStdString(temp);
            QRadioButton *radio = new QRadioButton(qtemp);
            _radios.push_back(radio);
            _layout->addRow(radio);
        }

        _book->setText("Book the order");
        _layout->addRow(_book);

        connect(_book, SIGNAL(clicked()), this, SLOT(addOrder()));
    }


    this->setLayout(_layout);
}

void UI::addOrder()
{
    int it = 0;
    _book->hide();
    for(auto i = _radios.begin(); i != _radios.end(); ++i)
    {
        if((*i)->isChecked())
        {
            if(getManager()->saveOrder(*_matching[it]))
            {
                clean();
            }
        }
        it++;
    }
}

void UI::clean()
{
    for(auto it=_radios.begin();it!=_radios.end();++it)
    {
        (*it)->hide();
    }
    _book->hide();

    QLabel *thanks = new QLabel("Thank You for trusting our company, Your order has been saved", this);
    QPushButton *exit = new QPushButton("Exit", this);
    _layout->addRow(thanks);
    _layout->addRow(exit);

    connect(exit, SIGNAL(clicked()), this, SLOT(exit()));
}

void UI::exit()
{
    QApplication::quit();
}

UI::~UI()
{
    for(auto it=_radios.begin();it!=_radios.end();++it)
    {
        delete(*it);
    }
    delete(_layout);
    delete(_name_l);
    delete(_name_e);
    delete(_age_l);
    delete(_age_b);
    delete(_month_l);
    delete(_month_b);
    delete(_day_l);
    delete(_day_b);
    delete(_options_l);
    delete(_options_b);
    delete(_people_l);
    delete(_people_b);
    delete(_create);
    delete(_box);
    delete(_book);
    delete(_temp);
}