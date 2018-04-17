# frozen_string_literal: true

# method to get details of sellers and buyers
def find_details(values, string)
  values.each do |data|
    data.each do |_key, value|
      puts data if value == string
    end
  end
  puts
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
      next if value != string
      now = Time.now
      dob = Time.parse data[:date_of_birth]
      age = (now - dob) / (3600 * 24 * 365)
      print "Age of #{data[:first_name]} #{data[:last_name]} is #{age.to_i} \n"
    end
  end
end
