def reverser
	input = yield.split(" ")
	input.each { |word|
		word.reverse!
	}
	input.join(" ")
end

def adder(amt_to_add = 1)
	num = yield
	num = num + amt_to_add
end

def repeater(amount=1)
	amount.times do
		yield
	end
	
end
