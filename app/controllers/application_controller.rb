class ApplicationController < ActionController::Base
  	include Authentication
def current
    @student ||= Student.find(session[:student_id]) if session[:student_id]
  end
  helper_method :current_user,:email,:current
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
end
