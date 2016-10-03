class Order

  attr_reader :items, :placed_at, :time_spend_on_sending_email

  include ItemContainer

  def initialize
    @items = Array.new
  end

  def place
    @placed_at = Time.now
    # thr = Thread.new do
    #   Pony.mail(:to => StoreApplication::Admin.email,
    #     :from => "My Store <jason.binwood@gmail.com>",
    #     :via => :smtp, :via_options => {
    #       address:   'smtp.gmail.com',
    #       port:      '587',
    #       user_name: 'puzzleskillz@gmail.com',
    #       password:  'JESTER9STARS',
    #       authentication: :plain,
    #       domain:    "mail.google.com" },
    #     subject: "New order has been placed", body: "Please check back you admin page to see it!")
    # end  
    # while(thr.alive?)
    #   puts "."
    #   sleep(1)
    # end
    sent_email_at = Time.now
    @time_spend_on_sending_email = sent_email_at - @placed_at
  end
end