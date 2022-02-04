#! /usr/bin/bash
# touch myscript.sh
# chmod +x myscript,sh
# ECHO COMMAND
echo Hello World!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores

NAME="JACK"
# echo "My name is $NAME"

# USER INPUT

# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you"

# SIMPLE IF STATEMENT
# if [ "$NAME" == "Brad" ]
# then
#	echo "Your name is Brad"
# fi

# SIMPLE IF ELSE STATEMENT
if [ "$NAME" == "ERIN" ]
then
	echo "Your name is ERIN"
elif [ "$NAME" == "JACK" ]
then
	echo "Your name is JACK"
else
	echo "your name is not ERIN or JACK"
fi

# COMPARISON

NUM1=1
NUM2=2
if [ "$NUM1" -lt "$NUM2" ]
then
	echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS
FILE="test.txt"
if [ -e "$FILE" ]
then 
	echo "$FILE is a file"
else 
	echo "$FILE is not a file"
fi

# CASE STATEMENT
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in
	[yY] | [yY][eE][sS])
		echo "You can go in"
		;;
	[nN] | [nN][oO])
		echo "Sorry not allowed"
		;;
	*)
		echo "Please enter y/yes or n/no"
		;;
esac
# Simple for loop
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
	do
		echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES

#FILES=$(ls *.txt)
#NEW="new"
#for FILE in $FILES
#	do 
#		echo "Renaming $FILE to new-$FILE"
#		mv $FILE $NEW-$FILE
#done

# WHILE LOOP - READ THROUGH FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
	do 
		echo "$LINE: $CURRENT_LINE"
		((LINE++))
done < "./new-new-test.txt"

#FUNCTIONS

function sayHello() {
	echo "Hello World"
}

sayHello

#Function with PARAMS

function greet() {
	echo "Hello I am $1 and I am $2"
}

greet "Brad" "26"

# CREATE FOLDER AND WRITE TO A FILE

mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"