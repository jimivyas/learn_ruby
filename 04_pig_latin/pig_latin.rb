def translate(string)
	vowels = ["a", "e", "i", "o", "u"]
	if vowels.include?(string[0])
		string = string + "ay"
	elsif !(vowels.include?(string[0])) && !(vowels.include?(string[1])) #word beginning with 2 consonants
		string = string[2..-1] + string[0..1] + "ay"
	else	
		string = string[1..-1] + string[0] + "ay"
	end
end
