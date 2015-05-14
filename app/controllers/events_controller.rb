class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to events_path
      flash[:notice] = "You successfully created an event!"
    else
      # render 'newevent'
      flash[:notice] = "Something went wrong in the creation of your event, try again!"
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
      flash[:notice] = "You successfully updated an event!"
    else
      # render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
    flash[:notice] = "You successfully deleted an event!"
  end

  def like_event
    @event = Event.find(params[:id])
    @event.liked_by current_user
    @event.save
    render json: @event
  end

  def dislike_event
    @event = Event.find(params[:id])
    @event.unliked_by current_user
    @event.save
    render json: @event
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :place, :time, :event_rating)
  end

end
  

