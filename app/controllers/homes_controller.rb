class HomesController < ApplicationController

    def top
        @recipe_ranks = Recipe.find(RecipeReview.group(:recipe_id).order('count(recipe_id) desc').limit(5).pluck(:recipe_id))
    end
end
