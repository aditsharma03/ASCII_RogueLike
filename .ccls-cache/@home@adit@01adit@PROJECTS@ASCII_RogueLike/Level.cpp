#include "Level.h"

#include <fstream>
#include <cstdlib>
#include <string>




Level::Level(){ }




void Level::load( int fileNumber, Player &player )
{
	ifstream file;
	file.open( "levels/level"+to_string(fileNumber)+".txt" );

	if( file.fail() ){
		perror( ("level"+to_string(fileNumber)).c_str() );
		exit(1);
	}

	string line;
	while( getline( file, line ) ){
		_levelData.push_back( line );
	}

	file.close();

	//Processing
	char tile;
	for( int i=0; i<_levelData.size(); i++ ){
		for( int j=0; j<_levelData[i].length(); j++ ){
			tile = _levelData[i][j];

			switch( tile ){
				case '@':
					player.setPosition( j, i );
					break;
				case 'S':
					_enemies.push_back( Enemy( j, i, "Snake", tile, 1, 3, 1, 10, 10 ) );
					_enemies.back().setPosition( j, i );
					break;
				case 'g':
					_enemies.push_back( Enemy( j, i, "Goblin", tile, 2, 10, 5, 35, 50 ) );
					_enemies.back().setPosition( j, i );
					break;
				case 'O':
					_enemies.push_back( Enemy( j, i, "Ogree", tile, 4, 20, 20, 200, 500 ) );
					_enemies.back().setPosition( j, i );
					break;
				case 'B':
					_enemies.push_back( Enemy( j, i, "Bandit", tile, 3, 15, 10, 100, 250 ) );
					_enemies.back().setPosition( j, i );
					break;
				case 'D':
					_enemies.push_back( Enemy( j, i, "Dragon", tile, 100, 2000, 2000, 2000, 50000000 ) );
					_enemies.back().setPosition( j, i );
					break;
			}
		}
	}
}	




void Level::print()
{
//	system("clear");
	printf("%s", string("\n", 500).c_str() );

	printf("\n\n");
	for( int i=0; i<_levelData.size(); i++ ){
		printf("\t\t%s\n", _levelData[i].c_str() );
	}

	printf("\n\n");
}




char Level::getTile( int x, int y )
{
	return _levelData[y][x];
}




void Level::setTile( int x, int y, char tile )
{
	_levelData[y][x] = tile;
}




void Level::checkMove( char input, Player &player )
{
	int playerX, playerY;
	player.getPosition( playerX, playerY );

	
	switch( input ){

		case 'w':
		case 'W':
			processPlayerInput( player, playerX, playerY -1 );
			break;
		case 's':
		case 'S':
			processPlayerInput( player, playerX, playerY + 1 );
			break;
		case 'a':
		case 'A':
			processPlayerInput( player, playerX - 1, playerY );
			break;
		case 'd':
		case 'D':
			processPlayerInput( player, playerX + 1, playerY );
			break;
		default:
			;
	}

}


void Level::processPlayerInput( Player &player, int targetX, int targetY )
{
	char moveTile = getTile( targetX, targetY );

	int playerX, playerY;
	player.getPosition( playerX, playerY );

	switch( moveTile ){

		case '#':
			printf("\nYou ran into a wall");
			break;
		case ' ':
			player.setPosition( targetX, targetY );
			setTile( targetX, targetY, '@' );
			setTile( playerX, playerY, ' ' ); 
			break;
		default:
			;
			
	}
}


void Level::battleMonster(Player &player, int targetX, int targetY )
{
	int enemyX, enemyY;
	int attackResult;

	for( int i=0; i<_enemies.size(); i++ ){
		_enemies[i].getPosition( enemyX, enemyY );

		if( targetX == enemyX && targetY == enemyY ){

			attackResult = _enemies[i].takeDamage( player.attack() );
			printf("The player attacked the enemy...");

			if( attackResult != 0 ){
				printf("The enemy died!!!");
				player.addExperience( attackResult );
				setTile( targetX, targetY, ' ');
				print();
				return;
			}

			//Enemy's turn:
			
			attackResult = player.takeDamage( _enemies[i].attack() );
			if( attackResult != 0 ){
				printf("YOU DIED!!!!!");
				setTile( targetX, targetY, 'X');
				print();
				exit(0);
			}
			return;
		}
	}
}
