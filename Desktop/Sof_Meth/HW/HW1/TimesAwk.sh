#Josh Asmussen

if [ "$#" -ne "0" ]
then

	awk 'BEGIN{ t=0}

	{ {for(i=3;i<NF;) t+=$++i}; print $1,"["t/3"]" ,$3",",$2;t=0}

	END { 

	}' "$1" | sort -k 3  -k 4 -k 1

	else
	echo "Usage: ./TimesAwk.sh filename"

fi

