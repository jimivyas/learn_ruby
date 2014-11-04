class Book


	#shamelessly stolen from simon_says
	
	def titleize(string)
		little_words = ["and", "or", "the", "over", "a", "an", "of", "in"]
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
	#
	def title=(string)
		@title = titleize(string)
	end
end