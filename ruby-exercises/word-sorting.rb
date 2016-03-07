#Iteration 1
def basic_sorting(sentence)
	array_sentence = sentence.split(" ")
	array_sentence.sort
end

#Iteration 2
def basic_sorting_no_punctuation_chars(sentence)
	array_sentence = sentence.split(" ")
	array_sentence.each do |word|
		word.gsub!(/[^A-z]/,'')
	end
	array_sentence.sort
end

#Iteration 3
def custom_sorting(sentence)
	array_sentence = sentence.split(" ")
	array_sentence.each do |word|
		word.gsub!(/[^A-z]/,'')
	end
	array_sentence.sort_by { |word| word.downcase }
end

test_sentence = "Have a nice day."
puts "This a very basic sortying..."
puts basic_sorting(test_sentence)
puts "Just removing punctiation chars..."
puts basic_sorting_no_punctuation_chars(test_sentence)
puts "My awesome sorting!"
puts custom_sorting(test_sentence)