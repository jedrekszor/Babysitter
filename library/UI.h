#ifndef BABYSITTER_UI_H
#define BABYSITTER_UI_H

#include "Manager.h"
#include <QApplication>
#include <QPushButton>
#include <QLabel>
#include <QLineEdit>
#include <QFormLayout>
#include <QComboBox>
#include <QStringList>
#include <QMessageBox>
#include <QRadioButton>
#include <sstream>

class QWidget;
class Manager;

class UI: public QWidget
{
Q_OBJECT
private:
    std::shared_ptr<Manager> manager;
    std::vector<std::shared_ptr<Sitter>> matching;
    std::vector<QRadioButton*> radios;
    QFormLayout *layout = new QFormLayout(this);
    QLabel *name_l = new QLabel;
    QLineEdit *name_e = new QLineEdit;
    QLabel *age_l = new QLabel;
    QComboBox *age_b = new QComboBox;
    QLabel *month_l = new QLabel;
    QComboBox *month_b = new QComboBox;
    QLabel *day_l = new QLabel;
    QComboBox *day_b = new QComboBox;
    QLabel *options_l = new QLabel;
    QComboBox *options_b = new QComboBox;
    QLabel *people_l = new QLabel;
    QComboBox *people_b = new QComboBox;
    QPushButton *create = new QPushButton;
    QMessageBox *box = new QMessageBox(this);
    QPushButton *book = new QPushButton;
public:
    explicit UI(std::shared_ptr<Manager> manager, QWidget *parent = 0);
    void match();
    std::shared_ptr<Manager> getManager();
    void clean();
private slots:
    void saveOrder();
    void addOrder();
    void exit();
};



#endif //BABYSITTER_UI_H
