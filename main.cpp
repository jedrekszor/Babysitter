#include <iostream>
#include <memory>

#include "library/Manager.h"
#include "library/UI.h"

using namespace std;

int main(int argc, char* argv[])
{
    QApplication app(argc, argv);

    shared_ptr<Manager> manager = make_shared<Manager>();
    QWidget window;
    UI ui(manager, &window);

    window.resize(325, 230);
    window.show();

    return app.exec();
}

