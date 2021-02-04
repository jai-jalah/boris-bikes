require 'docking_station'

describe DockingStation do
    it { should respond_to(:release_bike) }
    it 'should return true if DockingStation.release_bike responds to working?' do
        expect(subject.release_bike).to respond_to (:working?)
    end
    it 'should dock a bike in the docking station, increasing the number of bikes by 1' do
        expect { DockingStation.dock_bike}.to change { @bikes }.by(1)
    end
end
