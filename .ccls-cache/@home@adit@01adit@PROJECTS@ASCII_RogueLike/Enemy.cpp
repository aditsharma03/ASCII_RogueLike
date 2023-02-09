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

