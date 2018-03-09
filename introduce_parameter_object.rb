# introduce_parameter_object.rb
#htt
class GamePackageCalculator

	BASIC_PACKAGE_FACTOR = 1.0
	PREMIUM_PACKAGE_FACTOR = 2.1
	BASIC_RATE = 1
	PREMIUM_RATE = 2
	# GOLD_LIFE_RATIO = 0.2
	# POWERUPS_LIFE_RATIO = 0.5 

	#calculates the cost of a gamer who wants to get X gold, Y powerup and number of lives derived from X gold and Y powerup. 
	def calculate_cost(status, premium = nil)	
		if premium
			premium_cost(status) 
		else
			basic_cost(status)
		end
	end	

	private 

	def premium_cost(status)
		PREMIUM_PACKAGE_FACTOR * status.lives + PREMIUM_RATE * (status.gold + status.powerups)
	end

	def basic_cost(status)
	  BASIC_PACKAGE_FACTOR * status.lives + BASIC_RATE * (status.gold + status.powerups)
	end

end

class Status
	GOLD_LIFE_RATIO = 0.2
	POWERUPS_LIFE_RATIO = 0.5 
	attr_reader :gold, :powerups, :lives

	def initialize(gold, powerups)
		@gold = gold 
		@powerups = powerups
		@lives= calculate_lives(gold, powerups)
	end	

	def calculate_lives(gold, powerups)
	  (gold * GOLD_LIFE_RATIO).round(0) + (powerups * POWERUPS_LIFE_RATIO).round(0) 
	end
end 

 

my_status = Status.new(5, 10)
my_status
gamecalc = GamePackageCalculator.new
puts gamecalc.calculate_cost(my_status)