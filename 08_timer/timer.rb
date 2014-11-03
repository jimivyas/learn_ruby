class Timer
	attr_reader :time_output
	def initialize 
		@time = 0
	end

	def seconds=(num)
		@time = num
	end

	def seconds_to_output(num)
		first_bit = num / 3600
		num = num % 3600
		second_bit = num / 60
		num = num % 60
		third_bit = num
		time_output = "#{first_bit}" + ":" + "#{second_bit}" + ":" + third_bit

	def padded(seconds)
		case seconds
		when 0
			@time = "00"
		when 1..9
			@time = "0" + seconds.to_s
		else
			@time = seconds.to_s
		end
	end

end
