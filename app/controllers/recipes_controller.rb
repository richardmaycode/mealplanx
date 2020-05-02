# frozen_string_literal: true

# provides controller actions fro recipes
class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update delete]
  def index
    @recipes = Recipe.all
  end

  def show; end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      RecipeFinalizer.new(User.first, @recipe, params[:is_fav]).execute
      redirect_to [@recipe]
    else
      render :new
    end

  end

  def edit; end

  def update; end

  def delete
    @recipe.destroy
    redirect_to [:recipes]
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :base, :meal_id, :cooking_length, :cuisine_id, :servings, :baby_friendly, :is_fav)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
