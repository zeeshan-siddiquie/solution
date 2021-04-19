echo "enter the argument"
read number
r=10
if [ -z "$number" ]; then
    echo "The Defualt argument is 10"
    number=10
fi
for ((a = 1; a <= number; a++))
  do
    echo "$a,2" | awk -v v=$r 'BEGIN {FS=OFS=","} {print $1 ", " ($2 + v)}'
    r=$(( $RANDOM % 1000 )) 
  done
