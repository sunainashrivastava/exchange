# frozen_string_literal: true

# class Sellers
class Sellers < UserDataSource
  def self.all
    super['seller']
  end
end
