class Plane 

	
	def flying?
		@flying 
	end

	def in_air_status?
		@flying
	end

	def take_off!
		@flying = true
	end

	def land!
		@flying = false
	end


end