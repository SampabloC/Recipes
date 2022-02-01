class Api::V1::RecipesController < ApplicationController
  def index
    recipe = Recipe.all.order(created_at: :desc)
    render json: recipe
  end

  def create
    recipe = Recipe.create!(recipe_params) # ! is for strong params, consult https://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def show
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def destroy
    recipe&.destroy # & is for ruby safe navigation operator wich avoid nill errors
    render json: { message: 'Recipe deleted' }
  end

  private

  def recipe_params
    params.permit(:name, :image, :ingredients, :instructions)
  end

  def recipe
    @recipe ||= Recipe.find(params[:id])
  end
end
