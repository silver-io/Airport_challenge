class Airport

  DEFAULT_CAPACITY = 6

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@planes = []
	end

	def plane_count
		@planes.count
	end

	def capacity
		@capacity
	end

	def full?
		plane_count == @capacity
	end

	def land(plane)
		@planes << plane
	end

	def take_off(plane)

	end
end
