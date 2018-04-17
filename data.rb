# frozen_string_literal: true

# module contains user details
module User
  def user_details1
    [
      { first_name: 'alex', last_name: 'newman', date_of_birth: '01-05-1982',
        address: 'sapna sangeeta', role: 'buyer' },
      { first_name: 'alex', last_name: 'Panc', date_of_birth: '12-04-1990',
        address: 'bhanwar kua', role: 'seller' },
      { first_name: 'Meena', last_name: 'Pallanipppan', date_of_birth:
        '03-02-1988', address: 'sapna sangeeta', role: 'seller' }
    ]
  end

  def user_details2
    [
      { first_name: 'Prabhu', last_name: 'Sharma', date_of_birth: '11-02-1992',
        address: 'geeta bhawan', role: 'seller' },
      { first_name: 'Sundar', last_name: 'Pichai', date_of_birth: '11-05-1983',
        address: 'vijay nagar', role: 'buyer' }
    ]
  end
end

def product_details1
  [
    { name: 'bicycle', seller: 'alex', price: 3000, category: 'vehicle' },
    { name: 'car', seller: 'meena', price: 250_000, category: 'vehicle' },
    { name: 'jeans', seller: 'prabhu', price: 1800, category: 'clothes' },
    { name: 'shirt', seller: 'prabhu', price: 700, category: 'clothes' },
    { name: 'blue shirt', seller: 'prabhu', price: 1200, category: 'clothes' },
    { name: 't-shirt', seller: 'prabhu', price: 600, category: 'clothes' },
    { name: 'capri', seller: 'prabhu', price: 300, category: 'clothes' },
    { name: 'bike', seller: 'meena', price: 60_000, category: 'vehicle' }
  ]
end

def product_details2
  [
    { name: 'scooter', seller: 'meena', price: 25_000, category: 'vehicle' },
    { name: 'maruti', seller: 'meena', price: 400_000, category: 'vehicle' },
    { name: 'auto', seller: 'meena', price: 100_000, category: 'vehicle' },
    { name: 'sweter', seller: 'prabhu', price: 1200, category: 'clothes' },
    { name: 'jacket', seller: 'prabhu', price: 3500, category: 'clothes' },
    { name: 'hat', seller: 'prabhu', price: 400, category: 'clothes' },
    { name: 'doll', seller: 'alex', price: 350, category: 'toys' },
    { name: 'toy car', seller: 'alex', price: 250, category: 'toys' }
  ]
end

def product_details3
  [
    { name: 'bat', seller: 'alex', price: 700, category: 'toys' },
    { name: 'ball', seller: 'alex', price: 20, category: 'toys' },
    { name: 'batman', seller: 'alex', price: 300, category: 'toys' },
    { name: 'barbidoll', seller: 'alex', price: 3000, category: 'toys' }
  ]
end
