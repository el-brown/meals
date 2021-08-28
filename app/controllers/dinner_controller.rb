class DinnerController < ApplicationController
before_action :set_dinner, only:[:show, :edit, :update, :destroy]  #This exists to call set_dinner (which grabs the specific id) and stores it in @dinner

  def index  #This exists to direct you to the view of all the dinners
    dinners = Dinner.all
    render component: "Dinners", props:{dinners:dinners}
  end

  def new  #This exists to direct you to a form for a new dinner
    render component: "NewDinner"
  end

  def create  #This exists to add the info from the NewDinner form to the Dinners method array and takes you back to root.
    @dinner = Dinner.new(dinner_params) # Dinner.new creates a new object to put something in Is it automatically filled with the info from NewDinner form? @dinner exists if the new dinner gets through dinner_params's permissions?
      if (@dinner.save) # If you CAN save it once it passes dinner_params permissions... then...
        redirect_to root_path  
      else
        #TODO w/bad info
      end
  end

  def destroy  #This takes the specific dinnerID (found from set_dinner) and destroys it and then takes you back to root.
    @dinner.destroy
    redirect_to root_path
  end


private

  def dinner_params  # Establishing what dinner params are acceptable
    params.require(:dinner).permit(:name)  # Require reads the info and saves it. From NewDinner? and only with permitted info.
  end

  def set_dinner
    @dinner = Dinner.find(params[:id])
  end

end