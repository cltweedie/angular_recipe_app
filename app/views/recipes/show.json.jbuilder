json.recipe do
  json.id @recipe.id
  json.title @recipe.title
  json.link @recipe.link
  json.image_url @recipe.image_url
  json.meal @recipe.meal
  json.rating @recipe.rating
  json.ingredients_attributes do
    json.array! @ingredients, :id, :description
  end
  json.steps_attributes do
    json.array! @steps, :id, :instruction
  end
end
