# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Testimonial.create_with(
  name: "James Fernando", ocupation: "Manager of Racer", image_url: "uploads/testi_01.png",
  title: "Wonderful Support", description: "They have got my project on time with the competition with a sed highly skilled, and experienced & professional team."
).find_or_create_by(name: "James Fernando")

Testimonial.create_with(
  name: "Jacues Philips", ocupation: "Designer", image_url: "uploads/testi_02.png",
  title: "Awesome Services!", description: "Explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you completed."
).find_or_create_by(name: "Jacues Philips")
