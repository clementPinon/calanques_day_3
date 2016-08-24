require_relative 'controller'

class Router
  def initialize
    @controller = Controller.new()
  end


  def start
    # list all of the possible actions
    # ask answer
    # action controller

    # list all of the possible actions
    # ask answer
    # action controller
    start = true
    while start == true do
      puts '-----------------------------------------------'
      puts '-----------------------------------------------'
      puts "Welcome onboard at Code & Calanques"
      puts "Enter 1 to list all the climbing routes"
      puts "Enter 2 to add a climbing route"
      puts "Enter 3 to add a climbing route you've done"
      puts "Enter 4 to exit the program"
      puts '-----------------------------------------------'
      puts '-----------------------------------------------'

      action = gets.chomp.to_i

      if action == 1
        @controller.list
      elsif action == 2
        @controller.add
      elsif action == 3
        @controller.done
      elsif action == 4
        start = false
        puts 'Bye, see you next time!'
      else
        puts "/!\\ sorry this is not a possible input"
      end
    end

    # loop do
    #   puts '-----------------------------------------------'
    #   puts '-----------------------------------------------'
    #   puts "welcome onboard at Code & Calanques"
    #   puts "Enter 1 to list all the climbing routes"
    #   puts "Enter 2 to add a climbing route"
    #   puts "Enter 3 to add a climbing route you've done"
    #   puts '-----------------------------------------------'
    #   puts '-----------------------------------------------'
    #   puts 'to exit type: ctrl + c'
    #   puts '-----------------------------------------------'
    #   action = gets.chomp.to_i

    #   if action == 1
    #     @controller.list
    #   elsif action == 2
    #     @controller.add
    #   elsif action == 3
    #     @controller.done
    #   else
    #     puts "/!\\ sorry this is not a possible input"
    #   end
    # end
  end

end
