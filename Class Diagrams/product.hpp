#ifndef PRODUCT_HPP
#define PRODUCT_HPP
#include <string>

class Product {
    private:
        int product_id;
        float price;
        // TODO: Topping Class
        std::string description;
    
    public:
        Product(
            int new_id_product,
            float new_price,
            std::string new_description
        ) : product_id{new_id_product}, price{new_price}, description{new_description} {}

        Product() {}

        int getIdProduct() { return product_id; }
        float getPrice() { return price; }
        std::string getDescription() { return description; }
};

#endif