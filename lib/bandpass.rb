class BandPass

  def initialize(frequencies)
    @frequencies = frequencies
    @max_frequency = 1000
    @min_frequency = 40
  end
  
  def filter_frequencies
    @frequencies.each.with_index do |frequency, index|
      change_frequency(@max_frequency, index) if high_pass?(frequency)
      change_frequency(@min_frequency, index) if low_pass?(frequency)
    end
    @frequencies
  end

  def change_min_and_max_values(min, max)
    @max_frequency = max
    @min_frequency = min
  end

  private

  def high_pass?(frequency)
    frequency > @max_frequency
  end

  def low_pass?(frequency)
    frequency < @min_frequency
  end

  def change_frequency(frequency, index)
    @frequencies[index] = frequency
  end
end