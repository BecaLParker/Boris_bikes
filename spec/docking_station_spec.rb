require 'docking_station.rb'


describe DockingStation do 
    #it { is_expected.to respond_to :release_bike }
    describe '#release_bike' do
        it 'releases a bike' do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end
        it 'raises an error when there are no bikes available' do
            expect {subject.release_bike}.to raise_error 'No bikes available'
        end
    end
    # it 'releases working bikes' do
    #     bike = subject.release_bike
    #     expect(bike).to be_working
    # end
    describe '#dock' do
        it 'docks bike at docking station' do
            bike = Bike.new
            docked_bike = subject.dock(bike)
            expect(docked_bike).to eq(bike)
        end
        it 'raises an error when the dock is full' do
            subject.dock(Bike.new)
            expect { subject.dock Bike.new }.to raise_error 'Dock is full'
        end
    end
    
end