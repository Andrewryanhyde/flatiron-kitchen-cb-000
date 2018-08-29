class RecipesController < ApplicationController


  def new 
    @recipe = Recipe.new 
  end 

  def edit 
    @recipe = Recipe.find_by_id(params[:id])
  end 

  def update 
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.update(recipe_params)
    @recipe.save 
    redirect_to recipe_path(@recipe)
  end
end
