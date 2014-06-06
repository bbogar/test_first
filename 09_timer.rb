class Timer
	attr_accessor :seconds

	def initialize(seconds = 0)
		@seconds = seconds
	end

	def time_string 
		#starts the timer at whatever @seconds is and formats it based on a 24-hour clock (%T)
		Time.at(@seconds).utc.strftime("%T")
	end

end