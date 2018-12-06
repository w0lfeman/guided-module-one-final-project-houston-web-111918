class CommandLineInterface 

def greeting
    puts "Welcome to the fastlane!"
end 

def gets_user_input
    puts "We can help you find the winning driver for each race."
    puts "Enter a location to get started. Choose from Austin, Texas, Singapore, Singapore or Barcelona, Spain."
    puts "Please type in one location below"
    string = gets.chomp
    return string
end

def find_race(query)
    Race.all.find_by(location: query)    
end

def run
greeting
query = gets_user_input
race = find_race(query) 
puts race.winner
end



end
