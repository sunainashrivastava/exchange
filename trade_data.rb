# frozen_string_literal: true

require 'yaml'

# module contains user details
module User
  def user_details
    YAML.load_file 'user_data.yaml'
  end
end

def product_details
  YAML.load_file 'product_data.yaml'
end
