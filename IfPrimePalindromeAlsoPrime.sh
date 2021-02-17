#!/bin/bash
read -p "Please enter the number :" num

function CheckPrime()
{

	for ((i=2;i<=$(($1/2));i++))
	do
	if [[ $(($1 % $i)) -eq 0 ]]
	then
	echo "$1 is not prime "
	exit
	fi
	done

	echo "$1 is prime"
}

function CheckPalindrome()
{
	num=$1
	temp=$num
	sum=0

while [[ (($num -gt 0)) ]]
do
	remd=$(($num%10))
	sum=$(($sum*10+$remd))
	num=$(($num/10))
done

if [[ $sum -eq $temp ]]
then
	echo "$temp are palindrome"
else
	echo "$temp are not palindrome"
fi

return $sum
}

function checkPalindromeIsPrime()
{
	CheckPrime $1
}


CheckPrime $num
CheckPalindrome $num
res=$?
checkPalindromeIsPrime $res



