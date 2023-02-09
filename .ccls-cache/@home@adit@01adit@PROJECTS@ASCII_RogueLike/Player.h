#pragma once

class Player
{
	public:
		Player();
		void init( int level, int health, int attack, int defense, int experience);

		int attack();
		
		void addExperience( int );
		void setPosition( int x, int y );
		void getPosition( int &x, int &y );
		int takeDamage( int );

	private:
		int _level, _health, _attack, _defense, _experience;
		int _x, _y;
};
