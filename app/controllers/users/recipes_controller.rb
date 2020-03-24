class Users::RecipesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @recipe = Recipe.new(recipe_params) 
  end

  def create
     @recipe = Recipe.new(recipe_params)
     @recipe.save
     redirect_to root_path
     end
  private
  def recipe_params
    params.permit(:name, :description, :introduction, :recipe_image, :serving, :cooking_time, :egg_quantity, :publishing_status)  
end
end
