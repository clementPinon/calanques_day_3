require_relative 'view'
require_relative 'climbing_route'

class Controller

  def initialize
    @view = View.new
    @climbing_routes = []
  end


  def add
    # name ?
    name = @view.ask_for_name
    # level ?
    level = @view.ask_for_level
    climbing_route = ClimbingRoute.new(name,level)
    # stock
    @climbing_routes << climbing_route
    # @climbing_routes.push(climbing_route)
    return climbing_route
  end

  def done
    exist = false
    # name of the route?
    name = @view.climbing_route_done
    # find the route having such name
    # tell it's been climbed
    cl = find(name)
    if cl
      cl.route_done
    else
      @view.route_climbed_but_not_stored
      cl = add()
      cl.route_done
    end

  end

  def list
    @view.list_climbing_routes(@climbing_routes)
  end

  private
  def find(name)
    @climbing_routes.each do |cl|
      if cl.name == name
        return cl
      end
    end
    return nil
  end

end
