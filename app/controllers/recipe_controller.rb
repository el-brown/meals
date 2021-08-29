class RecipeController < ApplicationController
  before_action :set_dinner


  def index
    @recipes = Recipe.all
    render component: "Recipes", props:{recipes:@recipes, dinners:@dinners}
  end



  def set_dinner
    @dinners = Dinner.all
  end


end
