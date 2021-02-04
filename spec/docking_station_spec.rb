require 'docking_station'

describe DockingStation do
    it { should respond_to(:release_bike) }
    it 'should return true if DockingStation.release_bike responds to working?' do
        expect(subject.release_bike).to respond_to (:working?)
    end
end
