#include "GameSystem.h"

#include <conio.h>

GameSystem::GameSystem( int levelNumber )
{
	_player.init( 0, 100, 10, 10, 0 );

	_level.load( levelNumber, _player );
}

void GameSystem::playGame()
{

	bool flag = false;
	while( flag != true ){

		_level.print();
		playerMove();
		_level.updateEnemies(_player);
	}

}

void GameSystem::playerMove()
{
	char input;
	input = getch();

	_level.checkMove( input, _player );
}
