class ApplicationController < ActionController::Base
	include Util
  helper_method :current_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected
  # def current_user
  # 	p "WTFFFFF"
  #   @student ||= Student.find(session[:student_id]) if session[:student_id]
  # end
end
