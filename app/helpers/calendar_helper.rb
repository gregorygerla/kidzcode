module CalendarHelper 
	def weeks
		today = Date.today
		week = Date.today+5
	 	@this_week = (today..week).to_a
	return @this_week
	end
	def appointments
		@times = []
		@times.push("5:00PM")
		@times.push("6:00PM")
		@times.push("7:00PM")
		@times
	end
end