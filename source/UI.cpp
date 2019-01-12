#include "../library/UI.h"

QStringList months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
QStringList days = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"};
QStringList ages = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"};
QStringList people = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"};
QStringList options = {"Sittering", "Party organization", "Tutoring"};

UI::UI(std::shared_ptr<Manager> manager, QWidget *parent): QWidget(parent)
{
    this->manager = manager;


    name_l->setText("Child's name: ");
    name_e->setPlaceholderText("Enter child's name");

    age_l->setText("Child's age: ");
    age_b->addItems(ages);

    month_l->setText("Month: ");
    month_b->addItems(months);

    day_l->setText("Day: ");
    day_b->addItems(days);

    options_l->setText("Service: ");
    options_b->addItems(options);

    people_l->setText("Number of children: ");
    people_b->addItems(people);

    create->setText("Save");


    layout->addRow(name_l, name_e);
    layout->addRow(age_l, age_b);
    layout->addRow(month_l, month_b);
    layout->addRow(day_l, day_b);
    layout->addRow(options_l, options_b);
    layout->addRow(people_l, people_b);
    layout->addRow(create);

    connect(create, SIGNAL(clicked()), this, SLOT(saveOrder()));

    this->setLayout(layout);

}

void UI::saveOrder()
{
    if(name_e->text().length() > 0)
    {
        if(((month_b->currentIndex()+1 == 2) && (day_b->currentIndex()+1 > 28)) || (((month_b->currentIndex()+1 == 4) || (month_b->currentIndex()+1 == 6) || (month_b->currentIndex()+1 == 9) || (month_b->currentIndex()+1 == 11)) && (day_b->currentIndex()+1 > 30)))
        {
            box->setText("No such date!");
            box->exec();
        }
        else
        {
            std::shared_ptr<Order> order = std::make_shared<Order>(name_e->text().toStdString(), age_b->currentIndex()+1, month_b->currentIndex()+1, day_b->currentIndex()+1, options_b->currentIndex(), people_b->currentIndex()+1);
            getManager()->setCurrent(order);

            delete(name_l);
            delete(name_e);
            delete(age_l);
            delete(age_b);
            delete(month_l);
            delete(month_b);
            delete(day_l);
            delete(day_b);
            delete(options_l);
            delete(options_b);
            delete(people_l);
            delete(people_b);
            delete(create);

            match();
        }
    }
    else
    {
        box->setText("No name entered!");
        box->exec();
    }
}

std::shared_ptr<Manager> UI::getManager()
{
    return manager;
}

void UI::match()
{
    parentWidget()->resize(500, 250);
    this->resize(500, 250);
    matching = getManager()->matchOrder();
    if(matching.empty())
    {
        QLabel *sorry = new QLabel("Sorry, no sitters meet Your criteria");
        layout->addRow(sorry);
    }
    else
    {
        for (auto it = matching.begin(); it != matching.end(); ++it)
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
                temp = (*it)->getName() + ", rating: " + str + "/5, price: " + str2 + " $ / h";
            }
            QString qtemp = QString::fromStdString(temp);
            QRadioButton *radio = new QRadioButton(qtemp);
            radios.push_back(radio);
            layout->addRow(radio);
        }

        book->setText("Book the order");
        layout->addRow(book);

        connect(book, SIGNAL(clicked()), this, SLOT(addOrder()));
    }


    this->setLayout(layout);
}

void UI::addOrder()
{
    int it = 0;
    for(auto i = radios.begin(); i != radios.end(); ++i)
    {
        if((*i)->isChecked())
        {
            if(getManager()->saveOrder(*matching[it]))
            {
                clean();
            }
        }
        it++;
    }
}

void UI::clean()
{
    for(auto it=radios.begin();it!=radios.end();++it)
    {
        delete(*it);
    }
    delete(book);

    QLabel *thanks = new QLabel("Thank You for trusting our company, Your order has been saved", this);
    QPushButton *exit = new QPushButton("Exit", this);
    layout->addRow(thanks);
    layout->addRow(exit);

    connect(exit, SIGNAL(clicked()), this, SLOT(exit()));
}

void UI::exit()
{
    delete(layout);
    QApplication::quit();
}