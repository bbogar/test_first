def translate_word(str)
	phoneme = ["q","u"]
	letters = ('a'..'z').to_a
	vowels = ["a", "e", "i", "o", "u"]
	consonants = letters - vowels

	# if word begins with a vowel 
	if vowels.include?(str[0])
		str + "ay"
	# if word begins with consonant and includes 'qu'
	elsif str[1,2] == "qu"
		str[3..-1] + str[0] + "qu" + "ay"
	# if word begins with 'qu'
	elsif  phoneme.include?(str[0,1])
		str[2..-1] + "qu" + "ay"
	# if word begins with 3 consonants
	elsif consonants.include?(str[0]) && consonants.include?(str[1])  && consonants.include?(str[2])
		str[3..-1] + str[0..2] + "ay"
	# if word begins with 2 consonants
	elsif consonants.include?(str[0]) && consonants.include?(str[1])
		str[2..-1] + str[0..1] + "ay"
	# if word begins with 1 consonant
	elsif consonants.include?(str[0])
		str[1..-1] + str[0] + "ay"		
	end
end

def translate(phrase)
	phrase.split.map {|x|
		translate_word x
		}.join(" ")
end
