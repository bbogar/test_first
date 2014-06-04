def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, num=2)
	([word] * num).join(" ")
end

def start_of_word(word, num)
	word[0,num]
end

def first_word(string)
	string.split[0]
end

def titleize(phrase)
	phrase.capitalize!
	i = phrase.split.each do |x|
		x.capitalize! unless["and", "the", "over"].include? x
	end
	i.join(" ")
end

