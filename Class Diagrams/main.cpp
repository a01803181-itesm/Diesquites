#include "product.hpp"
#include "beverage.hpp"
#include <iostream>

int main() {
    Product beverage_product_details{1967, 20.00, "Hibiscus beverage"};
    Beverage beverage_obj{beverage_product_details, 500.00, "Hibiscus"};
    
    std::cout << "Beverage object" << std::endl;
    std::cout << "1. Beverage flavour: " << beverage_obj.getFlavour() << std::endl;
    std::cout << "2. Beverage size: " << beverage_obj.getSize() << std::endl;
    std::cout << "3. Beverage price: " << beverage_obj.getProduct().getPrice() << std::endl;
    std::cout << "4. Beverage id: " << beverage_obj.getProduct().getIdProduct() << std::endl;
    std::cout << "5. Beverage description: " << beverage_obj.getProduct().getDescription() << std::endl;
    
    return 0;
}