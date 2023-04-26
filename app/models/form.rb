class Form
  include ActiveModel::Model 
  attr_accessor :name, :image, :caption, :cooking_time, :user_id, :ingredient_name, :seasoning_name, :step

  with_options presence: true do 
    validates :name
    validates :caption
    validates :user_id 
  end

  def save 
    recipe = Recipe.create(name: name, image: image, caption: caption, cooking_time: cooking_time, user_id: user_id)
    Ingredient.create(ingredient_name: ingredient_name)
    Seasoning.create(seasoning_name: seasoning_name)
    Procedure.create(step: step)
  end
end