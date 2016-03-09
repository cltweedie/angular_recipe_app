class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    render json: @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy!
    render nothing: true
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :link, :image_url, :meal)
  end

end
