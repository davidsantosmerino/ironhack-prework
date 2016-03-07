require 'pry'

class ShackShop

  def initialize
    @list = []
  end

  def add_milkshake(milkshake)
    @list.push(milkshake)
  end

  def checkout_list
    list = "This is your bill: \n\n"
    total_price = 0
    @list.each_with_index do |milkshake, index|
      list += "#{index}. with #{milkshake.ingredients.map{|ingredient| ingredient.name}.join(", ")}\t#{milkshake.price}$\n"
      total_price += milkshake.price
    end
    list += "\nTotal:\t#{total_price}$"
  end

end

class Milkshake

  attr_reader :ingredients

  def initialize
    @base_price = 3
    @ingredients = []
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price
    total_price = @base_price
    @ingredients.each do |ingredient|
      total_price += ingredient.price
    end
    total_price
  end

end

class Ingredient

  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end

my_shop = ShackShop.new()

mango_milkshake = Milkshake.new()
mango = Ingredient.new("Mango", 2)
mango_milkshake.add_ingredient(mango)

banana_oreo_milkshake = Milkshake.new()
banana = Ingredient.new("Banana", 1)
oreo_cookies = Ingredient.new("Oreo cookies", 2) 
banana_oreo_milkshake.add_ingredient(banana)
banana_oreo_milkshake.add_ingredient(oreo_cookies)

my_shop.add_milkshake(mango_milkshake)
my_shop.add_milkshake(banana_oreo_milkshake)


puts my_shop.checkout_list