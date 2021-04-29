require 'docking_station.rb'


describe DockingStation do 
    it { is_expected.to respond_to :release_bike }
    
    it 'releases working bikes' do
        bike = subject.release_bike
        expect(bike).to be_working
    end

    #it 'docks bike at docking station' do
     it { is_expected.to respond_to(:dock_bike).with(1).argument }

end