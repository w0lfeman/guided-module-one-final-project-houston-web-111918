
require_relative '../config/environment'
require_relative '../lib/cli'

new_cli = CommandLineInterface.new  
# new_cli.greeting
# new_cli.gets_user_input 
location = new_cli.run 
# def run
#     greeting
#     input = gets_user_input
#     find_driver(input)  
#     end


