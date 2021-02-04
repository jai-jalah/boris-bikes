require_relative 'bike'




class DockingStation
attr_accessor :bikes

  def initialize
    @bikes = 0
  end

  def release_bike
    Bike.new
  end

  def dock_bike
    @bikes += 1
  end

end
