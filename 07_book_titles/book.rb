class Book


	#shamelessly stolen from simon_say
	
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

	attr_reader :title

	def title=(string)
		@title = titleize(string)
	end
end