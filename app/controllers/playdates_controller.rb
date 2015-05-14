class PlaydatesController < ApplicationController
  
  def index
    @playdates = Playdate.all
  end

  def new
    @playdate = Playdate.new
  end

  def create
    name = params[:playdate][:dog2_id]
    user = User.where(dog_name:name)[0]
    user_id = user.id
    @playdate = Playdate.new(playdate_params)
    @playdate.dog2_id = user
    @playdate.save
    if @playdate.save
      redirect_to playdates_path
      flash[:notice] = "You successfully created a playdate!"
    else
      # redirect_to playdate form
    end
    binding.pry
  end

  def edit
    @playdate = Playdate.find(params[:id])
  end

  def update
    @playdate = Playdate.find(params[:id])
    if @playdate.update(playdate_params)
      # redirect_to playdatse_path
      flash[:notice] = "You successfully updated a playdate!"
    else
      render 'new'
    end
  end

  def show
    @playdate = Playdate.find(params[:id])
  end
  
  def destroy
    @playdate = Playdate.find(params[:id])
    @playdate.destroy
    # redirect_to 
    flash[:notice] = "You successfully deleted a playdate!"
  end

  def suggest
    @users = User.all
  end

  private
  def playdate_params
    params.require(:playdate).permit(:dog1_id, :dog2_id, :name, :date, :place, :description)
  end

end
