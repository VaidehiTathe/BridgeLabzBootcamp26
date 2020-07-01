range=3;
number="";
for i in {1..3}; do
  r=$RANDOM;
  let "r %= $range";
  number="$number""$r";
done;
echo $number
