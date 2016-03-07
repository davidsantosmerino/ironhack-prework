puts "What is the source file?"
sourceFile = gets.chomp
sourceContents = IO.read(sourceFile)
puts "What is the destination file?"
destinationFile = gets.chomp
IO.write(destinationFile, sourceContents)
puts "The destination file #{destinationFile} has been written."