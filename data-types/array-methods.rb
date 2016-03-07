animals = ['Lions', 'Tigers', 'Bears', 2]
puts animals
puts "Is #{animals[3]} a real animal?"
puts "Ok, let's fix it... Which animal de you want to introduce?"
newAnimal = gets.chomp
animals.delete_at 3
animals.push newAnimal
puts "Well done! #{newAnimal} has been introduce in our special Zoo"
puts "Now let's sort it and then join in a single string comma separated"
animalsString = animals.sort.join(", ")
puts animalsString