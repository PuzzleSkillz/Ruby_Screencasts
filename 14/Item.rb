class Item

  def initialize 
    @price = 30
  end

  attr_reader :price, :weight
  attr_writer :price

end

item1 = Item.new
item1.price = 10
puts item1.price

item1.weight = 10
puts item1.weight

