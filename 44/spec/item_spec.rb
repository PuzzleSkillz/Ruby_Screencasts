require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"

describe Item do

  before(:each) do
    @item = Item.new("kettle", price: 200)
  end

  # before(:all) do
  #   @item = Item.new("kettle", price: 200)
  # end

  after(:each) {}
  after(:all)  {}
  
  it "calculates price according to a special formula" do
    expect(@item.price).to eq(232)
    # @item.price = 300
  end

  it "returns info about an objects" do
    expect(@item.to_s).to eq("kettle:232.0")
  end

end