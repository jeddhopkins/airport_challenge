require 'airport'

describe Airport do
  let(:plane) {double :plane} # this just allows us to use doubles within our tests

  describe '#plane_landing' do
    it { is_expected.to respond_to(:plane_landing).with(1).arguments }

    it 'does not allow planes to land when the airport is full' do
      # here we are making sure we can add the maximum number of planes and it will not break
      expect { Airport::DEFAULT_CAPACITY.times { subject.plane_landing(:plane) } }.to_not raise_error
      # here we are adding the final plane hoping that it will break
      expect { subject.plane_landing(:plane) }.to raise_error 'Cannot land plane: Airport is full'
    end
  end

  describe '#plane_takeoff' do
    it { is_expected.to respond_to(:plane_takeoff).with(1).arguments }
  end





end
