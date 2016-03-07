puts "Where is your name (file)?"
fileName = gets.chomp
fileContents = IO.read(fileName)
puts "Hi #{fileContents}"