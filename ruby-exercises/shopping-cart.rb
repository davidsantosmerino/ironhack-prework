require 'pry'
require 'date'

class ShoppingCart

  def initialize
    @items = []
  end
  def add_item(item)
    @items.push(item)
  end
  def checkout
    list = "This is your bill: \n\n"
    @items.each_with_index do |item, index|
      list += "#{index}. #{item.name}\t\t#{item.get_price}$\n"
    end
    list += "\nTotal:\t\t\t\t#{self.get_total_price}$"
  end
  def get_total_price
    total_price = 0
    @items.each_with_index do |item, index|
      total_price += item.get_price
    end
    if @items.length > 5  
      total_price = total_price * 0.9   
    end
    total_price
  end

end

class Item
  attr_reader :name
  def initialize(name, price)
    @name = name
    @price = price
  end

  def get_price
    @price
  end


end

class Houseware < Item

  def get_price
    final_price = 0
    if @price > 100
      final_price = @price * 0.95
    else
      final_price = @price
    end
    final_price
  end

end

class Fruit < Item

def get_price
  final_price = 0
  today = Date.today
  if today > 5
    final_price = @price * 0.9
  else
    final_price = @price
  end
  final_price
end

end

my_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum cleaner", 150)
anchovies = Item.new("Anchovies", 2)

my_cart.add_item(orange_juice)
my_cart.add_item(rice)
my_cart.add_item(banana)
my_cart.add_item(orange_juice)
my_cart.add_item(rice)
my_cart.add_item(banana)
puts my_cart.checkout