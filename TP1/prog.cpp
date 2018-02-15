#include <iostream>

int main () {
	int y;
	std::cout << "Quel est ton age? ";std::cin >> y;
	if(y<18) return 1;

	return 0;
}