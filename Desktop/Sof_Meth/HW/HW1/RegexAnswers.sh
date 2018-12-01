#Josh Asmussen

if [ "$#" -ne "0" ]
	then
		grep [0-9]$ $1 | wc -l ;

		grep ^[aeiouAEIOU]  $1 | wc -l ;

		grep  ^'[a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z]'  $1 | wc -l ;

		grep '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'   $1 | wc -l ;

		grep '[303]*-[441]*-[0-9][0-9][0-9][0-9]'  $1 | wc -l ;

		grep '^[0-9].*[aeiouAEIOU]$'  $1 | wc -l  ;

		grep  "\UCDenver.edu\b" $1 |wc -l ;
		 
		egrep '^[N-Zn-z].*[.].*\@UCDenver.edu\b' $1 | wc -l ;

	else
		echo "Usage: ./RegexAnswers.sh filename"

fi