#pragma once

#include <vector>
#include <string>

#include "Player.h"
#include "Enemy.h"

using namespace std;

class Level
{
	public:
		Level();
		void load( int, Player&);
		void print();
		char getTile( int, int );
		void setTile( int, int, char );
		void checkMove(char, Player&);
	private:
		vector<string> _levelData;
		vector<Enemy> _enemies;
		void processPlayerInput(Player&, int, int);
		void battleMonster(Player&, int, int);

};
