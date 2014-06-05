class AppointmentsController < ApplicationController

def index
  date_from_ajax = params[:matched_date]
  reduce = Appointment.where(:date => date_from_ajax)
  hour_on_date = reduce.collect {|x| x.hour}
  @new_dates = hour_on_date
  render :layout => false
end

def new
  p params
  p "asdfafd"
end
 

def create
   p session[:student_id]
   p params
  @appointment = Appointment.create(done:"false",date: params[:date],hour:params[:time],student_id: session[:student_id])
  p "the appointment"
  p @appointment
  p @appointment
end
end
