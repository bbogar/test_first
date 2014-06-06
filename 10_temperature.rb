class Temperature
	def initialize(temps = {})
		if temps[:c] == nil
			@temp = temps[:f]
		else
			@temp = ctof(temps[:c])
		end
	end

	def in_fahrenheit
		@temp
	end

	def in_celsius
		ftoc(@temp)
	end

	def ctof(temp)
		((9.0 * temp) / 5.0 )+ 32
	end

	def ftoc(temp)
		5.0 * (temp - 32) / 9.0
	end

end