class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    Recipe.create!(recipe_params)
    render nothing: true
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :link, :image_url)
  end

end
