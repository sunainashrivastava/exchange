require 'time'

module User
  def user_details
    user = [
     {:first_name => 'alex', :last_name => 'newman', :date_of_birth => '1982-05-01', :address => 'sapna sangeeta', :role => 'buyer'}, 
     {:first_name => 'alex', :last_name => 'Panc', :date_of_birth => '1990-04-12', :address => 'bhanwar kua', :role => 'seller'}, 
     {:first_name => 'Meena', :last_name => 'Pallanipppan', :date_of_birth => '1988-02-03', :address => 'sapna sangeeta', :role => 'seller'}, 
     {:first_name => 'Prabhu', :last_name => 'Sharma', :date_of_birth => '1992-02-11', :address => 'geeta bhawan', :role => 'seller'}, 
     {:first_name => 'Sundar', :last_name => 'Pichai', :date_of_birth => '1983-05-11', :address => 'vijay nagar', :role => 'buyer'}
    ]
  end 
end

def product_details
  products = [
   {:name => 'bicycle', :seller => 'alex', :price => 3000, category: 'vehicle'},
   {:name => 'car', :seller => 'meena', :price => 250000, category: 'vehicle'},
   {:name => 'jeans', :seller => 'prabhu', :price => 1800, category: 'clothes'},
   {:name => 'shirt', :seller => 'prabhu', :price => 700, category: 'clothes'},
   {:name => 'blue shirt', :seller => 'prabhu', :price => 1200, category: 'clothes' },
   {:name => 't-shirt', :seller => 'prabhu', :price => 600, category: 'clothes'},
   {:name => 'capri', :seller => 'prabhu', :price => 300, category: 'clothes'},
   {:name => 'bike', :seller => 'meena', :price => 60000, category: 'vehicle'},
   {:name => 'scooter', :seller => 'meena', :price => 25000, category: 'vehicle'},
   {:name => 'maruti', :seller => 'meena', :price => 400000, category: 'vehicle'},
   {:name => 'auto', :seller => 'meena', :price => 100000, category: 'vehicle'},
   {:name => 'sweter', :seller => 'prabhu', :price => 1200, category: 'clothes'},
   {:name => 'jacket', :seller => 'prabhu', :price => 3500, category: 'clothes'},
   {:name => 'hat', :seller => 'prabhu', :price => 400, category: 'clothes'},
   {:name => 'doll', :seller => 'alex', :price => 350, category: 'toys'},
   {:name => 'toy car', :seller => 'alex', :price => 250, category: 'toys'},
   {:name => 'bat', :seller => 'alex', :price => 700, category: 'toys'},
   {:name => 'ball', :seller => 'alex', :price => 20, category: 'toys'},
   {:name => 'batman', :seller => 'alex', :price => 300, category: 'toys'},
   {:name => 'barbi doll', :seller => 'alex', :price => 3000, category: 'toys'}
  ]
end

def find_details(values, string)  # method to get details of sellers and buyers 
  values.each do |i| 
    i.each do |key, value|
      if value == string 
        details = i.to_s.gsub(/[,:""\{|\}]/ ,"") 
        puts details.to_s.gsub(/[\s]/ ,"\n") 
      end 
    end
  end
end

def print_first_and_last_name(values, string)  # method to get fullname of sellers and buyers
 values.each do |i| 
    i.each do |key, value|
      if value == string  
        puts "Full name of seller is #{i[:first_name]} #{i[:last_name]}"  
      end 
    end
  end
end

def get_age(values, string)  # method to get age of sellers and buyers
  values.each do |i| 
    i.each do |key, value|
      if value == string  
        now = Time.now
        dob = Time.parse i[:date_of_birth]
        puts "Age of #{i[:first_name]} #{i[:last_name]} is #{now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)}"
      end 
    end
  end
end

class Seller 
  include User
  def seller_details  
    puts "Seller details are -"
    find_details(user_details, role = "seller")
  end
  def get_fullname 
    print_first_and_last_name(user_details, role = "seller")
  end
  def age_of_seller  
    get_age(user_details, role = "seller")
  end
end

class Buyer 
  include User
  def buyer_details
    puts "Buyer details are -"
    find_details(user_details, role = "buyer")
  end
  def get_fullname
    print_first_and_last_name(user_details, role = "buyer")
  end
  def age_of_buyer
    get_age(user_details, role = "buyer")
  end
end

def get_items  # method to get details of products
  puts "Here is the product details -\n\n"
  product_details.each do |i|
    i.each do |key, value|
      puts "#{key} : #{value}"
    end
    puts
  end
end

details_of_user = Class.new.send(:include, User).new  # get details of user
puts "Users are -\n\n"
details_of_user.user_details.each do |i|
  i.each do |key, value|
    puts "#{key} : #{value}"
  end
end

get_items

seller = Seller.new
seller.get_fullname

buyer = Buyer.new
buyer.get_fullname
buyer.buyer_details

seller.seller_details
seller.age_of_seller

buyer.age_of_buyer
puts 
person = Class.new.send(:include, User).new
puts "users having name alex are -\n\n"
find_details(person.user_details, first_name = "alex")