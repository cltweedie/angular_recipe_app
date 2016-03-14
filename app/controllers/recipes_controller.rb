class RecipesController < ApplicationController
  before_filter :load_recipe, only: [:show, :destroy]

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    render json: @recipe
  end

  def show
    render json: @recipe
  end

  def destroy
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

  def load_recipe
    @recipe = Recipe.find(params[:id])
  end
end
