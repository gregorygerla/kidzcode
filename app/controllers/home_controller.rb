class HomeController < ApplicationController
	def index
		@student = Student.new
	end

end