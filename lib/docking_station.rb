require_relative 'bike'

class DockingStation
    def release_bike
        Bike.new
    end

   def dock_bike(bike)
        bike

    end

    def bike
    end
    
end

docking_station = DockingStation.new
#docking_station.dock_bike(bike)

