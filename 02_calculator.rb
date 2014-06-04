def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	sum = 0
	array.each do |i|
		sum += i
	end
	sum
end

# Bonus Questions

def multiply(*nums)
	result = 1
	nums.each do |x|
		result *= x
	end
	result
end

def power(num, exp)
	x = 1
	exp.times do 
		x *= num
	end
	x
end

def factorial(num)
	if num <= 1
		1
	else
		num * factorial(num - 1)
	end
end
