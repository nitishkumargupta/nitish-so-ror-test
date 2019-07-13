class MarcoPoloGameOperation

	def initialize numbers=100
		@numbers = numbers
	end

	def display_output
		output = []
		1.upto(@numbers) do |number|
			if number % 7 == 0 && number % 4 == 0
				output << "marcopolo"
			elsif number % 7 == 0
				output << "polo"
			elsif number % 4 == 0
				output << "marco"
			else
				output << number
			end
		end
		output
	end

end