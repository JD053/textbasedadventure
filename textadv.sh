#!/bin/bash
[[ $health = 100 ]]

echo "What is your name traveller"
read traveller

sleep 1
echo ""

until [[ $race == "human" ]] || [[ $race == "elf" ]] || [[ $race == "dwarf" ]]; do

echo "Greetings $traveller, may I ask what race you orignate from?"
read race

	case $race in
		human ) echo "Oh so you're a human"
		;;
		elf ) echo "An elf hmm"
		;;
		dwarf ) echo "A Dwarf, rare to see one out of the moutians"
		;;
		* ) echo "I'm sorry traveller, this race doesn't exist in this world"
		;;
	esac 
done 

sleep 1
echo ""

until [[  $weapon == "sword" ]] || [[ $weapon == "spear" ]] || [[ $weapon == "dagger" ]]; do

echo "What is your  weapon of choice?:"
read weapon 

	case $weapon in 
		sword ) echo "You picked the sword"
		;;
		spear ) echo "You picked the spear"
		;;
		dagger ) echo "You picked the dagger"
		;;
		* ) echo "Your fun is wrong"
		;;
	esac 
done 

echo "Thank you $traveller, your journey may now begin"
echo "Progress saved" && echo "$traveller" || "$race" || "$weapon" >>  storedchoice

clear
banner "SENSOU NO"
banner " SENSHI  "

echo "Your vision fades in"

sleep 1
echo ""

echo "As you look around you can see that you're within the mits of a battle"

sleep 1
echo ""

echo "A horse gallops past your right, cutting down soliders, and tramapling others"

sleep 1
echo ""

echo "Your hands tense and your holding something, as you look down you see a $weapon in your hands"

sleep 1
echo ""

echo "The muffled sounds of war around you become clear, you hear screaming behind you"

sleep 1
echo ""

echo "You turn around seeing a soldier running at you with a rasied sword"

sleep 1
echo ""

until [[ $fstatk == "dodge" ]] || [[ $fstatk == "block" ]] || [[ $fstatk == "attack" ]]; do

#enemy health 
[[ $enehlt == 20 ]]

echo "What do you do?"
read fstatk
#first attack
	case $fstatk in
		dodge ) echo "you roll to your left just barely avoiding the attack"
		;;
		block ) echo "You put your $weapon in front of the incoming attack, stopping the blades inches from your face"
		;;
		attack ) [[ $dmg == rand -N 1 -M 20 ]] echo "20 - $dmg"
		;;
		* ) echo "You take `$health - rand -N 1 -M 20`"
		;; 
	esac 
done
