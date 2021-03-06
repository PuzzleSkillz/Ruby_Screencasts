require_relative "store_application"

StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end

end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login


@items = []
@items << AntiqueItem.new("car", price: 101, weight: 100)
@items << RealItem.new({:weight =>100, :price => 101, :name => "kettle" })
@items << RealItem.new({:weight =>100, :price => 101, :name => "dishwasher" })

@items.each { |i| puts i.name}

cart = Cart.new("denis")
cart.add_item RealItem.new({:price => 150, :weight =>100, :name => "car" })
cart.add_item RealItem.new({:price => 101, :weight =>100, :name => "car" })
cart.add_item RealItem.new({:price => 120, :weight =>100, :name => "kettle" })

method = "all_cars"
#p cart.send(method)