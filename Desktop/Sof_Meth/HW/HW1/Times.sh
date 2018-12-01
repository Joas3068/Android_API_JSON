#Josh Asmussen

SUM=0; 

if [ "$#" -ne "0" ]
then
	while IFS=' ' read -r col1 col2 col3 col4 col5 col6

		do  

			SUM=0;
			SUM="$(((col4+col5+col6)/3))"
		    echo "$col1 [$SUM] $col3, $col2"

	done < "$1" | sort -k 3  -k 4 -k 1;

	else
	echo "Usage: ./Times.sh filename"

fi


