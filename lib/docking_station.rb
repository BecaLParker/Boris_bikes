require_relative 'bike'

class DockingStation
    attr_reader :bike

    def release_bike
        Bike.new
    end

    def dock_bike(bike)
        @bike = bike
    end
   
end

docking_station = DockingStation.new
#docking_station.dock_bike(bike)

