# frozen_string_literal: true

# provides controller actions fro recipes
class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update delete]
  def index
    @recipes = Recipe.all
  end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def delete
    @recipe.destroy
    redirect_to [:recipes]
  end

  private

  def recipe_params
    params.require(:recipe).permit
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
