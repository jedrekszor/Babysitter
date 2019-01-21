#include <boost/test/unit_test.hpp>
#include <iostream>
#include <memory>

#include "../include/Manager.h"
#include "../include/UI.h"

using namespace std;

BOOST_AUTO_TEST_SUITE(TestBabysitter)

BOOST_AUTO_TEST_CASE( test_Manager ) {

    BOOST_REQUIRE_NO_THROW(Manager());
}

BOOST_AUTO_TEST_CASE( test_order ) {

    //  Order::Order(std::string childName, int childAge, int month, int day, int service, int people)
    Order test("kid", 10, 5, 6, 2, 1);

    BOOST_CHECK_EQUAL(test.getName(), "kid");
    BOOST_CHECK_EQUAL(test.getAge(), 10);
    BOOST_CHECK_EQUAL(test.getMonth(), 5);
    BOOST_CHECK_EQUAL(test.getDay(), 6);
    BOOST_CHECK_EQUAL(test.getService(), 2);
    BOOST_CHECK_EQUAL(test.getPeople(), 1);
}

BOOST_AUTO_TEST_CASE( test_PatryOrganizer ) {

//      PartyOrganizer::PartyOrganizer
//      (std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople):
//      Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople)

    shared_ptr<Order> order_test1(new Order("kid", 0, 0, 0, 1, 0));
    shared_ptr<Order> order_test2(new Order("kid", 6, 6, 6, 1, 1));
    shared_ptr<Order> order_test3(new Order("kid", 0, 0, 0, 2, 0));

    Manager test_manager;
    PartyOrganizer test("organizer", 10, 5, 5, 10, 8, 5);

    test_manager.setCurrent(order_test1);
    //service id is ok but test not satisfies requirements
    BOOST_CHECK_EQUAL(test.canAccept(test_manager.getCurrent()), false);

    test_manager.setCurrent(order_test2);
    //service id is ok and order fits requirements
    BOOST_CHECK_EQUAL(test.canAccept(test_manager.getCurrent()), false);

//    test_manager.setCurrent(order_test3);
//    BOOST_CHECK_THROW(test.canAccept(test_manager.getCurrent()), std::runtime_error);
}

BOOST_AUTO_TEST_CASE( test_childsitter ) {

//        PartyOrganizer::PartyOrganizer
//        (std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople):
//        Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople)

        shared_ptr<Order> order_childsitter1(new Order("kid", 0, 0, 0, 0, 0));
        shared_ptr<Order> order_childsitter2(new Order("kid", 6, 6, 6, 0, 1));
        shared_ptr<Order> order_childsitter3(new Order("kid", 0, 0, 0, 1, 1));

        Manager test_manager;
        Babysitter test("babysitter", 10, 5, 5, 10, 8, 5);

        test_manager.setCurrent(order_childsitter1);
        //service id is ok but test not satisfies requirements
        BOOST_CHECK_EQUAL(test.canAccept(test_manager.getCurrent()), false);

        test_manager.setCurrent(order_childsitter2);
        //service id is ok and order fits requirements
        BOOST_CHECK_EQUAL(test.canAccept(test_manager.getCurrent()), true);

        //service id is not ok
//        test_manager.setCurrent(order_childsitter3);
//        BOOST_CHECK_THROW(test.canAccept(test_manager.getCurrent()), std::runtime_error);
}

BOOST_AUTO_TEST_CASE( test_babysitter ){

        //Babysitter::Babysitter
        // (std::string name, int maxOrders, double wage, int minAge, int maxAge, double rating, int maxPeople) :
        // Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople)

        shared_ptr<Order> order_babysitter1(new Order("kid", 0, 0, 0, 0, 0));
        shared_ptr<Order> order_babysitter2(new Order("kid", 6, 6, 6, 0, 1));
        shared_ptr<Order> order_babysitter3(new Order("kid", 0, 0, 0, 1, 1));

        Manager test_manager;
        Babysitter test("babysitter", 10, 5, 5, 10, 8, 5);

        test_manager.setCurrent(order_babysitter1);
        //service id is ok but test not satisfies requirements
        BOOST_CHECK_EQUAL(test.canAccept(test_manager.getCurrent()), false);

        test_manager.setCurrent(order_babysitter2);
        //service id is ok and order fits requirements
        BOOST_CHECK_EQUAL(test.canAccept(test_manager.getCurrent()), true);

        //service id is not ok
//        test_manager.setCurrent(order_babysitter3);
//        BOOST_CHECK_THROW(test.canAccept(test_manager.getCurrent()), std::runtime_error);
}

BOOST_AUTO_TEST_CASE( test_tutor ){

//        Tutor::Tutor
//        (std::string name, int maxOrders, double wage, int minAge, int maxAge,
//        double rating, int maxPeople, string subject1, string subject2):
//        Sitter(name, maxOrders, wage, minAge, maxAge, rating, maxPeople)


        shared_ptr<Order> order_test_tutor1(new Order("kid", 0, 0, 0, 2, 0));
        shared_ptr<Order> order_test_tutor2(new Order("kid", 6, 6, 6, 2, 1));
        shared_ptr<Order> order_test_tutor3(new Order("kid", 0, 0, 0, 0, 1));

        Manager test_manager;
        Tutor test("tutor", 10, 5, 5, 10, 8, 5, "boostTests", "c++programming");

        test_manager.setCurrent(order_test_tutor1);
        //service id is ok but test not satisfies requirements
        BOOST_CHECK_EQUAL(test.canAccept(test_manager.getCurrent()), false);

        test_manager.setCurrent(order_test_tutor2);
        //service id is ok and order fits requirements
        BOOST_CHECK_EQUAL(test.canAccept(test_manager.getCurrent()), true);

        //service id is not ok
//        test_manager.setCurrent(order_test_tutor3);
//        BOOST_CHECK_THROW(test.canAccept(test_manager.getCurrent()), std::runtime_error);

}

BOOST_AUTO_TEST_SUITE_END()