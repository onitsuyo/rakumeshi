class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @form = Form.new 
  end

  def create
    @form = Form.new(recipe_params)
    if @form.valid?
      @form.save 
      redirect_to root_path 
    else
      render :new
    end
  end

  private

  def recipe_params 
    params.require(:form).permit(:name, :caption, :cooking_time, :image, :ingredient_name, :seasoning_name, :step).merge(user_id: current_user.id)
  end

end
