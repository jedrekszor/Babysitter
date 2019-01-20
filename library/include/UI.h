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
    std::shared_ptr<Manager> _manager;
    std::vector<std::shared_ptr<Sitter>> _matching;
    std::vector<QRadioButton*> _radios;
    QWidget *_temp = new QWidget;
    QFormLayout *_layout = new QFormLayout(_temp);
    QLabel *_name_l = new QLabel(_temp);
    QLineEdit *_name_e = new QLineEdit(_temp);
    QLabel *_age_l = new QLabel(_temp);
    QComboBox *_age_b = new QComboBox(_temp);
    QLabel *_month_l = new QLabel(_temp);
    QComboBox *_month_b = new QComboBox(_temp);
    QLabel *_day_l = new QLabel(_temp);
    QComboBox *_day_b = new QComboBox(_temp);
    QLabel *_options_l = new QLabel(_temp);
    QComboBox *_options_b = new QComboBox(_temp);
    QLabel *_people_l = new QLabel(_temp);
    QComboBox *_people_b = new QComboBox(_temp);
    QPushButton *_create = new QPushButton(_temp);
    QMessageBox *_box = new QMessageBox(this);
    QPushButton *_book = new QPushButton;
public:
    explicit UI(std::shared_ptr<Manager> manager, QWidget *parent = 0);
    void match();
    std::shared_ptr<Manager> getManager();
    void clean();
    ~UI();
private slots:
    void saveOrder();
    void addOrder();
    void exit();
};

#endif //BABYSITTER_UI_H
