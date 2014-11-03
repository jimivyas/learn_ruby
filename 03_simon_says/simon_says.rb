def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num = 2)
	((string + " ") * num).strip
end

def start_of_word(string, num)
	string[0...num]
end

def first_word(string)
	string.split(" ")[0]
end

def titleize(string)
	little_words = ["and", "or", "the", "over", "a", "an"]
	words = string.split(" ")
	first_word = words.shift.capitalize #takes out first word
	words.each do |word|
	 	if little_words.include?(word)
	 		word
	 	else 
			word.capitalize!
		end
	end
	words.unshift(first_word)
	words.join(" ")
end
