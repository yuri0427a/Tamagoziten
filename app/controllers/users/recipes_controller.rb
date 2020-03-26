class Users::RecipesController < ApplicationController
  def index
  end

  def show
    @recipe = Recipe.find(params[:id]) 
    @materials = @recipe.cooking_materials
    @procedures = @recipe.cooking_procedures
    
  end

  def new
    @recipe = Recipe.new
    @recipe.cooking_materials.build #build・・結びついてる物のnewと同じ働きをもつ
    @recipe.cooking_procedures.build
    # @matarials = @material.cooking_materilals
    #@matarials = @recipe.matarial_params
  end

  def create
     @recipe = Recipe.new(recipe_params)
     @recipe.user_id = current_user.id
     @recipe.save
     redirect_to users_recipe_path(@recipe.id)
     end

     def edit
     end


  private
  def matarial_params
    params.require(:cookingmatarial).permit(:material_name, :material_quantity)  
  end
  def recipe_params
    params.require(:recipe).permit(:name, :description, :introduction, :recipe_image, :serving, :cooking_time, :egg_quantity, :publishing_status, cooking_materials_attributes: [:id, :material_name, :material_quantity], cooking_procedures_attributes: [:id, :procedure_description, :step_number])  
  end
end
