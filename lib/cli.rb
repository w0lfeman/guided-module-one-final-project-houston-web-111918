class CommandLineInterface 

def greeting
   puts "Welcome to the Fastlane!".upcase.yellow + "\n" + "\n"
end

def gets_user_input
    puts "We can help you find the latest winning driver for each race location, in the F1 circuit.".yellow
    puts "Enter a location to get started. Choose from Austin, Texas, Singapore, Singapore or Barcelona, Spain.".yellow
    puts "Please type in one location below".yellow
    string = gets.chomp 
    return string
end

def find_race(query)
    Race.all.find_by(location: query)    
end
system("clear")
def run
greeting 
query = gets_user_input
race = find_race(query) 
system("clear")
puts "For the #{query} race track, the winner is #{race.winner}!".green + "\n" + "\n"
run
end 



end
