require 'bandpass'

describe BandPass do 
  let(:frequencies) { [35, 39, 40, 68, 1200, 999, 78, 1001]}
  before :each do
    @bandpass = BandPass.new(frequencies)
  end

  it("returns an array of frequencies that do not go above the max default") do
    expect(@bandpass.filter_frequencies).to eq([40, 40, 40, 68, 1000, 999, 78, 1000])
  end
end