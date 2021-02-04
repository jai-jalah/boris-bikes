require 'docking_station'

describe DockingStation do
    it { should respond_to(:release_bike) }

    it 'should return true if DockingStation.release_bike responds to working?' do
        expect(subject.release_bike).to respond_to (:working?)
    end

    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
    end
    
end
