class Book
	attr_accessor :title

	def title
		exceptions = %w[the a an and in of]
		words = @title.split(" ")
		words[0].capitalize!
		words.each do |word|
			if !(exceptions.include?(word))
				word.capitalize!
			end
		end
		words.join(" ")
	end

end