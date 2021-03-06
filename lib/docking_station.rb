require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20
    #attr_reader :bike
    attr_reader :capacity
    def initialize(capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = []
    end

    def release_bike
        fail 'No bikes available' if @bikes.empty?
        bikes.pop
    end

    def dock(bike)
        fail 'Dock is full' if full?
        bikes << bike
    end
    
    private

    attr_reader :bikes

    def full?
        bikes.count >= capacity
    end

    def empty?
        bikes.empty?
    end
   
end

docking_station = DockingStation.new
#docking_station.dock_bike(bike)

