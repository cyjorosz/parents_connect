class AttendancesController < ApplicationController
  def create
    @attendance =  Attendance.new
    @event = Event.find(params[:attendance][:event_id])
    @attendance.event = @event

    @attendance.profile = current_user.profile

    if @attendance.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end

  end

  def destroy
    @event = Event.find(params[:id])
    # @events = Event.joins(:attendance)
    # raise params
    @attendance = @event.attendances.where(profile_id: current_user.profile.id)
    # raise params
    @attendance.destroy_all
    redirect_to event_path(@event)
  end

private

end
