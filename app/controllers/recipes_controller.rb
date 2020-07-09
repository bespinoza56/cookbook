class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find_by(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
      if @recipe.save
        flash[:notice] = "Article was created successfully"
        redirect_to @recipe
      else
        render 'new'
    end
  end

  def edit

  end

  def destroy

  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe)
  end

end
