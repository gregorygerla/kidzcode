class ApplicationController < ActionController::Base
  	include Authentication
def current
    @current_user ||= session[:student_id] && Student.find_by_id(session[:student_id]) 
    @current_user
  end
def student_appointments
	@your_appts = current_user.appointments
end
  helper_method :current_user,:email,:current,:student_appointments
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
end
