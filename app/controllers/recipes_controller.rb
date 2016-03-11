class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    render json: @recipe
  end

  def show
    render nothing: true
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy!
    render nothing: true
  end

  def update
    @recipe = Recipe.update(params[:id], recipe_params)
    render json: @recipe
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :link, :image_url, :meal, :rating)
  end

end
