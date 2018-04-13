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

class Seller 
	include User
	def seller_details  # method to get details of sellers only
	  values = user_details
	  puts "Seller details are -"
	  values.each do |i| 
	    i.each do |key, value|
		  	if value == "seller" 
		  		puts i  
		  	end 
			end
		end
	end
	def get_fullname  # method to get fullname of sellers only
	  values = user_details
	  values.each do |i| 
	    i.each do |key, value|
		  	if value == "seller" 	
		  		puts "Full name of seller is #{i[:first_name]} #{i[:last_name]}"  
		  	end 
			end
		end
	end
	def age_of_seller  # method to get age of sellers only
    values = user_details
	  values.each do |i| 
	    i.each do |key, value|
		  	if value == "seller" 	
          now = Time.now
          dob = Time.parse i[:date_of_birth]
          puts "Age of seller #{i[:first_name]} #{i[:last_name]} is #{now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)}"
		  	end 
			end
		end
	end
end

class Buyer 
	include User
	def buyer_details # method to get details of buyers only
		puts "Buyer details are -"
	  values = user_details
	  values.each do |i| 
	    i.each do |key, value|
		  	if value == "buyer" 
		  		puts i 
		  	end 
		  end
		end
	end
  def get_fullname   # method to get fullname of buyers only
	  values = user_details
	  values.each do |i| 
	    i.each do |key, value|
		  	if value == "buyer" 	
		  		puts "Full name of buyer is #{i[:first_name]} #{i[:last_name]}"  
		  	end 
			end
		end
	end
def age_of_buyer  # method to get age of buyers only
    values = user_details
	  values.each do |i| 
	    i.each do |key, value|
		  	if value == "buyer" 	
          now = Time.now
          dob = i[:date_of_birth]
          dob = Time.parse dob
					puts "Age of buyer #{i[:first_name]} #{i[:last_name]} is #{now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)}"
		  	end 
			end
		end
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

def get_items # method to get details of products
	items = product_details
	puts "Here is the product details -\n\n"
	items.each do |i|
		i.each do |key, value|
	    puts "#{key}:#{value}"
	  end
	  puts
	end
end

details_of_user = Class.new.send(:include, User).new # get details of user
puts "Users are -\n\n"
candidates = details_of_user.user_details
candidates.each do |i|
	i.each do |key, value|
	  puts "#{key}:#{value}"
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
candidates = person.user_details
candidates.each do |i|
	i.each do |key, value|
		if value == "alex"
	    puts i
	  end
	end
end