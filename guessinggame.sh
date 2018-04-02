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
        echo "You are wrong :( Please try again (type a number)."
        read fileguess2
        while [[ $fileguess2 -ne $filecount ]]
            do 
              echo "You are wrong :( Please try again (type a number)."
              read fileguess2
            done
        echo "You are right :) Thanks for playing!"
fi

