#Iteration 1, using for
=begin
for number in 1..100
	output = ''
	if number % 3 == 0 || number % 5 == 0
		if number % 3 == 0
			output += 'Fizz'
		end
		if number % 5 == 0
			output += 'Buzz'
		end
	else
		output = number
	end

	puts output
end
=end

#Iteration 2, using while
=begin
number = 1
while number <= 100
	output = ''
	if number % 3 == 0 || number % 5 == 0
		if number % 3 == 0
			output += 'Fizz'
		end
		if number % 5 == 0
			output += 'Buzz'
		end
	else
		output = number
	end

	puts output
	number += 1
end
=end

#Iteration 2, using each
=begin
numbers = [*1..100]
numbers.each do |number|
	output = ''
	if number % 3 == 0 || number % 5 == 0
		if number % 3 == 0
			output += 'Fizz'
		end
		if number % 5 == 0
			output += 'Buzz'
		end
	else
		output = number
	end

	puts output
end
=end

#Iteration 4
def FizzBuzzBang(number)
	output = ''
	if number % 3 == 0 || number % 5 == 0 || number.to_s.start_with?('1')
		if number % 3 == 0
			output += 'Fizz'
		end
		if number % 5 == 0
			output += 'Buzz'
		end
		if number.to_s.start_with?('1')
			output += 'Bang'
		end
	else
		output = number
	end

	output
end

for number in 1..100	
	puts FizzBuzzBang(number)
end


