class EventsController < ApplicationController

  def index
  end

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      render "/"
    end
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:date, :start_time, :sleep_time, :end_time, :notes )
  end

end
