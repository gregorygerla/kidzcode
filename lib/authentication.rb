module Authentication
    def current_user
    @student ||= Student.find(session[:student_id]) if session[:student_id]
  end
  module_function :current_user
end