class Users::RecipeReviewsController < ApplicationController
    
    
    def create
        @review = RecipeReview.new(recipe_review_params)
        @review.user_id=current_user.id
        @review.recipe_id=params[:recipe_id]
    
        if @review.save
            flash[:notice]="投稿できました"
            redirect_to users_recipe_path(@review.recipe_id)
        else
            flash[:notice] = "メッセージを入力してください"
            redirect_to users_recipe_path(@review.recipe_id)
        end
    end


  private
    def recipe_review_params
        params.require(:recipe_review).permit(:impression, :cooking_image, :user_id, :recipe_id)
    end

end
