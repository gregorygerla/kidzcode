class HomeController < ApplicationController
	def index
		@student = Student.new

		@email = current_user
		p @email
	end

end