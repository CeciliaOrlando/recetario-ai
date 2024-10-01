# Destruir todos los usuarios, recetas e ingredientes
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

# Crear un usuario
user = User.create!(
  email: 'usuario@example.com',
  password: 'contraseña123',
  password_confirmation: 'contraseña123'
)

# Crear recetas y sus ingredientes
3.times do |i|
  recipe = Recipe.create!(
    name: "Receta #{i + 1}",
    user: user # Asegúrate de que esta línea esté aquí
  )

  3.times do |j|
    Ingredient.create!(
      name: "Ingrediente #{j + 1} para Receta #{i + 1}",
      quantity: "#{j + 1} unidades",
      recipe: recipe
    )
  end
end

puts "Se han creado #{User.count} usuarios, #{Recipe.count} recetas y #{Ingredient.count} ingredientes."

