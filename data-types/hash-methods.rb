require 'pry'
communities = {}
communities["AST"] = "Asturias"
communities["GAL"] = "Galicia"
communities["CAT"] = "Catalunya"

puts "Is Catalunya an autonomous commu... Ok, let's try with an easier question. Is Asturias an autonomous community? #{communities.has_value? ("Galicia")}"
binding.pry
puts "Is there any community that includes 'Gal'? #{communities.select {|key, value| value.include?("Gal")}}"