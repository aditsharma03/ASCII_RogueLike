#pragma once

#include <iostream>
using namespace std;

class Enemy
{
	public:
		Enemy();
		Enemy(int, int, string, char, int, int, int, int, int);

		int attack();
		int takeDamage(int);

		void setPosition( int, int );
		void getPosition( int&, int& );
	private:
		int _x, _y;

		string _name;
		char _tile;

		int _level;
		int _attack;
		int _defense;
		int _health;
		int _experience;
};
