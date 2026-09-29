#!/bin/bash

random_number=$(shuf -i 1-100 -n 1)
max_att=5

for (( i=1; i<=max_att; i++  )); do
        read -p "Enter a number: " user_number
        if [[ "$user_number" =~ ^[0-9]+$ ]]; then
                if [ "$user_number" -lt "$random_number" ]; then
                        echo "Too low"
                elif [ "$user_number" -gt "$random_number" ]; then
                        echo "Too high"
                else
                        echo "Congratulations! You guessed the correct number."
                        exit 0
                fi
        else
                echo "Enter correctly"
        fi
done
