#!/bin/bash -x

function degreeFarhenite(){
 read -p "Enter temprature in celsius : " degC

	if [[ $degC -ge 0 && $degC -le 100 ]]
	then

		degF=$((($degC*9/5)+32));
		echo "Temperature in Farhenite is :$degF"

		else
		echo "Enter temprature between 0-100 celsius"
	fi
}

#
function degreeCelsius(){
read -p "Enter temprature in Farhenite : " degF

	if [[ $degF -ge 32 && $degF -le 212 ]]
	then

		degC=$((($degF-32)*5/9));
		echo "Temperature in celcius is :$degC"

		else
		echo "Enter temprature between 32-212 farhenite"

	fi

}


read -p "1. Celsius to Farhenite  2. Farhenite to Celsius :" choice

case $choice in
		1)degreeFarhenite
			;;
		2)degreeCelsius
			;;
esac
