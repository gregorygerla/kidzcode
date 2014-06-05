module Authentication
    def current_user
     @current_user ||= session[:student_id] && Student.find_by_id(session[:student_id]) 
 
    @current_user
  end

  	def email
  		@email = Student.find(session[:student_id])
  		@email = @email.email
  	end
  module_function :current_user,:email
end