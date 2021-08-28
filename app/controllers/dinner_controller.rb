class DinnerController < ApplicationController
before_action :set_dinner, only:[:show, :edit, :update, :destroy]  #This exists to call set_dinner (which grabs the specific id) and stores it in @dinner

  def index  #This exists to GET you a VIEW of all the dinners
    dinners = Dinner.all
    render component: "Dinners", props:{dinners:dinners}
  end

  def new  #This exists to GET you a VIEW of a form for a new dinner
    render component: "NewDinner"
  end

  def create  #This exists to POST the info from the NewDinner form to the Dinners method array and takes you back to root.
    @dinner = Dinner.new(dinner_params) # Dinner.new creates a new instance with the params and it's held in @dinner.
      if (@dinner.save) # If it passed the params test and saved then return to root_path.
        redirect_to root_path  
      else
        #TODO w/bad info
      end
  end

  def edit #This exists to GET you a VIEW of a form for editing a specific user 
    render component: "EditDinner", props:{dinner:@dinner}
  end

  def update
    if @dinner.update(dinner_params)
      redirect_to root_path 
    end
  end 

  def destroy  #This takes the specific dinnerID (found from set_dinner) and destroys it and then takes you back to root.
    @dinner.destroy
    redirect_to root_path
  end


private

  def dinner_params  # Establishing what dinner params are acceptable
    params.require(:dinner).permit(:name)  # Grabs the current params and makes sure they're legit.
  end

  def set_dinner
    @dinner = Dinner.find(params[:id])
  end

end