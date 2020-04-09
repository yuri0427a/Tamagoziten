class Users::RecipesController < ApplicationController
  before_action :authenticate_user!
  PER = 9

  def index
    @recipes = Recipe.page(params[:page]).per(PER)
  end

  def show
    @recipe = Recipe.find(params[:id]) 
    @materials = @recipe.cooking_materials
    @procedures = @recipe.cooking_procedures
    @review = RecipeReview.new
    @reviews= @recipe.recipe_reviews
   
    #@bookmarks = @recipe.recipe_favorites
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
     if @recipe.save
      # 作成に成功した場合、 ures/recipes/{book_id} にリダイレクト
     redirect_to users_recipe_path(@recipe.id), notice: "レシピを投稿しました！"
     else
     # 作成に失敗した場合、 /books/new に戻してバリデーションエラーを表示する
     render :new
      # view 側で、 @book.errors を使ってエラーを表示する。
    #記述しないとノーメソッドエラーになる
end
     end

  def edit
    @recipe = Recipe.find(params[:id]) 
    @materials = @recipe.cooking_materials
    @procedures = @recipe.cooking_procedures
  end

  def update
    @recipe = Recipe.find(params[:id]) 
    @recipe.update(recipe_params)
    if @recipe.save
     redirect_to users_recipe_path(@recipe.id), notice: "レシピを編集しました！"
     else
     render :edit
  end
end

  def destroy
    recipe = Recipe.find(params[:id]) 
    recipe.destroy
    redirect_to users_user_path(current_user.id)
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :introduction, :recipe_image, :serving, :cooking_time, :egg_quantity, :publishing_status, cooking_materials_attributes: [:id, :material_name, :material_quantity], cooking_procedures_attributes: [:id, :procedure_description, :step_number])  
  end
end
