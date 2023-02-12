#include "Enemy.h"

#include <random>
#include <ctime>

Enemy::Enemy()
{
}

Enemy::Enemy( int x, int y, string name, char tile, int level, int attack, int defense, int health, int experience )
{
	_name = name;
	_tile = tile;
	_level = level;
	_attack = attack;
	_defense = defense;
	_health = health;
	_experience = experience;

	setPosition( x, y );
}



int Enemy::attack()
{
	static default_random_engine randomEngine( time(NULL) );
	uniform_int_distribution<int> attackRoll( 0, _attack );

	return attackRoll( randomEngine );
}



int Enemy::takeDamage( int attack )
{
	attack -= _defense;
	if( attack > 0 ){
		_health -= _attack;

		if( _health <= 0 ) return _experience;
	}

	return 0;
}



void Enemy::setPosition( int x, int y )
{
	_x = x;
	_y = y;
}

void Enemy::getPosition( int &x, int &y )
{
	x = _x;
	y = _y;
}

char Enemy::getMove( int playerX, int playerY )
{
	static default_random_engine randomEngine( time(NULL) );
	uniform_int_distribution<int> moveRoll( 0, 6 );

	int dx = _x - playerX, dy = _y - playerY;
	int adx = abs(dx), ady = abs(dy);

	int distance = adx + ady;

	if( distance < 5 ){
		if( adx > ady )
			return ( dx > 0 )? 'a': 'd';
		else
			return ( dy > 0 )? 'w': 's';
	}
	
	int random = moveRoll( randomEngine );
	switch( random ){
		case 0: return 'w';
		case 1: return 'a';
		case 2: return 's';
		case 3: return 'd';
	}

	return '.';

}

char Enemy::getTile()
{
	return _tile;
}
