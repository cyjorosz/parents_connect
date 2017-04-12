 class EventsController < ApplicationController

  before_action :set_event, only: [:show, :update, :edit, :destroy]

  def index
    # @events = Event.all
    @events = Event.upcoming.events_near_me(current_user.profile)

    @hash = Gmaps4rails.build_markers(@events) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
    end
  end


  def show
    @host = @event.profile
    # @events = Event.where.not(latitude: nil, longitude: nil)
    # set host and participants to make front-end easier
    # @host = @event.profile
    # @attendance = @attendance.event.profile #to be tested - not sure about syntax
    # create empty Attendance object to be filled


    @hash = Gmaps4rails.build_markers(@event) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
    end

    @attendances = @event.attendances
    @attendance = Attendance.new
  end

  def new
    @profile = Profile.find(params[:profile_id])
    @event = Event.new
  end

  def create
    # raise
    @profile = Profile.find(params[:profile_id])

    event_time_hour = event_params[:start_time].first(2)
    event_time_minute = event_params[:start_time].last(2)
    event_time = Time.new.change({ hour: event_time_hour, min: event_time_minute, sec: 0 })

    edited_event_params = event_params

    edited_event_params[:start_time] = event_time
    @event = @profile.events.build(edited_event_params)
    # @event = Event.new(event_params)
    # @event.profile = current_user.profile.first

  if @event.save
      redirect_to event_path(@event)
    else
      render :new
#     to be confirmed
    end
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to profile_path(current_user.profile)
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:description, :street_name, :street_number, :city, :zipcode, :country, :start_date, :start_time, :duration)
  end

end
