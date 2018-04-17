# frozen_string_literal: true

# class Sellers
class Sellers
  include User
  def seller_details
    puts 'Seller details are -'
    find_details((user_details1 + user_details2).flatten, 'seller')
  end

  def fullname
    first_and_last_name((user_details1 + user_details2).flatten, 'seller')
  end

  def age_of_seller
    get_age((user_details1 + user_details2).flatten, 'seller')
  end
end

# class Buyers
class Buyers
  include User
  def buyer_details
    puts 'Buyer details are -'
    find_details((user_details1 + user_details2).flatten, 'buyer')
  end

  def fullname
    first_and_last_name((user_details1 + user_details2).flatten, 'buyer')
  end

  def age_of_buyer
    get_age((user_details1 + user_details2).flatten, 'buyer')
  end
end
