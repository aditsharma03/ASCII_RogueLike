#include <iostream>
#include <string>

#include "GameSystem.h"

using namespace std;

int main (int argc, char *argv[])
{
	int level = 1;

	GameSystem game( level );

	game.playGame();

	cout << "hello" << endl;
	return 0;
}
