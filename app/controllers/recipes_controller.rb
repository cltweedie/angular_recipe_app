class RecipesController < ApplicationController
  before_filter :load_recipe, only: [:show, :destroy]
  before_filter :authenticate_user!, only: [:create, :update, :mine, :destroy]

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def mine
    @recipes = Recipe.where(user_id: params[:user_id])
    render json: @recipes
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    render json: @recipe
  end

  def show
    @steps = Step.where(recipe: @recipe)
    @ingredients = Ingredient.where(recipe: @recipe)
    @user = User.find(@recipe.user_id)
  end

  def destroy
    @recipe.destroy!
    render nothing: true
  end

  def update
    @recipe = Recipe.update(params[:recipe][:id], recipe_params)
    render json: @recipe
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :link, :image_url, :meal, :rating, :user_id, ingredients_attributes: :description, steps_attributes: :instruction)
  end

  def load_recipe
    @recipe = Recipe.find(params[:id])
  end
end
