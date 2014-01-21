class RecipesController < ApplicationController
  expose(:recipe, attributes: :recipe_params)

  def index
    @recipes = Recipe.all
    respond_with @recipes
  end

  def show
    respond_with recipe
  end

  def new
  end

  def create
    redirect_to(recipe) and return if recipe.save
    render :new
  end

  def update
    redirect_to(recipe) and return if recipe.save
    render :edit
  end

  def delete
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, :description)
    end 
 end
