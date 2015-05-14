class UsersController < ApplicationController
  def index
    @users = User.all 
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update
  end

  def update_preferences
    preferences = params[:user]
    current_user.preference_list.add(preferences)
    current_user.save
  end

  def create_match
    match_fields = params[:user]
    # param_dog_requester = match_fields[0] 
    # param_dog_requestee = match_fields[1] 
    param_dog_requester_id = match_fields[2]
    param_dog_requestee_id = match_fields[3]
    @match = UserMatch.create(
      dog_requester_id: param_dog_requester_id,
      dog_requestee_id: param_dog_requestee_id,
      status: "pending"
      )
    render json: @match 
  end


  def questionnaire
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :dog_name, :owner_name, :dog_age, :dog_bio, :owner_bio, :gender, :breed, :neutered, :address, :user_rating, :dog_picture, :owner_picture, :preference_list => [])
  end

  def user_match_params
    params.require(:user_matches).permit(:id, :dog_requester_id, :dog_requestee_id)
  end
end
