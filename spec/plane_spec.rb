require 'plane'

describe Plane do

  let(:plane   ) { Plane.new       }

  
  it 'is flying when created' do
  	expect(plane.flying).to be true
  end
  
context 'take off and landing' do
	
  it 'can take off' do
  	plane.take_off!
  	expect(plane.flying).to be true
  end
  
  # it 'changes its status to flying after taking of' do

  # end

  it 'has a flying status when in the air' do
  	expect(plane.in_air_status).to be true
  end
 
  it 'should be able to land' do
  	plane.land!
  	expect(plane.land!).to be false
  end
end

end