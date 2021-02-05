require_relative 'bike'

class DockingStation
    attr_reader :bike_collection, :station_capacity

    def initialize
      @bike_collection = []
      @station_capacity = 20
    end

    def release_bike
        raise "No bikes available" if @bike_collection.empty?
        Bike.new
    end

    def dock(bike)
        raise "Docking station already full" if @bike_collection.length == @station_capacity
        @bike_collection << bike
    end
    
end
