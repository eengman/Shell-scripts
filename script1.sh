#! /bin/bash

#Note: getNumLikes(post), getNumLikes(post, time)

# Create the directory structure below in your home directory and list it

mkdir -p ~/meals/{breakfast,lunch/{soup,dessert},dinner/{appetizer,dish}}
ls ~/meals
ls ~/meals/breakfast 
ls ~/meals/lunch 
ls ~/meals/dinner

# Create the following text files 
#echo "Some of my favorite foods to eat at breakfast are waffles, eggs, bacon, and toast" > ~/meals/breakfast/favorites.txt 
cat > ~/meals/breakfast/favorites.txt <<EOL
Waffles
Eggs
Bacon
Toast
...
EOL
#echo "Tomato soup, Wonton soup, egg drop soup, chicken noodle soup, brocolli cheddar soup, clam chowder soup" > ~/meals/lunch/soup/soups.txt
cat > ~/meals/lunch/soup/soups.txt <<EOL
Tomato Soup
Wonton Soup
Egg Drop Soup
Chicken Noodle Soup
Brocolli Cheddar Soup
Clam Chowder Soup 
...
EOL
#echo "Chocolate chip" > ~/meals/lunch/dessert/cookies.txt 
cat > ~/meals/lunch/dessert/cookies.txt <<EOL
Chocolate Chip
Oatmeal
Raisin
Sugar
Frosted
...
EOL


# Do the following operations:

## the meals/dinner/'s second repository should be moved under meals/lunch/ repository
mv ~/meals/dinner/dish ~meals/lunch/

## create a copy of the meals/dinner/appetizer/ catalog in meals/lunch/ catalog
cp -R ~/meals/dinner/appetizer/* ~meals/lunch/

## create a copy of the meals/lunch/soup/soups file in the meals repository
cp ~/meals/lunch/soup/soups.txt ~/meals/


# 4) List the content of the meals repository with all the corresponding sub repositories
ls -R ~/meals
##   4a) List the content of the current repository.
ls -C 
##   4b) How much space (in bytes) is occupied by the content of the meals repository
du -s ~/meals 


# 5) list the last 3 lines of the meals/lunch/soup/soups file 
tail -n 3 ~/meals/lunch/soup/soups.txt 

# 6) List in alphabetic order the conent of the meals/lunch/dessert/cookies file
sort ~/meals/lunch/dessert/cookies.txt 
cat ~/meals/lunch/dessert/cookies.txt 

# 7) For the meals/soups/soups file revoke the rights of modifying it, except for the user
chmod o-w ~/meals/lunch/soup/soups.txt 

# 8) Find in the meals/ hiearchy all the files and repositories starting with the letter s and list them 



