
#!/bin/bash

# This is my second bash script. In this script, I prompt/
# the user for input, place the input in a variable, then/
# display the variable contents in a string.

echo "What is your name?"

read name

echo "What chapter are you on Linux Basics for hackers?"

read chapter

echo "Welcome" $name "to Chapter" $chapter "of Linux Basics for hackers!"
echo "I'm proud of you, keep going."

