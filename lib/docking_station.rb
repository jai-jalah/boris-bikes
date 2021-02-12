require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20
    attr_reader :bike_collection, :station_capacity

    def initialize(station_capacity = DEFAULT_CAPACITY)
        @station_capacity = station_capacity
        @bike_collection = []
    end

    def release_bike
        raise "No bikes available" if empty?
        Bike.new
    end

    def dock(bike)
        raise "Docking station already full" if full?
        @bike_collection << bike
    end

    def capacity(station_capacity)
        @station_capacity = station_capacity
    end

    private

    def full?
        @bike_collection.count >= DEFAULT_CAPACITY
    end

    def empty?
        @bike_collection.empty?
    end
end
