#pragma once

#include <string>

#include "Player.h"
#include "Level.h"
#include "Enemy.h"

using namespace std;

class GameSystem
{
	public:
		GameSystem( int );
		void playGame();
		void playerMove();
	private:
		Player _player;
		Level _level;

};

