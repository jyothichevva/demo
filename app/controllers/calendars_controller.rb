class CalendarsController < ApplicationController
  def index
    @testing = Testing.all
  end

  def new
    @calendar = Calendar.new
  end

  def Create
     @calendar = Calendar.new(name:params[:calendar][:name],start_time:params[:calendar][:start_time],end_time:params[:calendar][:end_time],task:params[:calendar][:task])
     @calendar.save
     redirect to calendar_path(@calendar)
  end

end
