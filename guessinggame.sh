# File: guessinggame.sh

function count ()
{
       local total=$(ls | wc -l)
       echo $total
}
filecount=$(count)
echo "How many files do exist in the current directory (type a number)?"
read fileguess

if [[ $fileguess -eq $filecount ]]
    then
        echo "You are right :) Thanks for playing!"
    else
        while [[ $fileguess -ne $filecount ]]
            do 
              if [[ $fileguess  -gt $filecount ]]
                  then 
                     echo "Your guess is too high :( Please try again (type a number)."
              read fileguess
              else
                     echo "Your guess is too low :( Please try again (type a number)."
              read fileguess 
              fi
            done
        echo "You are right :) Thanks for playing!"
fi

