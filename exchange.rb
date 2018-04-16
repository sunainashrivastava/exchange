require 'time' # including time module to use time functions.
# module contains user details
module User
  def user_details
    [
      { first_name: 'alex', last_name: 'newman', date_of_birth: '01-05-1982',
        address: 'sapna sangeeta', role: 'buyer' },
      { first_name: 'alex', last_name: 'Panc', date_of_birth: '12-04-1990',
        address: 'bhanwar kua', role: 'seller' },
      { first_name: 'Meena', last_name: 'Pallanipppan', date_of_birth:
        '03-02-1988', address: 'sapna sangeeta', role: 'seller' },
      { first_name: 'Prabhu', last_name: 'Sharma', date_of_birth: '11-02-1992',
        address: 'geeta bhawan', role: 'seller' },
      { first_name: 'Sundar', last_name: 'Pichai', date_of_birth: '11-05-1983',
        address: 'vijay nagar', role: 'buyer' }
    ]
  end
end

def product_details
  [
    { name: 'bicycle', seller: 'alex', price: 3000, category: 'vehicle' },
    { name: 'car', seller: 'meena', price: 250_000, category: 'vehicle' },
    { name: 'jeans', seller: 'prabhu', price: 1800, category: 'clothes' },
    { name: 'shirt', seller: 'prabhu', price: 700, category: 'clothes' },
    { name: 'blue shirt', seller: 'prabhu', price: 1200, category: 'clothes' },
    { name: 't-shirt', seller: 'prabhu', price: 600, category: 'clothes' },
    { name: 'capri', seller: 'prabhu', price: 300, category: 'clothes' },
    { name: 'bike', seller: 'meena', price: 60_000, category: 'vehicle' },
    { name: 'scooter', seller: 'meena', price: 25_000, category: 'vehicle' },
    { name: 'maruti', seller: 'meena', price: 400_000, category: 'vehicle' },
    { name: 'auto', seller: 'meena', price: 100_000, category: 'vehicle' },
    { name: 'sweter', seller: 'prabhu', price: 1200, category: 'clothes' },
    { name: 'jacket', seller: 'prabhu', price: 3500, category: 'clothes' },
    { name: 'hat', seller: 'prabhu', price: 400, category: 'clothes' },
    { name: 'doll', seller: 'alex', price: 350, category: 'toys' },
    { name: 'toy car', seller: 'alex', price: 250, category: 'toys' },
    { name: 'bat', seller: 'alex', price: 700, category: 'toys' },
    { name: 'ball', seller: 'alex', price: 20, category: 'toys' },
    { name: 'batman', seller: 'alex', price: 300, category: 'toys' },
    { name: 'barbidoll', seller: 'alex', price: 3000, category: 'toys' }
  ]
end

# method to get details of sellers and buyers
def find_details(values, string)
  values.each do |data|
    data.each do |_key, value|
      puts data if value == string
    end
  end
end

# method to get fullname of sellers and buyers
def first_and_last_name(values, string)
  values.each do |data|
    data.each do |_key, value|
      if value == string
        puts "Full name of seller is #{data[:first_name]} #{data[:last_name]}"
      end
    end
  end
end

# method to get age of sellers and buyers
def get_age(values, string)
  values.each do |data|
    data.each do |_key, value|
      if value == string
        now = Time.now
        dob = Time.parse data[:date_of_birth]
        print "Age of #{data[:first_name]} #{data[:last_name]} is "
        fine_age(now, dob)
      end
    end
  end
end

# method to calculate age of sellers and buyers
def fine_age(now, dob)
  if now.month > dob.month || now.month == dob.month && now.day >= dob.day
    puts now.year - dob.year
  else
    puts now.year - dob.year - 1
  end
end

# class Sellers
class Seller
  include User
  def seller_details
    puts 'Seller details are -'
    find_details(user_details, 'seller')
  end

  def fullname
    first_and_last_name(user_details, 'seller')
  end

  def age_of_seller
    get_age(user_details, 'seller')
  end
end
# class Buyers
class Buyer
  include User
  def buyer_details
    puts 'Buyer details are -'
    find_details(user_details, 'buyer')
  end

  def fullname
    first_and_last_name(user_details, 'buyer')
  end

  def age_of_buyer
    get_age(user_details, 'buyer')
  end
end

def items_list
  puts "Here is the product details -\n\n" # method to get details of products
  product_details.each do |data|
    data.each do |key, value|
      puts "#{key} : #{value}"
    end
  end
end

details_of_user = Class.new.send(:include, User).new # get details of user
puts "Users are -\n\n"
details_of_user.user_details.each do |data|
  data.each do |key, value|
    puts "#{key} : #{value}"
  end
end

items_list

seller = Seller.new
seller.fullname

buyer = Buyer.new
buyer.fullname
buyer.buyer_details

seller.seller_details
seller.age_of_seller

buyer.age_of_buyer
puts
person = Class.new.send(:include, User).new
puts "users having name alex are -\n\n"
find_details(person.user_details, 'alex')
