class Array
	def sum
		if self.empty?
			0
		else
			self.inject(0) do |sum, i|
				sum + i
			end
		end
	end

	def square
		new_array = []
		if self.empty?
			self
		else
			self.each do |i|
				new_array << i*i
			end
		end
		new_array
	end

	def square!
		if self.empty?
			self
		else
			self.map! do |i|
				i = i*i
			end
		end
	end

end