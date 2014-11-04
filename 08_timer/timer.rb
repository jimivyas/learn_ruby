class Timer
  attr_accessor :seconds
  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    hours = (@seconds / (60 * 60)).to_i
    minutes = ((@seconds - hours * 60 * 60) / 60).to_i
    seconds = (@seconds - hours * 60 * 60 - minutes * 60)
    '%02d:%02d:%02d' % [hours, minutes, seconds]
  end

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






	# def seconds=(num)
	# 	@time_string = 0
	# 	@time_string=(num)
	# end

	# def time_string=(num)
	# 	hours = padded(num / 3600)
	# 	minutes = padded((num%3600) / 60)
	# 	num = num % 60
	# 	seconds = padded ((num%3600)%60)
	# 	@time_string = "#{hours}" + ":" + "#{minutes}" + ":" + "#{seconds}"
	# 	return @time_string 
	# end



