class Users::RecipesController < ApplicationController
  def index
  end

  def show
  end

  def create
     @recipe = Recipe.new
     @recipe.save
     redirect_to root_path
     end
  def recipe_params
    params.require(:recipe).permit(:name, :description, :introduction, :recipe_image, :serving, :cooking_time, :egg_quantity, :publishing_status)  
end
end
