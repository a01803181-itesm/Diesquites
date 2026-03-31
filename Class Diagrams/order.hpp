#ifndef ORDER_HPP
#define ORDER_HPP
#include "product.hpp"
#include <vector>

class Order {
    private:
        int order_id;
        std::vector<Product> products;
        std::string customer_name;
        // Date date;
    public:
        Order(int new_order_id, std::vector<Product> new_products, std::string new_customer_name)
        : order_id{new_order_id}, products{new_products}, customer_name{new_customer_name} {}

        Order() {}

        float getTotal() {
            float sum = 0;
            for (Product product : products)
                sum += product.getPrice();
            return sum;
        }

        void registerOrder() {}
};

#endif