# frozen_string_literal: true

require 'yaml'

# class contains user details
class UserDataSource
  @@users = {}
  ATTR_USER = %i[first_name last_name date_of_birth address role].freeze
  ATTR_USER.each do |field|
    attr_accessor field
  end

  define_method 'details' do
    user_detail = []
    ATTR_USER.each do |field|
      user_detail <<  "#{field} : #{send(field)}"
    end
    user_detail.join("\n")
  end

  define_method 'age' do
    now = Time.now
    dob = Time.parse(date_of_birth)
    ((now - dob) / (3600 * 24 * 365)).to_i
  end

  define_method 'full_name' do
    "#{first_name} #{last_name}"
  end

  def initialize(user_detail)
    self.first_name = user_detail[:first_name]
    self.last_name = user_detail[:last_name]
    self.date_of_birth = user_detail[:date_of_birth]
    self.address = user_detail[:address]
    self.role = user_detail[:role]
  end

  def self.import_user_data
    user_details = YAML.load_file 'user_data.yaml'
    user_details.each do |user_detail|
      @@users[user_detail[:role]] ||= []
      @@users[user_detail[:role]] << new(user_detail)
    end
  end

  def self.all
    @@users
  end
end
