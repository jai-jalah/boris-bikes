require 'docking_station'

describe DockingStation do
    it { should respond_to(:release_bike) }

    it 'should return true if DockingStation.release_bike responds to working?' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to respond_to (:working?)
    end

    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to be_instance_of Bike
    end

    it 'should raise an error if no bikes are available' do
       expect { subject.release_bike }.to raise_error("No bikes available")
    end

    it 'should raise an error if user attempts to dock_bike at a docking_station that is full' do
        DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
        expect { subject.dock(Bike.new) }.to raise_error("Docking station already full")
    end

end
