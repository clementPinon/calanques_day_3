class ClimbingRoute

  attr_reader :name, :level, :done
  attr_writer :done

  def initialize(name, level)
    @name = name
    @level = level
    @done = false
  end

  def route_done
    @done = true
  end

end
