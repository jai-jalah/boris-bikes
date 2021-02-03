require 'docking_station'

describe DockingStation do
    it { should respond_to(:release_bike) }
    bike = Bike.new

     expect(bike).to eq true
    #it { should eq(bike) }
    #it { should respond_to(:working?)}
end
