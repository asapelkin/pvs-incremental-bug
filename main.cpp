#include <iostream>

int main() {
    if (true == true) { // -V501
        std::cout << "Hello, World!" << std::endl;
    }
    return 0;
}