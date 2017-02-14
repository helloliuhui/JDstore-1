u = User.new
u.email = "admin@test.com"
u.password = "111111"
u.password_confirmation = "111111"
u.is_admin = true
u.save


products_categories = ["Giant", "Trek"]
create_products = for i in 1..5 do
Product.create!([title: products[i - 1],
description: products_description[i - 1],
quantity: rand(0..10),
price: products_prices[i - 1],
image: File.open(File.join(Rails.root, products_images[i-1])),
categories: products_categories[i-1] ])
end
