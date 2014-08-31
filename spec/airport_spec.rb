require 'airport'
require 'plane'
require 'weather'
 
describe Airport do

  let(:airport) { Airport.new }
  let(:plane  ) { Plane.new   }

  context 'taking off and landing:' do
    
    it 'a plane can land' do
      expect(airport.full?).to be false
      airport.land(plane)
      expect(airport.planes_count).to eq 1
    end
    
    it 'a plane can take off' do
      airport.land(plane)
      expect(airport.planes_count).to eq 1
      airport.take_off(plane)
      expect(airport.planes_count).to eq 0
    end
  end

  context 'traffic control:' do

    it "should know when it's full" do
      expect(airport.full?).not_to be true
      6.times { airport.land(plane) }
      expect(airport).to be_full
    end

    it 'a plane cannot land if the airport is full' do
      6.times { airport.land(plane) }
      expect(airport.full?).to be true
      expect { airport.land(plane) }.to raise_error("Airport full!")
    end
  end
end
 
# # grand final
# # Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# # Be careful of the weather, it could be stormy!
# # Check when all the planes have landed that they have the right status "landed"
# # Once all the planes are in the air again, check that they have the status of flying!
# describe "The gand finale (last spec)" do
#   it 'all planes can land and all planes can take off' do
#   end
# end