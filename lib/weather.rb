module Weather

	# weather = Random.new
	def weather_condition
		weather_condition.rand(100)
	end

	def stormy
		@stormy = weather_condition <= 25
	end

	def sunny
		@sunny = weather_condition >= 26
	end

end
