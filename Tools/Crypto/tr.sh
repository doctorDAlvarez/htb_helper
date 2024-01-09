#The tr command takes two sets of chars and an input.
#Replace ocurrences on input of the first set with
#corresponding of the second set.

# change all upper to lower
tr [:upper:] [:lower:] < original.txt > lowercase.txt
# remove numbers and special chars
tr -cd 'a-z\n[:space:]' < onlylowercase.txt
