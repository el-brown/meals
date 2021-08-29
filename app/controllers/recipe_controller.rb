class RecipeController < ApplicationController
  before_action :set_dinner


  def index
    render component: "Recipes", props:{dinner:@dinner, recipes:@dinner.recipes}
  end


private

  def recipe_params
    params.require(:recipe).permit(:name, :stars)
  end

  def set_dinner
    @dinner = Dinner.find(params[:dinner_id])
  end

    
  # def set_recipe
  #   @recipe = @dinner.recipes.find(params[:id])
  # end


end
