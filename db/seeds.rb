Product.destroy_all

20.times do
  Product.create!(name: Faker::Lorem.word,
                  price: rand(10...100),
                  description: Faker::Lorem.sentence(5, false, 0).chop,
                  photo: URI.parse(Faker::LoremPixel.image))
end
  
p "Created #{Product.count} products"
