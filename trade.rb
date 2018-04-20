# frozen_string_literal: true

require 'time' # including time module to use time functions.

load 'userdatasource.rb'

load 'buyers.rb'

load 'sellers.rb'

load 'productdatasource.rb'

puts 'User details are -'
Buyers.import_user_data
Buyers.all.each { |buyer| puts buyer.details }
Sellers.import_user_data
Sellers.all.each { |seller| puts seller.details }
puts

puts 'Product details are -'
Alex.import_product_data
Alex.all.each { |seller| puts seller.details + "\n\n" }

Meena.import_product_data
Meena.all.each { |seller| puts seller.details + "\n\n" }

Prabhu.import_product_data
Prabhu.all.each { |seller| puts seller.details + "\n\n" }

puts 'Buyers age are -'
Buyers.all.each { |buyer| puts buyer.age }
puts

puts 'Buyers full_name are -'
Buyers.import_user_data
Buyers.all.each { |buyer| puts buyer.full_name }
puts

puts 'Buyers details are -'
Buyers.import_user_data
Buyers.all.each { |buyer| puts buyer.details }
puts

puts 'Sellers age are -'
Sellers.import_user_data
Sellers.all.each { |seller| puts seller.age }
puts

puts 'Sellers full_name are -'
Sellers.import_user_data
Sellers.all.each { |seller| puts seller.full_name }
puts

puts 'Sellers details are -'
Sellers.import_user_data
Sellers.all.each { |seller| puts seller.details }
puts

puts 'Users having name "alex" are -'
Buyers.import_user_data
Buyers.all.each do |buyer|
  @buyers = buyer.details if buyer.first_name == 'alex'
end
puts @buyers
Sellers.import_user_data
Sellers.all.each do |seller|
  @sellers = seller.details if seller.first_name == 'alex'
end
puts @sellers
