class UserMatchesController < ApplicationController

  def show
    @user_match = UserMatch.find(params[:id])
    @user_match.messages.each do |msg|
      msg.content
    end
    # respond_to do |format|
    #   format.html
    #   format.json {render json: @messages }
  end

  def accept_match
    @match = UserMatch.find(params[:id])
    match_data = params[:match_data]
    @match.status = match_data[:status]
    @match.save
    render json: @match
  end

  def reject_match
    @match = UserMatch.find(params[:id])
    match_data = params[:match_data]
    @match.destroy
    @match.save
    render json: @match
  end

end