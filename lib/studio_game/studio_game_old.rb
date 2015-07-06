# name1 = 'larry'
# name2 = 'curly'
# name3 = 'moe'
# name4 = 'shemp'

# health1 = 60
# health2 = 125
# health3 = 100
# health4 = 90

# def say_hello (name, health=100) 
# 	puts "I'm #{name.capitalize} with a health of #{health} as of #{time}"
# end

# def time
#   current_time = Time.new
#   current_time.strftime("%I:%M:%S")
# end

# say_hello(name1, health1)

# puts "#{name1.capitalize}'s health is #{health1}"
# puts "#{name2.upcase}'s health is #{health2}"


# health2 = health1
# puts "#{name2.upcase}'s health is #{health2}"



# health1 = 30
# puts "#{name1.capitalize} has a health of #{health1}."
# puts "#{name2.upcase} has a health of #{health2}."

# puts "#{name3.capitalize} has a health of #{health3}.".center(50, '*')

# puts "#{name4.capitalize} ".ljust(30, '....') +  " #{health4} health"


# puts 123.to_s.reverse.to_i


# puts "The game started on " + Time.new.strftime("%A %d/%m/%Y at %I:%M%p")

#puts "Players: \n\t#{name1.capitalize}\n\t#{name2.capitalize}\n\t#{name3.capitalize}"




class Player 
	attr_accessor :name
  	attr_reader :health

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end
	def to_s
		"I'm #{@name} with a health of #{@health} and a score of #{score}"
	end
	def blam
		puts "#{@name} got blammed!"
		@health -= 10
	end
	def w00t
		puts "#{@name} got w00ted!"
		@health += 15
	end

	def score
    	@health + @name.length
  	end
end

class Game
	attr_reader :title
	def initialize(title)
		@title = title
		@players =[]
	end
	def play
		puts "There are #{@players.size} players in the #{title}:"
		
		@players.each do |player|
			puts player
		end
		
		@players.each do |player|
		    player.blam
		    player.w00t
		    player.w00t
		    puts player
		end
	end	
	def add_player(a_player)
  		@players.push(a_player)
	end

end

#7 classes
player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3

player3.blam
puts player3
player3.w00t
puts player3


#8 attributes
puts "exercise 8 Attributes ==========================="
player2 = Player.new("larry", 60)
puts player2.name
player2.name = "Lawrence"
puts player2.name
puts player2.health
puts player2.score
puts player2


#9 Array's
puts "exercise 9 Array's ==========================="
players = [player1, player2, player3]

puts "There are #{players.size} players in the game:"

players.each do |player|
	puts player
end


players.each do |player|
  puts player.health
end


players.each do |player|
  player.blam
  player.w00t
  puts player
end

players.pop
shemp = Player.new("shemp", 90)
players.push(shemp)


#9 Object interaction
puts "exercise 10 Object interaction ==========================="

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
    
knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play



