class CommandLineInterface 

def greeting
   puts "Welcome to the Fastlane!".upcase.yellow + "\n" + "\n"
end

def gets_user_input
    puts "We can help you find the latest winner for each race location, in the 2018 the F1 circuit.".yellow
    puts "Enter a location to get started. Choose from #1. Austin, Texas #2. Singapore, Singapore or #3. Barcelona, Spain.".yellow
    puts "Please type in one location below".yellow
    string = gets.chomp 
    return string
end

def gets_user_driver
   puts "Would you like to know more about the winner?!?!".yellow
   puts "I'm sure you do! Below, please type in the winners name to get his latest F1 circuit stats.".yellow
   string = gets.chomp
   return string
end

def find_race(query)
    Race.all.find_by(location: query)    
end

# def find_driver(query_two)
#    Driver.all.find_by(name: query_two)
# end   


def run
greeting 
query = gets_user_input
race = find_race(query) 
system("clear")
puts "For the #{query} race track, the latest 2018 winner is #{race.winner}!".green + "\n" + "\n"
end 

system("clear")

def run_two
   query_two = gets_user_driver
   driver_stats = Driver.all.find_by(name: query_two)
   system("clear")
   puts "#{query_two}'s latest stats are: ".green
   puts "   Total points: #{driver_stats.points}
   Total wins: #{driver_stats.wins}
   Driver weight: #{driver_stats.driver_weight}
   Driver weight: #{driver_stats.driver_height}".red
end

end