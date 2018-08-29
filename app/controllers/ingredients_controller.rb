class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def update
    @ingredient = Ingredient.find_by_id(params[:id])
    @ingredient.update(ingredient_params)
    @ingredient.save
    redirect_to ingredient_path(@ingredient)
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)

    redirect_to @ingredient
  end
end
