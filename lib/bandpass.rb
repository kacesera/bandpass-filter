class BandPass

  def initialize(frequencies)
    @frequencies = frequencies
  end
  
  def filter_frequencies
    @frequencies.each.with_index do |frequency, index|
      change_frequency(1000, index) if high_pass?(frequency)
      change_frequency(40, index) if low_pass?(frequency)
    end
    @frequencies
  end

  private

  def high_pass?(frequency)
    frequency > 1000
  end

  def low_pass?(frequency)
    frequency < 40
  end

  def change_frequency(frequency, index)
    @frequencies[index] = frequency
  end
end