class View
  def ask_for_name
    puts  "what is the name of the climbing route?"
    # name = gets.chomp
    # return name
    return gets.chomp
  end

  def route_climbed_but_not_stored
    puts  "Sorry, the route you've climbed is not stored yet."
  end

  def ask_for_level
    puts  "what is the level of the climbing route?"
    return gets.chomp
  end

  def climbing_route_done
    puts  "what is the name of the climbing route you've done?"
    return gets.chomp
  end

  def list_climbing_routes(climbing_routes)
    # puts climbing_routes
    climbing_routes.each do |climbing_route|
      puts "name: #{climbing_route.name} - level: #{climbing_route.level} - done: #{climbing_route.done}"
    end
  end
end

