class Airport

	DEFAULT_CAPACITY = 6

	def planes
		@planes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def land!
		@land
	end
	
end
