function getLines()
{
lines="$(ls | wc -l)"
}

	getLines
	files=$lines+1
	
		


	echo "HOW MANY FILES ARE IN $(pwd) ?" 

	while [[ $files -ne $lines ]]
	do
	
	echo "ENTER YOUR GUESS:"
	read files
	echo "YOUR GUESS IS $files.."
		if [[ $files -eq $lines ]]
		then
			echo "CONGRATS!"
			echo "THE DIRECTORY CONTAINS $files ELEMENTS"
		elif [[ $files -gt $lines ]]
		then
			echo "TOO HIGH."	
			echo "TRY AGAIN..."
		else
			echo "TOO LOW."
			echo "TRY AGAIN..."
		fi
	done
	
