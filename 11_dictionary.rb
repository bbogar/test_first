class Dictionary
	attr_accessor :d

	def initialize
		@d = {}
	end

	def entries
		@d
	end

	def definition(key)
		@d[key]
	end

	def include?(word)
		@d.include?(word)
	end

	def add(entry)
		if entry.class == String
			@d.update({entry => nil})
		else
			@d.update(entry)
		end
	end

	def keywords
		# sorts keys in order
		@d.keys.sort
	end

	def find(entry)
		result = {}
		if @d.include?(entry)
			return {entry => @d[entry]}
		else
			# search each key in the dictionary and add to result hash if there is a match
			@d.each_key do |x|
				result.update ({x => @d[x]}) if x =~ /^#{entry}/
			end
		end
		result
	end

	def printable
		result = ""
		# orders the keys
		keys = @d.keys.sort
		# searches the organized keys and formats them
		keys.each do |x|
			result = result + "[#{x}] \"#{@d[x]}\"\n"
		end
		result[-1] = ""
		result
	end



end