class RecipesController < ApplicationController
	before_action :set_recipe, only: [:show, :edit, :update, :destroy]
	def index

	end

	def show

	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
	end

	private

	def set_recipe
		@recipe = Recipe.find(params[:id])
	end

	def recipe_params
		params.require(:recipe).permit(:title,:description)
	end
end
