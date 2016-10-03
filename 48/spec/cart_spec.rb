require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/antique_item"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do

  
  
  describe "managin items" do
    it "adds items into the cart" do
      cart = Cart.new("denis")
      item1 = Item.new("kettle", price: 200)
      item2 = Item.new("car",    price: 200)
      cart.add_items(item1, item2)
      cart.items.should include(item1, item2)
    end
    
    it "removes items form itself"
    
  end


  it "counts items in itself"
  it "placed order using all times that were added into the cart"
  it "clear itself off the items after an order is places"
	
end