class IngredientsController < ApplicationController
  def create
    Ingredient.create(ingredient_params)
  end 
  
  private 
  def ingredient_params 
    params.require(:ingredient).permit(:name).merge(recipe_id: params[:recipe_id])
  end
end
