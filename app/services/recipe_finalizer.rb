# frozen_string_literal: true

# process new recipe for user
class RecipeFinalizer
  def initialize(user, recipe, favorite)
    @user = user
    @recipe = recipe
    @favorite = favorite
  end

  def execute
    create_fav if @favorite
    assign_to_user
    return true if @user.save

    false
  end

  def create_fav
    FavoriteRecipe.create(user: @user, recipe: @recipe)
  end

  def assign_to_user
    @user.recipes << @recipe
  end
end
