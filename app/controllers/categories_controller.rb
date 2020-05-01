class CategoriesController < ApplicationController
  PER = 6

  def show
    @category = Category.find(params[:id])
    @recipes = @category.recipes.page(params[:page]).per(PER)
  end
private
  def category_params
    params.require(:category).permit(:name, :recipes_attributes[:id, :name, :recipe_image, :cooking_time])
  end
end
