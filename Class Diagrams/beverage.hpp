#ifndef BEVERAGE_HPP
#define BEVERAGE_HPP

#include "product.hpp"

class Beverage : Product {
    private:
        Product product;
        float size;
        std::string flavour;

    public:
        Beverage(Product new_product, float new_size, std::string new_flavour) :
        product{new_product}, size{new_size}, flavour{new_flavour} {}

        Product getProduct() { return product; }
        float getSize() { return size; }
        std::string getFlavour() { return flavour; }
};

#endif