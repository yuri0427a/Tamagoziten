class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end
private
  def category_params
    params.require(:category).permit(:name, :recipes_attributes[:id, :name, :recipe_image, :cooking_time])
  end
end
