#!/bin/bash
clear
health=100

#playername 
echo "What is your name traveller"
read traveller

sleep 1
echo ""

#race selection 
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

#weapon selection
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
echo "Progress saved" && echo "$traveller" || "$race" || "$weapon" >>  storedchoices

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

until [[ $1statk == "dodge" ]] || [[ $1statk == "block" ]] || [[ $1statk == "attack" ]]; do

#enemy health 
enehlt=20

echo "What do you do?"
read 1statk
dmg=$(( (RANDOM % 20) + 1))
healthloss=$(( (RANDOM % 20) + 1))
#first attack
	case $1statk in
		dodge ) echo "you roll to your left just barely avoiding the attack"
		;;
		block ) echo "You put your $weapon in front of the incoming attack, stopping the blades inches from your face"
		;;
		attack ) echo "you attack with your $weapon doing $(( $enehlt-$dmg = $enehlt )) damage to the foe"
		;;
		* ) echo "You take `$health - $healthloss` damage"
		;; 
	esac 


if [[ $enehlt > 0 ]] || [[ $1statk == "attack" ]]; then 
	echo "You strike your $weapon into the enemy, however he still has $enehlt left" 
	sleep 2
	echo ""

	until [[ $2ndatk == "dodge" ]] || [[ $2ndatk == "block" ]] || [[ $2ndatk == "attack" ]]; do

	echo "What do you do now?"
	read 2ndatk
	dmg=$(((RANDOM % 20)+1))
	healthloss=$(((RANDOM%20)+1)) 
	case $1statk in
                dodge ) echo "you roll to your left just barely avoiding the attack"
                ;;
                block ) echo "You put your $weapon in front of the incoming attack, stopping the blades inches from your face"
                ;;
                attack ) echo "you attack with your $weapon doing $(( $enehlt-$dmg = $enehlt )) damage to the foe"
                ;;
                * ) echo "You take `$health - $healthloss` damage"
                ;;
        esac
fi 


























































