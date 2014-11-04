class Array
	def sum
		total = 0
		self.each { |value| total += value }
		total
	end

	def square
		new_array = []
		self.each { |value| new_array << (value*value)}
		new_array
	end

	def square!
   		self.map! {|value| value = value ** 2}
	end

end