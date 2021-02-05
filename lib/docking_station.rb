require_relative 'bike'

class DockingStation
    attr_reader :bike_collection, :station_capacity

    def initialize
      @bike_collection = []
      @station_capacity = 20
    end

    def release_bike
        raise "No bikes available" if empty?
        Bike.new
    end

    def dock(bike)
        raise "Docking station already full" if full?
        @bike_collection << bike
    end

    private

    def full?
      @bike_collection.length == @station_capacity
    end

    def empty?
      @bike_collection.empty?
    end

end
