require_relative "app/store_application"

StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
    admin.email = "puzzleskillz@gmail.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end

end

unless StoreApplication.frozen?
  StoreApplication.name = "My name"
end
#StoreApplication::Admin.email = "new@email.com"
p StoreApplication::Admin.email

@items = []
@items << AntiqueItem.new("car", price: 101, weight: 100)
@items << RealItem.new({:weight =>100, :price => 101, :name => "kettle" })
@items << RealItem.new({:weight =>100, :price => 101, :name => "dishwasher" })

@items.each { |i| puts i.name}

cart = Cart.new("denis")
cart.add_item RealItem.new({:price => 150, :weight =>100, :name => "car" })
cart.add_item RealItem.new({:price => 101, :weight =>100, :name => "car" })
cart.add_item RealItem.new({:price => 120, :weight =>100, :name => "kettle" })

order = Order.new
order.place
puts order.placed_at.strftime("%b %-d, %Y %H:%M:%S") # Jan 1, 1970 15:00:00