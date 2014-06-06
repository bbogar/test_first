class RPNCalculator
	attr_accessor :calculator

	def initialize
		@calculator = []	
	end

	def value
		@calculator.last
	end

	def push(num)
		@calculator << num
	end

	def plus
		if @calculator.size >= 2
			sum = @calculator.pop + @calculator.pop
			@calculator << sum
		else
			raise "calculator is empty"
		end
	end

	def minus
		if @calculator.size >= 2
			num1 = @calculator.pop
			num2 = @calculator.pop
			minus = num2 - num1
			@calculator << minus
		else
			raise "calculator is empty"
		end
	end

	def divide
		if @calculator.size >= 2
			num1 = @calculator.pop.to_f
			num2 = @calculator.pop.to_f
			divide = num2 / num1
			@calculator << divide
		else
			raise "calculator is empty"
		end
	end

	def times
		if @calculator.size >= 2
			num1 = @calculator.pop.to_f
			num2 = @calculator.pop.to_f
			times = num1 * num2
			@calculator << times
		else
			raise "calculator is empty"
		end
	end

end