require 'plane'

describe Plane do 

	let(:plane) { Plane.new			}

	it "is flying when created" do
		expect(plane.flying?).to be true
	end

	it "has a flying status when up in the air" do
		plane.take_off
		expect(plane.flying?).to be true
	end

context 'taking off and landing' do

	it "must be able to land" do
		plane.land!
		expect(plane.flying?).to be false
	end

	it "can take off" do
		plane.take_off
		expect(plane.flying?).to be true
	end
	
	it "changes its status to flying after taking off" do
		plane.land!
		plane.take_off
		expect(plane.flying?).to be true
	end
end
	
end