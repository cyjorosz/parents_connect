class EventsController < ApplicationController

  before_action :set_event, only: [:show, :update, :edit, :destroy]

  def index
    @events = Event.all
  end

  def show
    # set host and participants to make front-end easier
    @host = @event.profile
    @participants = @event.attendance.profiles #to be tested - not sure about syntax

    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
    end
  end

  def new
    @event = Event.new
    @host = current_user.profiles.first
  end

  def create
    @event = Event.new(event_params)
    @event.profile = current_user.profile

  if @event.save
      redirect_to event_path(@event)
    else
      render :new
#     to be confirmed
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:description, :street_name, :street_number, :city, :zipcode, :country, :start_date, :end_date)
  end

end