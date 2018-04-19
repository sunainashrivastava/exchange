# frozen_string_literal: true

# class Buyers
class Buyers < UserDataSource
  def self.all
    super['buyer']
  end
end
