def reverser
	word = yield.split.map do |x|
		x.reverse
	end
	word.join(" ")
end

def adder(num = 1)
	yield + num
end

def repeater(num = 1)
	while num > 0
		yield
		num -= 1
	end
end