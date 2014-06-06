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
  
  @appointment = Appointment.create(done:"false",date: params[:date],hour:params[:time],student_id: session[:student_id])
  @appointments = current_user.appointments
  render partial: 'greg'
end
end
