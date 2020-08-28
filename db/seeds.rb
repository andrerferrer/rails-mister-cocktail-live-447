puts "Clean the DB"
if Rails.env == "development"
  Cocktail.destroy_all
  Ingredient.destroy_all
  Dose.destroy_all
end

puts "Create some cocktails"

Cocktail.create! name: "Caipirinha"
Cocktail.create! name: "Screwdriver"

puts "Create some ingredients"
Ingredient.create! name: 'Orange Juice'
Ingredient.create! name: 'Vodka'
Ingredient.create! name: 'Cachaça'
Ingredient.create! name: 'Lime Juice'
Ingredient.create! name: 'Sugar'

puts "Create some doses"
Dose.create! cocktail: Cocktail.second ,ingredient: Ingredient.first , description: '200 ml'
Dose.create! cocktail: Cocktail.second ,ingredient: Ingredient.second , description: '50 ml'

puts 'We are done. Have a drink'
puts %{

  .
  .
 . .
  ...
\\~~~~~/
 \\   /
  \\ /
   V
   |
   |
  ---

}