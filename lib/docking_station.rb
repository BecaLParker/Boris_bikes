require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20
    #attr_reader :bike
    def initialize
        @bikes = []
    end

    def release_bike
        fail 'No bikes available' if @bikes.empty?
        @bikes.pop
    end

    def dock(bike)
        fail 'Dock is full' if full?
        @bikes << bike
    end
    
    private

    def full?
        @bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
        @bikes.empty?
    end
   
end

docking_station = DockingStation.new
#docking_station.dock_bike(bike)

