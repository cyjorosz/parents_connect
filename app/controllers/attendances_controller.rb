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

private

end
