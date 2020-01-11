#3
require_relative 'motorized'
require_relative 'battery_powered'

class Drill
	include Motorized
	include BatteryPowered
end

class ElectricCar
	include Motorized
	include BatteryPowered
end

class Phone
	include BatteryPowered
end

drill = Drill.new
10.times {drill.charge}
puts drill.power_level

car = ElectricCar.new
car.charge
car.rev_motor

phone = Phone.new
phone.charge
# phone.rev_motor will not work