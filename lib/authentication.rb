module Authentication
    def current_user
    @student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  	def email
  		@email = Student.find(session[:student_id])
  		@email = @email.email
  	end
  module_function :current_user,:email
end