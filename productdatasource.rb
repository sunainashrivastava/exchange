# frozen_string_literal: true

require 'yaml'

# class ProductDataSource contains product details
class ProductDataSource
  attr_accessor :products
  ATTR_PRODUCT = %i[name seller price category].freeze
  ATTR_PRODUCT.each do |field|
    attr_accessor field
  end

  define_method 'details' do
    product_detail = []
    ATTR_PRODUCT.each do |field|
      product_detail <<  "#{field} : #{send(field)}"
    end
    product_detail.join("\n")
  end

  def initialize(product_detail)
    self.name = product_detail[:name]
    self.seller = product_detail[:seller]
    self.price = product_detail[:price]
    self.category = product_detail[:category]
  end

  def self.import_product_data
    @products = {}
    product_details = YAML.load_file 'product_data.yaml'
    product_details.each do |product_detail|
      @products[product_detail[:seller]] ||= []
      @products[product_detail[:seller]] << new(product_detail)
    end
  end

  def self.all
    @products
  end
end

# class alex
class Alex < ProductDataSource
  def self.all
    super['alex']
  end
end

# class Prabhu
class Prabhu < ProductDataSource
  def self.all
    super['prabhu']
  end
end

# class Meena
class Meena < ProductDataSource
  def self.all
    super['meena']
  end
end
