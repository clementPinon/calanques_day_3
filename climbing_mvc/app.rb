require_relative 'controller'

#scenario
controller = Controller.new()
# add a climbing route
controller.add
# add a climbing route
controller.add
# list climbing routes
controller.list
# change a status do done
controller.done

controller.list
