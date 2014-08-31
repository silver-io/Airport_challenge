class Airport

  DEFAULT_CAPACITY = 6

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@planes = []
	end

	def planes_count
		@planes.count
	end

	def capacity
		@capacity
	end

	def full?
		planes_count == @capacity
	end

	def land(plane)
		raise "Airport full" if full?
		@planes << plane
	end

	def take_off(plane)
		@planes.delete(plane)
	end
end
