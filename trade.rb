# frozen_string_literal: true

require 'time' # including time module to use time functions.

load 'trade_data.rb'

load 'trade_methods.rb'

load 'trade_classes.rb'

def items_list
  puts "Here is the product details -\n\n" # method to get details of products
  product_details.each do |data|
    data.each do |key, value|
      puts "#{key} : #{value}"
    end
  end
  puts
end

details_of_user = Class.new.send(:include, User).new # get details of user
puts "Users are -\n\n"
details = details_of_user.user_details
details.each do |data|
  data.each do |key, value|
    puts "#{key} : #{value}"
  end
end
puts

items_list

seller = Sellers.new
seller.fullname

buyer = Buyers.new
buyer.fullname
puts
buyer.buyer_details

seller.seller_details
seller.age_of_seller

buyer.age_of_buyer
puts
person = Class.new.send(:include, User).new
puts "users having name alex are -\n\n"
candidates = person.user_details
find_details(candidates, 'alex')
