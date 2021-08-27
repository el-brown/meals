class DinnerController < ApplicationController


  def index
    dinners = Dinner.all
    render component: "Dinners", props:{dinners:dinners}

  end



end
