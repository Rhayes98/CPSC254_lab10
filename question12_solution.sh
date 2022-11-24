echo "This is the script for lab 10 question 2 for CPSC 254 Fall 2022"
echo "This script will present the user with project info based on user input"
echo "Enjoy"
echo

#initialize to one so it doesn't skip the loop, first thing we do is overwrite it anyway
userinput=1

while [ $userinput != 0 ]
do
    echo "0 Exit Script"
    echo "1 Project Introduction"    
    echo "2 List Files"
    echo "3 Credits"
    echo
    read -p 'Input: ' userinput
    
    if [ $userinput = 1 ]
        then 
        echo "Our Project is a simple app that gives users a front end for resizing and exporting image files across various types. (Tested on .jpg and .png)"
        echo
    fi
    
    if [ $userinput = 2 ]
        then 
        ls -l
        echo
    fi
    
    if [ $userinput = 3 ]
        then 
        echo "R-Squared is: Richard Hayes (rhayes_98@csu.fullerton.edu), Rodney Muniz (rodmuniz1@csu.fullerton.edu)"
        echo
    fi
done
