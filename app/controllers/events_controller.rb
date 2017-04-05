class EventsController < ApplicationController

  before_action :set_event, only: [:show, :update, :edit, :destroy]

  def index
    @events = Event.all
  end

  def show
    @events = Event.where.not(latitude: nil, longitude: nil)
    # set host and participants to make front-end easier
    # @host = @event.profile
    # @attendance = @attendance.event.profile #to be tested - not sure about syntax

    @hash = Gmaps4rails.build_markers(@events) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
    end
  end

  def new
    @profile = Profile.find(params[:profile_id])
    @event = Event.new
    # @host = current_user.profiles.first
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @event = @profile.events.build(event_params)
    # @event = Event.new(event_params)
    # @event.profile = current_user.profile.first



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
