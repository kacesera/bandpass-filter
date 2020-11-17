require 'bandpass'

describe BandPass do 
  let(:frequencies) { [15, 35, 39, 40, 68, 3000, 999, 78, 1001, 3200]}
  before :each do
    @bandpass = BandPass.new(frequencies)
  end

  it("returns an array of frequencies that do not go above the max default") do
    expect(@bandpass.filter_frequencies).to eq([40, 40, 40, 40, 68, 1000, 999, 78, 1000, 1000])
  end

  it("can change the max frequency and the min frequency") do
    @bandpass.change_min_and_max_values(20, 3000) 
    expect(@bandpass.filter_frequencies).to eq([20, 35, 39, 40, 68, 3000, 999, 78, 1001, 3000])
  end

  it("throws an error if only one min or max value is passed") do
    expect{ @bandpass.change_min_and_max_values(20) }.to raise_error ArgumentError
  end
end